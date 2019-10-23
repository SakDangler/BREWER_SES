using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Committee
{
    public partial class Edit : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private tCommittee _item;

        private string _basePath = "/Screens/Maintenance/Committee/List/";

        protected tCommittee CurrentItem
        {
            get
            {
                if (_item == null)
                {
                    int id = Convert.ToInt32(Request.QueryString["ID"]);
                    _item = _entity.tCommittee.Where(w => w.CommitteeID == id).FirstOrDefault();
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
                Page.Title += " Edit a Committee";
                FormTitleLiteral.Text = String.Format("Edit Committee: {0}", CurrentItem.Name);
                UpdateItemButton.Text = "Save Committee";

                txtName.Text = CurrentItem.Name;
                txtDescription.Text = CurrentItem.Description;
                chkDisabled.Checked = (CurrentItem.Disabled == true) ? true : false;
            }
        }

        protected void UpdateItem_Click(Object sender, EventArgs e)
        {
            Validate("Update");
            if (IsValid)
            {
                CurrentItem.Name = txtName.Text.Trim();
                CurrentItem.Description = txtDescription.Text.Trim();
                CurrentItem.Disabled = (chkDisabled.Checked == true) ? true : false;
                _entity.Entry(CurrentItem).Property("Name").IsModified = true;
                _entity.Entry(CurrentItem).Property("Description").IsModified = true;
                _entity.Entry(CurrentItem).Property("Disabled").IsModified = true;
                _entity.SaveChanges();

                Response.Redirect(_basePath);
            }
        }

        protected void Cancel_Click(Object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Maintenance/Committee/Detail?ID=" + CurrentItem.CommitteeID);
        }
    }
}