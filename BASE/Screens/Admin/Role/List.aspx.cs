using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Admin.Role
{
    public partial class List : System.Web.UI.Page
    {
        private SQLEntities _entity;

        protected void Page_Init(Object sender, EventArgs e)
        {
            _entity = new SQLEntities();
        }

        protected void Page_Load(Object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Title += " Admin - Roles";

                CreateItemButton.Text = "+ Create Role";

                LoadRoles();
            }
        }

        public void LoadRoles()
        {
            List<tRole> roles = _entity.tRole.ToList();

            ItemListView.DataSource = roles.OrderBy(p => p.Name).ToList();
            ItemListView.DataBind();
        }

        protected void ItemListView_ItemDataBound(Object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                tRole role = (tRole)e.Item.DataItem;

                Literal ID = (Literal)e.Item.FindControl("ID");
                HyperLink RoleName = (HyperLink)e.Item.FindControl("RoleName");

                ID.Text = role.ID.ToString();
                RoleName.Text = role.Name;
                RoleName.NavigateUrl = "/Screens/Admin/Role/Detail.aspx?ID=" + ID.Text;
            }
        }

        protected void CreateItem_Click(Object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Admin/Role/Create.aspx");
        }
    }
}