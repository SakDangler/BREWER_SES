using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Admin.Person
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
                Page.Title += " Admin - Users";

                CreateItemButton.Text = "+ Create User";
                LoadPeople();
            }
        }

        public void LoadPeople()
        {
            List<tPerson> people = _entity.tPerson.ToList();
            List<tPerson> peopletest = people.Where(p => p.User).OrderBy(p => p.LastName).ThenBy(p => p.FirstName).ToList();
            ItemListView.DataSource = peopletest;
            ItemListView.DataBind();
        }

        protected void ItemListView_ItemDataBound(Object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                tPerson person = (tPerson)e.Item.DataItem;

                HyperLink hypDetail = (HyperLink)e.Item.FindControl("hypDetail");

                hypDetail.NavigateUrl = "/Screens/Admin/Person/Detail?ID=" + person.ID;
                hypDetail.Text = person.LastName + ", " + person.FirstName;
            }
        }

        protected void CreateItem_Click(Object sender, EventArgs e)
        {

            Response.Redirect("/Screens/Admin/Person/Create");

        }
    }
}