using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Admin.Role
{
    public partial class Create : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private string _basePath = "/Screens/Admin/Role/List";

        protected void Page_Init(Object sender, EventArgs e)
        {
            _entity = new SQLEntities();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Title += " Admin - Create a Role";
                FormTitleLiteral.Text = String.Format("Create a Role:");
                CreateItemButton.Text = "+ Create Role";
            }
        }

        protected void CreateItem_Click(Object sender, EventArgs e)
        {
            Validate("Create");
            if (IsValid)
            {
                tRole role = new tRole();
                role.Name = Name.Text.Trim();

                _entity.tRole.Add(role);
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