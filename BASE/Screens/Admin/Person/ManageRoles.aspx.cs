using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Admin.Person
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private tPerson _item;
        private string _basePath = "/Screens/Admin/Person/List";
        
        protected tPerson CurrentItem
        {
            get
            {
                if (_item == null)
                {
                    try
                    {
                        int id = Convert.ToInt32(Request.QueryString["ID"]);
                        _item = _entity.tPerson.Where(w => w.ID == id).FirstOrDefault();
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
            List<tRole> roles = _entity.tRole.ToList();

            ItemListView.DataSource = roles.OrderBy(p => p.Name).ToList();
            ItemListView.DataBind();
        }

        protected void ItemListView_ItemDataBound(Object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                tRole role = (tRole)e.Item.DataItem;

                CheckBox Role = (CheckBox)e.Item.FindControl("Role");
                Literal ID = (Literal)e.Item.FindControl("ID");
                Literal RoleName = (Literal)e.Item.FindControl("RoleName");

                ID.Text = role.ID.ToString();
                RoleName.Text = role.Name;

                List<tPersonRole> personRole = _entity.tPersonRole.Where(w => w.PersonID == CurrentItem.ID && w.RoleID == role.ID).ToList();

                if (personRole.Count > 0)
                {
                    Role.Checked = true;
                }
            }
        }

        protected void AddRolesItem_Click(Object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Admin/Person/Detail?ID=" + CurrentItem.ID.ToString());
        }

        protected void Role_CheckChanged(object sender, EventArgs e)
        {
            CheckBox Role = sender as CheckBox;

            Literal ID = Role.Parent.FindControl("ID") as Literal;
            Literal RoleName = Role.Parent.FindControl("RoleName") as Literal;

            if (Role.Checked)
            {
                tPersonRole personRole = new tPersonRole();
                personRole.RoleID = Convert.ToInt32(ID.Text);
                personRole.PersonID = CurrentItem.ID;

                _entity.tPersonRole.Add(personRole);
                _entity.SaveChanges();
            }
            else
            {
                List<tPersonRole> personRole = _entity.tPersonRole.Where(w => w.RoleID.ToString() == ID.Text && w.PersonID == CurrentItem.ID).ToList();

                foreach (tPersonRole obj in personRole)
                {
                    _entity.tPersonRole.Remove(obj);
                    _entity.SaveChanges();
                }
            }
        }
    }
}