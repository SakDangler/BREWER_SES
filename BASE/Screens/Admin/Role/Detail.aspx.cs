using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Admin.Role
{
    public partial class Detail : System.Web.UI.Page
    {
        private tRole _item;
        private SQLEntities _entity;
        private string _basePath = "/Screens/Admin/Role/List";
        
        protected tRole CurrentItem
        {
            get
            {
                if (_item == null)
                {
                    try
                    {
                        int id = Convert.ToInt32(Request.QueryString["ID"]);
                        _item = _entity.tRole.Where(w => w.ID == id).FirstOrDefault();
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
            if (CurrentItem == null)
            {

                Response.Redirect(_basePath);

            }

        }

        protected void Page_Load(Object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                Page.Title += " Admin - Role Details";
                FormTitleLiteral.Text = String.Format("Role Details: {0}", CurrentItem.Name);
                UpdateItemButton.Text = "Edit Role";

                BindLists();

                BindItemDetails();

            }

        }

        protected void BindItemDetails()
        {

            //Name.Text = String.Format("Role: {0}", CurrentItem.Name);
            Name.Text = !String.IsNullOrEmpty(CurrentItem.Name) ? CurrentItem.Name.ToString() : "--None--";
            //Disabled.Checked = CurrentItem.Disabled;

            //if (CurrentItem.Disabled)
            //{
            //    StatusBlock.Visible = true;
            //    StatusBlock.Attributes["style"] = "background-color:#DA251D; width: 65px;";
            //    Status.Text = "Disabled";
            //}

        }

        protected void BindLists()
        {


        }

        protected void UpdateItemButton_Click(Object sender, EventArgs e)
        {

            Response.Redirect("/Screens/Admin/Role/Edit?ID=" + CurrentItem.ID);

        }

        protected void Cancel_Click(Object sender, EventArgs e)
        {
            Response.Redirect(_basePath);
        }
    }
}