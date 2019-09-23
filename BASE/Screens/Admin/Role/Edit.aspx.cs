using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Admin.Role
{
    public partial class Edit : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private tRole _item;

        private string _basePath = "/Screens/Admin/Role/List";
        
        protected tRole CurrentItem
        {
            get
            {
                if (_item == null)
                {
                    int id = Convert.ToInt32(Request.QueryString["ID"]);
                    _item = _entity.tRole.Where(w => w.ID == id).FirstOrDefault();
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
                Name.Text = CurrentItem.Name;
            }
        }

        protected void SaveRolesItem_Click(Object sender, EventArgs e)
        {
            CurrentItem.Name = Name.Text.Trim();
            _entity.Entry(CurrentItem).Property("Name").IsModified = true;
            _entity.SaveChanges();

            Response.Redirect(_basePath);
        }
    }
}