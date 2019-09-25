﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Admin.Grantee
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
                LoadGrantees();
            }
        }

        public void LoadGrantees()
        {
            List<tGrantee> grantees = _entity.tGrantee.ToList();
            ItemListView.DataSource = grantees;
            ItemListView.DataBind();
        }

        protected void ItemListView_ItemDataBound(Object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                tGrantee grantee = (tGrantee)e.Item.DataItem;

                HyperLink hypDetail = (HyperLink)e.Item.FindControl("hypDetail");

                hypDetail.NavigateUrl = "/Screens/Maintenance/Admin/Grantee/Detail?ID=" + grantee.GranteeID;
                hypDetail.Text = grantee.GranteeName;
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Maintenance/Admin/Grantee/Create");
        }
    }
}