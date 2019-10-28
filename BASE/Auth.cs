using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Xml.XPath;
using System.Collections.Generic;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace BASE
{
    public class Auth
    {
        SQLEntities sql = new SQLEntities();

        public static string Encrypt(string clearText)
        {
            string EncryptionKey = "98dudfv9sdjvi3489fiowjp2i3oj3fioa39888jvf9jv98uvjkle23inpcd8s9c8j93j2nkl2398dffb79823q9jvra98ajr89a0v4933";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }

        public static string Decrypt(string cipherText)
        {
            string EncryptionKey = "98dudfv9sdjvi3489fiowjp2i3oj3fioa39888jvf9jv98uvjkle23inpcd8s9c8j93j2nkl2398dffb79823q9jvra98ajr89a0v4933";
            cipherText = cipherText.Replace(" ", "+");
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }

        public static bool AuthenticateBySQL(string username, string password, out tPerson authenticatedUser)
        {
            authenticatedUser = null;
            password = Encrypt(password);

            bool isAuthenticated = false;

            try
            {
                tPerson person = GetAllPersons().Where(w => w.NetworkIdentity == username).FirstOrDefault();

                if (person != null && person.NetworkPassword == password)
                {
                    authenticatedUser = person;
                    isAuthenticated = true;
                }
            }
            catch (Exception ex)
            {
                string a = ex.Message;
            }
            return isAuthenticated;
        }

        private static List<tPerson> GetAllPersons()
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BASEDb"].ToString());
                SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM tPerson", conn);
                adpt.SelectCommand.CommandType = CommandType.Text;

                DataSet ds = new DataSet();
                adpt.Fill(ds, "Results");
                DataTable dt = ds.Tables[0];

                List<tPerson> data = new List<tPerson>();
                foreach (DataRow dr in dt.Rows)
                {
                    data.Add(new tPerson()
                    {
                        ID = Convert.ToInt32(dr["PersonID"].ToString()),
                        FirstName = dr["FirstName"].ToString(),
                        LastName = dr["LastName"].ToString(),
                        EmailAddress = dr["EmailAddress"].ToString(),
                        Employee = Convert.ToBoolean(dr["Employee"].ToString()),
                        User = Convert.ToBoolean(dr["User"].ToString()),
                        NetworkIdentity = dr["NetworkIdentity"].ToString(),
                        NetworkPassword = dr["NetworkPassword"].ToString(),
                        Disabled = Convert.ToBoolean(dr["Disabled"].ToString()),
                        Admin = Convert.ToBoolean(dr["Admin"].ToString())
                    });
                }

                return data;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}