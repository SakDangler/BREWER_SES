﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Committee
{
    public partial class Create : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private string _basePath = "/Screens/Maintenance/Committee/List";

        protected void Page_Init(Object sender, EventArgs e)
        {
            _entity = new SQLEntities();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title += " Create a Committee";
            FormTitleLiteral.Text = String.Format("Create a Committee:");
            CreateItemButton.Text = "+ Create Committee";
        }

        protected void CreateItem_Click(object sender, EventArgs e)
        {
            Validate("Create");
            if (IsValid)
            {
                tCommittee committee = new tCommittee();

                committee.Name = txtName.Text.Trim();
                committee.Description = txtDescription.Text.Trim();

                _entity.tCommittee.Add(committee);
                _entity.SaveChanges();

                Response.Redirect(_basePath);
            }
        }

        protected void Cancel_Click(Object sender, EventArgs e)
        {
            Response.Redirect(_basePath);
        }
    }
}