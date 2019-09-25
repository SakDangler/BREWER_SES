using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Admin.Grantee
{
    public partial class Detail : System.Web.UI.Page
    {
        private tGrantee _item;
        private SQLEntities _entity;
        private string _basePath = "/Screens/Maintenance/Admin/Grantee/List";

        protected tGrantee CurrentItem
        {
            get
            {
                if (_item == null)
                {
                    try
                    {
                        int id = Convert.ToInt32(Request.QueryString["ID"]);
                        _item = _entity.tGrantee.Where(w => w.GranteeID == id).FirstOrDefault();
                    }
                    catch
                    {
                        Response.Redirect(_basePath);
                    }
                }
                return _item;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            _entity = new SQLEntities();
            if (CurrentItem == null)
            {

                Response.Redirect(_basePath);
            }

            if(!IsPostBack)
            {
                LoadGrantee(CurrentItem);
            }
        }

        protected void LoadGrantee(tGrantee grantee)
        {

            lblName.Text = CurrentItem.GranteeName;
            lblAddress.Text = CurrentItem.GranteeAddress1;
            lblAddress2.Text = CurrentItem.GranteeAddress2;
            lblCity.Text = CurrentItem.GranteeCity;
            lblState.Text = CurrentItem.GranteeState;
            lblZip.Text = CurrentItem.GranteeZip;
            chkDisabled.Checked = (CurrentItem.Disabled == true) ? true : false;


        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Maintenance/Admin/Grantee/Edit?ID=" + CurrentItem.GranteeID);
        }
    }
}