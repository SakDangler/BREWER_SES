using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Committee
{
    public partial class List : System.Web.UI.Page
    {
        private SQLEntities _entity;

        protected void Page_Init(Object sender, EventArgs e)
        {
            _entity = new SQLEntities();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Title += " Committees";

                CreateItemButton.Text = "+ Create Committee";

                LoadCommittees();
            }
        }

        public void LoadCommittees()
        {
            List<tCommittee> committees = _entity.tCommittee.ToList();
            ItemListView.DataSource = committees;
            ItemListView.DataBind();
        }

        protected void ItemListView_ItemDataBound(Object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                tCommittee committee = (tCommittee)e.Item.DataItem;

                HyperLink hypDetail = (HyperLink)e.Item.FindControl("hypDetail");

                hypDetail.NavigateUrl = "/Screens/Maintenance/Committee/Detail?ID=" + committee.CommitteeID;
                hypDetail.Text = committee.Name;
            }
        }

        protected void CreateItem_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Maintenance/Committee/Create");
        }
    }
}