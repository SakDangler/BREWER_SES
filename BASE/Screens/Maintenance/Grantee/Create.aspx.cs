using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Grantee
{
    public partial class Create : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private string _basePath = "/Screens/Maintenance/Grantee/List";

        protected void Page_Init(Object sender, EventArgs e)
        {
            _entity = new SQLEntities();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title += " Create a Grantee";
            FormTitleLiteral.Text = String.Format("Create a Grantee:");
            CreateItemButton.Text = "+ Create Grantee";
        }

        protected void CreateItem_Click(object sender, EventArgs e)
        {
            Validate("Create");
            if (IsValid)
            {
                tGrantee grantee = new tGrantee();

                grantee.GranteeName = txtName.Text.Trim();
                grantee.GranteeAddress1 = txtAddress.Text.Trim();
                grantee.GranteeAddress2 = txtAddress2.Text.Trim();
                grantee.GranteeCity = txtCity.Text.Trim();
                grantee.GranteeState = txtState.Text.Trim();
                grantee.GranteeZip = txtZip.Text.Trim();
                grantee.Disabled = chkDisabled.Checked;

                _entity.tGrantee.Add(grantee);
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