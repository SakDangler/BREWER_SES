using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Contact
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private tContact _item;
        private string _basePath = "/Screens/Maintenance/Contact/List";
        
        protected tContact CurrentItem
        {
            get
            {
                if (_item == null)
                {
                    try
                    {
                        int id = Convert.ToInt32(Request.QueryString["ID"]);
                        _item = _entity.tContact.Where(w => w.ContactID == id).FirstOrDefault();
                    }
                    catch
                    {
                        Response.Redirect(_basePath);
                    }
                }
                return _item;
            }
        }

        protected void Page_Init(Object sender, EventArgs e)
        {
            _entity = new SQLEntities();
        }

        protected void Page_Load(Object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRoles();
            }
        }

        public void LoadRoles()
        {
            List<tCommittee> roles = _entity.tCommittee.ToList();

            ItemListView.DataSource = roles.OrderBy(p => p.Name).ToList();
            ItemListView.DataBind();
        }

        protected void ItemListView_ItemDataBound(Object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                tCommittee role = (tCommittee)e.Item.DataItem;

                CheckBox Role = (CheckBox)e.Item.FindControl("Committee");
                Literal ID = (Literal)e.Item.FindControl("ID");
                Literal RoleName = (Literal)e.Item.FindControl("CommitteeName");

                ID.Text = role.CommitteeID.ToString();
                RoleName.Text = role.Name;

                List<tContactCommittee> committee = _entity.tContactCommittee.Where(w => w.ContactID == CurrentItem.ContactID && w.CommitteeID == role.CommitteeID).ToList();

                if (committee.Count > 0)
                {
                    Role.Checked = true;
                }
            }
        }

        protected void AddRolesItem_Click(Object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Maintenance/Contact/Detail?ID=" + CurrentItem.ContactID.ToString());
        }

        protected void Committee_CheckChanged(object sender, EventArgs e)
        {
            CheckBox Committee = sender as CheckBox;

            Literal ID = Committee.Parent.FindControl("ID") as Literal;
            Literal CommitteeName = Committee.Parent.FindControl("CommitteeName") as Literal;

            if (Committee.Checked)
            {
                tContactCommittee committee = new tContactCommittee();
                committee.CommitteeID = Convert.ToInt32(ID.Text);
                committee.ContactID = CurrentItem.ContactID;
                committee.Disabled = false;

                _entity.tContactCommittee.Add(committee);
                _entity.SaveChanges();
            }
            else
            {
                List<tContactCommittee> committee = _entity.tContactCommittee.Where(w => w.CommitteeID.ToString() == ID.Text && w.ContactID == CurrentItem.ContactID).ToList();

                foreach (tContactCommittee obj in committee)
                {
                    _entity.tContactCommittee.Remove(obj);
                    _entity.SaveChanges();
                }
            }
        }
    }
}