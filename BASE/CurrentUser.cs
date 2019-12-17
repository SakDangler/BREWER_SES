using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BASE
{
    public class CurrentUser
    {
        public static bool IsAuthenticated
        {
            get
            {
                if (HttpContext.Current != null)
                {
                    return HttpContext.Current.Session["UserID"] != null;
                }
                else
                {
                    return false;
                }
            }
        }

        public static bool IsAdministrator
        {
            get
            {
                if (IsAuthenticated)
                {
                    if (HttpContext.Current.Session["Administrator"] != null)
                    {
                        return (bool)HttpContext.Current.Session["Administrator"];
                    }
                    else
                    {
                        bool admin = false;

                        //if (Instance.Admin)
                        //{
                        //    admin = true;
                        //}
                        //else
                        //{
                        //    admin = IsPersonInRole(UserID, "System Administrators");
                        //}

                        HttpContext.Current.Session["Administrator"] = admin;

                        return (bool)HttpContext.Current.Session["Administrator"];
                    }
                }
                else
                {
                    return false;
                }
            }
        }
        
        public static int UserID
        {
            get
            {
                if (IsAuthenticated)
                {
                    return Convert.ToInt32(HttpContext.Current.Session["UserID"].ToString());
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                HttpContext.Current.Session["UserID"] = value;
            }
        }
        
        //public static string Identity
        //{
        //    get
        //    {
        //        return Instance.NetworkIdentity;
        //    }
        //}

        //public static string FullName
        //{
        //    get
        //    {
        //        return Instance.FirstName + " " + Instance.LastName;
        //    }
        //}

        //public static string FullNameReverse
        //{
        //    get
        //    {
        //        return Instance.LastName + ", " + Instance.FirstName;
        //    }
        //}

        //public static tPerson Instance
        //{
        //    get
        //    {
        //        if (IsAuthenticated)
        //        {
        //            tPerson result = null;

        //            if (HttpContext.Current.Items["CurrentUser"] != null)
        //            {
        //                result = (tPerson)HttpContext.Current.Items["CurrentUser"];
        //            }
        //            else
        //            {
        //                SQLEntities _entity = new SQLEntities();
                        
        //                result = _entity.tPerson.Where(w => w.ID == UserID).FirstOrDefault();
        //                HttpContext.Current.Items["CurrentUser"] = result;
        //            }

        //            return result;
        //        }
        //        else
        //        {
        //            return null;
        //        }
        //    }
        //}

        public static string EmailAddress
        {
            get
            {
                return "";// Instance.EmailAddress;
            }
        }
        
        public static void Login(int userID)
        {
            HttpContext.Current.Session["UserID"] = userID;
            HttpContext.Current.Session["Administrator"] = IsAdministrator;
        }

        public static void Logout(bool redirect)
        {
            HttpContext.Current.Session["UserID"] = null;
            HttpContext.Current.Session["Administrator"] = null;

            if (redirect)
            {
                HttpContext.Current.Response.Redirect("/Login.aspx", true);
            }
        }
        
        //public static bool IsPersonInRole(int UserID, string roleName)
        //{
        //    SQLEntities _entity = new SQLEntities();
        //    List<int> lstRoles = _entity.tPersonRole.Where(w => w.PersonID == UserID).Select(w => w.RoleID).ToList();

        //    foreach(int roleID in lstRoles)
        //    {
        //        tRole role = _entity.tRole.Where(w => w.ID == roleID).FirstOrDefault();

        //        if (role.Name == roleName)
        //        {
        //            return true;
        //        }
        //    }

        //    return false;
        //}
    }
}