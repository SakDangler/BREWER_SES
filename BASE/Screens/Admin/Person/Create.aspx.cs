using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Admin.Person
{
    public partial class Create : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private string _basePath = "/Screens/Admin/Person/List";

        protected void Page_Init(Object sender, EventArgs e)
        {
            _entity = new SQLEntities();
        }

        protected void Page_Load(Object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Title += " Admin - Create a User";
                FormTitleLiteral.Text = String.Format("Create a User:");
                CreateItemButton.Text = "+ Create User";
            }
        }

        protected void CreateItem_Click(Object sender, EventArgs e)
        {
            Validate("Create");
            if (IsValid)
            {
                tPerson person = new tPerson();

                person.FirstName = FirstName.Text.Trim();
                person.LastName = LastName.Text.Trim();
                person.EmailAddress = EmailAddress.Text.Trim().ToLower();
                person.Employee = Employee.Checked;
                person.NetworkIdentity = NetworkIdentity.Text;
                person.NetworkPassword = BASE.Auth.Encrypt(NetworkPassword.Text.Trim());
                person.Disabled = Disabled.Checked;
                person.Admin = Admin.Checked;
                person.User = true;
                
                _entity.tPerson.Add(person);
                _entity.SaveChanges();

                Response.Redirect(_basePath);
            }
        }

        protected void Cancel_Click(Object sender, EventArgs e)
        {
            Response.Redirect(_basePath);
        }
    }
}