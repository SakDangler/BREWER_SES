using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Admin.Person
{
    public partial class Edit : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private tPerson _item;

        private string _basePath = "/Screens/Admin/Person/List";

        protected tPerson CurrentItem
        {
            get
            {
                if (_item == null)
                {
                    try
                    {
                        int id = Convert.ToInt32(Request.QueryString["ID"]);
                        _item = _entity.tPerson.Where(w => w.ID == id).FirstOrDefault();
                    }
                    catch
                    {
                        Response.Redirect(_basePath);
                    }
                }
                return _item;
            }
        }

        protected void Page_Init(Object sender, EventArgs e)
        {
            _entity = new SQLEntities();

            if (CurrentItem == null)
            {
                Response.Redirect(_basePath);
            }
        }

        protected void Page_Load(Object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Title += " Admin - User Details";
                FormTitleLiteral.Text = String.Format("User Details: {0}", CurrentItem.FirstName + " " + CurrentItem.LastName);
                UpdateItemButton.Text = "Save User";

                BindLists();
                BindItemDetails();
            }
        }

        protected void BindItemDetails()
        {
            FirstName.Text = CurrentItem.FirstName;
            LastName.Text = CurrentItem.LastName;
            EmailAddress.Text = CurrentItem.EmailAddress;
            Employee.Checked = CurrentItem.Employee;
            NetworkIdentity.Text = CurrentItem.NetworkIdentity;
            NetworkPassword.Text = BASE.Auth.Decrypt(CurrentItem.NetworkPassword);
            Disabled.Checked = CurrentItem.Disabled;
            Admin.Checked = CurrentItem.Admin;
        }

        protected void BindLists()
        {

        }

        protected void UpdateItem_Click(Object sender, EventArgs e)
        {
            Validate("Update");
            if (IsValid)
            {
                CurrentItem.FirstName = FirstName.Text.Trim();
                CurrentItem.LastName = LastName.Text.Trim();
                CurrentItem.EmailAddress = EmailAddress.Text.Trim().ToLower();
                CurrentItem.Employee = Employee.Checked;
                CurrentItem.NetworkIdentity = NetworkIdentity.Text;
                CurrentItem.NetworkPassword = BASE.Auth.Encrypt(NetworkPassword.Text.Trim());
                CurrentItem.Disabled = Disabled.Checked;
                CurrentItem.Admin = Admin.Checked;
                CurrentItem.User = true;

                _entity.tPerson.Add(CurrentItem);// _securityService.UpdatePerson(CurrentItem, CurrentUser.UserID);
                _entity.Entry(CurrentItem).State = System.Data.Entity.EntityState.Modified;
                _entity.SaveChanges();

                Response.Redirect(_basePath);
            }
        }

        protected void EditItem_Click(Object sender, EventArgs e)
        {

            Response.Redirect("/Screens/Admin/Person/Edit?ID=");

        }

        protected void Cancel_Click(Object sender, EventArgs e)
        {
            Response.Redirect(_basePath);
        }
    }
}