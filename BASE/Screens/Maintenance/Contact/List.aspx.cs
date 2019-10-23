using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Contact
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
                Page.Title += " Contacts";

                CreateItemButton.Text = "+ Create Contact";

                LoadContacts();
            }

        }

        public void LoadContacts()
        {
            List<tContact> contacts = _entity.tContact.ToList();
            ItemListView.DataSource = contacts;
            ItemListView.DataBind();
        }

        protected void ItemListView_ItemDataBound(Object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                tContact contact = (tContact)e.Item.DataItem;

                HyperLink hypDetail = (HyperLink)e.Item.FindControl("hypDetail");

                hypDetail.NavigateUrl = "/Screens/Maintenance/Contact/Detail?ID=" + contact.ContactID;
                hypDetail.Text = contact.LastName + ", " + contact.FirstName;
            }
        }

        protected void CreateItem_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Maintenance/Contact/Create");
        }
    }
}