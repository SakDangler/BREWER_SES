using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Admin.Person
{
    public partial class Detail : System.Web.UI.Page
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
                Page.Title += " Admin - Person Details";
                FormTitleLiteral.Text = String.Format("Person Details: {0}", CurrentItem.FirstName + " " + CurrentItem.LastName);
                UserRolesItemButton.Text = "Manage User Roles";
                UpdateItemButton.Text = "Edit User";

                BindLists();

                BindItemDetails();
            }
        }

        protected void BindItemDetails()
        {
            EmailAddress.Text = CurrentItem.EmailAddress;

            if (CurrentItem.Employee)
            {
                Employee.Text = "Yes";
            }
            else
            {
                Employee.Text = "No";
            }

            if (CurrentItem.Admin)
            {
                Admin.Text = "Yes";
            }
            else
            {
                Admin.Text = "No";
            }

            if (CurrentItem.Disabled)
            {
                Disabled.Text = "Yes";
            }
            else
            {
                Disabled.Text = "No";
            }

            NetworkIdentity.Text = CurrentItem.NetworkIdentity;
            NetworkPassword.Text = BASE.Auth.Decrypt(CurrentItem.NetworkPassword);
        }

        protected void BindLists()
        {
            List<int> roleIDs = _entity.tPersonRole.Where(w => w.PersonID == CurrentItem.ID).Select(w => w.RoleID).ToList();
            List<tRole> roles = _entity.tRole.Where(w => roleIDs.Contains(w.ID)).OrderBy(w => w.Name).ToList();
            ItemListView.DataSource = roles;
            ItemListView.DataBind();
        }

        protected void UpdateItem_Click(Object sender, EventArgs e)
        {

            Response.Redirect("/Screens/Admin/Person/Edit?ID=" + CurrentItem.ID);

        }

        protected void UserRolesItem_Click(Object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Admin/Person/ManageRoles.aspx?ID=" + CurrentItem.ID);
        }

        protected void ItemListView_ItemDataBound(Object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                tRole role = (tRole)e.Item.DataItem;

                Literal Role = (Literal)e.Item.FindControl("Role");
                Role.Text = role.Name;
            }
        }

        protected void Cancel_Click(Object sender, EventArgs e)
        {
            Response.Redirect(_basePath);
        }
    }
}