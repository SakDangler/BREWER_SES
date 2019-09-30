using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Admin.Committee
{
    public partial class Detail : System.Web.UI.Page
    {
        private tCommittee _item;
        private SQLEntities _entity;
        private string _basePath = "/Screens/Maintenance/Admin/Committee/List";

        protected tCommittee CurrentItem
        {
            get
            {
                if (_item == null)
                {
                    try
                    {
                        int id = Convert.ToInt32(Request.QueryString["ID"]);
                        _item = _entity.tCommittee.Where(w => w.CommitteeID == id).FirstOrDefault();
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
                LoadCommittee(CurrentItem);
            }
        }

        protected void LoadCommittee(tCommittee grantee)
        {

            lblName.Text = CurrentItem.Name;
            lblDescription.Text = CurrentItem.Description;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Maintenance/Admin/Committee/Edit?ID=" + CurrentItem.CommitteeID);
        }
    }
}