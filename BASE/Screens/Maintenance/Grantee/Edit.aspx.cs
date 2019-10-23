using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Grantee
{
    public partial class Edit : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private tGrantee _item;

        private string _basePath = "/Screens/Maintenance/Grantee/List/";

        protected tGrantee CurrentItem
        {
            get
            {
                if (_item == null)
                {
                    int id = Convert.ToInt32(Request.QueryString["ID"]);
                    _item = _entity.tGrantee.Where(w => w.GranteeID == id).FirstOrDefault();
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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Title += " Edit a Grantee";
                FormTitleLiteral.Text = String.Format("Edit Grantee: {0}", CurrentItem.GranteeName);
                UpdateItemButton.Text = "Save Grantee";

                txtName.Text = CurrentItem.GranteeName;
                txtAddress.Text = CurrentItem.GranteeAddress1;
                txtAddress2.Text = CurrentItem.GranteeAddress2;
                txtCity.Text = CurrentItem.GranteeCity;
                txtState.Text = CurrentItem.GranteeState;
                txtZip.Text = CurrentItem.GranteeZip;
                chkDisabled.Checked = (CurrentItem.Disabled == true) ? true : false;
            }
        }

        protected void UpdateItem_Click(Object sender, EventArgs e)
        {
            Validate("Update");
            if (IsValid)
            {
                CurrentItem.GranteeName = txtName.Text.Trim();
                CurrentItem.GranteeAddress1 = txtAddress.Text.Trim();
                CurrentItem.GranteeAddress2 = txtAddress2.Text.Trim();
                CurrentItem.GranteeCity = txtCity.Text.Trim();
                CurrentItem.GranteeState = txtState.Text.Trim();
                CurrentItem.GranteeZip = txtZip.Text.Trim();
                CurrentItem.Disabled = (chkDisabled.Checked == true) ? true : false;

                _entity.Entry(CurrentItem).Property("GranteeName").IsModified = true;
                _entity.Entry(CurrentItem).Property("GranteeAddress1").IsModified = true;
                _entity.Entry(CurrentItem).Property("GranteeAddress2").IsModified = true;
                _entity.Entry(CurrentItem).Property("GranteeCity").IsModified = true;
                _entity.Entry(CurrentItem).Property("GranteeState").IsModified = true;
                _entity.Entry(CurrentItem).Property("GranteeZip").IsModified = true;
                _entity.Entry(CurrentItem).Property("Disabled").IsModified = true;
                _entity.SaveChanges();

                Response.Redirect(_basePath);
            }
        }

        protected void Cancel_Click(Object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Maintenance/Grantee/Detail?ID=" + CurrentItem.GranteeID);
        }
    }
}