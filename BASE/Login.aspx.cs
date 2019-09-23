using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Init(Object sender, EventArgs e)
        {
            if (CurrentUser.IsAuthenticated)
            {
                RedirectFromLogin();
            }
        }

        protected void Page_Load(Object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Title += "Login";
                //Page.Form.DefaultFocus = "UserName";
                //UserName.Focus();
            }
        }

        protected void Login_Click(Object sender, EventArgs e)
        {
            Validate("Login");
            if (IsValid)
            {
                ErrorLabel.Visible = false;

                string username = uname.Value.Trim().ToLower();
                tPerson authenticatedUser = new tPerson();

                //fallback to basic authentication
                if (Auth.AuthenticateBySQL(username, psw.Value.Trim(), out authenticatedUser))
                {
                    LoginPerson(authenticatedUser);
                    Response.Redirect("/Default.aspx");
                }
                else
                {
                    ErrorLabel.Visible = true;
                    //ShowValidationErrors(securityService.ValidationDictionary);
                }
            }

            //try
            //{
            //    String userName = "donotreply@kceaa.org";
            //    String password = "XyZpDq1977!";
            //    MailMessage msg = new MailMessage();
            //    msg.To.Add(new MailAddress("tomadkinsii@gmail.com"));
            //    msg.From = new MailAddress(userName);

            //    msg.Subject = "test subject";

            //    msg.Body = "test body";
            //    msg.IsBodyHtml = true;

            //    SmtpClient client = new SmtpClient();
            //    client.Host = "10.3.10.59";
            //    client.Credentials = new System.Net.NetworkCredential(userName, password);
            //    client.Port = 25;
            //    //client.EnableSsl = true;

            //    client.Send(msg);
            //}
            //catch (Exception ex)
            //{
            //    string a = ex.Message;
            //}
        }

        public static void LoginPerson(tPerson result)
        {
            HttpContext.Current.Session["UserID"] = result.ID;
            HttpContext.Current.Session["Administrator"] = result.Admin;
            HttpContext.Current.Items["CurrentUser"] = result;
        }

        protected void RedirectFromLogin()
        {
            if (Session["ReturnUrl"] != null && !String.IsNullOrEmpty(Session["ReturnUrl"].ToString()))
            {
                string redirectUrl = Session["ReturnUrl"].ToString();
                Session["ReturnUrl"] = null;
                Response.Redirect(redirectUrl, true);
            }
            else
            {
                //Response.Redirect(Urls.Base.Welcome());
            }
        }
    }
}