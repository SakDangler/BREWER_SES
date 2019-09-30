using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Lookup.Contact
{
    public partial class Detail : System.Web.UI.Page
    {
        private tContact _item;
        private tGrantee _grantee;
        private SQLEntities _entity;
        private string _basePath = "/Screens/Maintenance/Lookup/Contact/List/";

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

        protected void Page_Load(object sender, EventArgs e)
        {
            _entity = new SQLEntities();
            if (CurrentItem == null)
            {

                Response.Redirect(_basePath);
            }

            if (!IsPostBack)
            {
                CommitteeList = LoadCommittees(CommitteeList);
                LoadContact(CurrentItem);
            }
        }

        protected Repeater LoadCommittees(Repeater committeeList)
        {
            List<int> committeeIDs = _entity.tContactCommittee.Where(w => w.ContactID == CurrentItem.ContactID).Select(w => w.CommitteeID).ToList();
            List<tCommittee> committee = _entity.tCommittee.Where(w => committeeIDs.Contains(w.CommitteeID)).OrderBy(w => w.Name).ToList();
            committeeList.DataSource = committee;
            committeeList.DataBind();

            return committeeList;
        }

        protected void LoadContact(tContact grantee)
        {
            _grantee = _entity.tGrantee.Where(w => w.GranteeID == CurrentItem.GranteeID).FirstOrDefault();
            lblFirstName.Text = CurrentItem.FirstName;
            lblLastName.Text = CurrentItem.LastName;
            lblEmail.Text = CurrentItem.PrimaryEmail;
            lblMemberNumber.Text = CurrentItem.MemberNumber;
            lblPrimaryPhone.Text = CurrentItem.PrimaryPhone;
            lblSecondaryPhone.Text = CurrentItem.SecondaryPhone;
            chkDisabled.Checked = (CurrentItem.Disabled == true) ? true : false;
            chkRegional.Checked = (CurrentItem.RegionHSParticipation == true) ? true : false;
            chkNational.Checked = (CurrentItem.NationalHSParticipation == true) ? true : false;

            lblGrantee.Text = _grantee.GranteeName;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Maintenance/Lookup/Contact/Edit?ID=" + CurrentItem.ContactID);
        }

        protected void btnCommittee_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Screens/Maintenance/Lookup/Contact/ManageRoles.aspx?ID=" + CurrentItem.ContactID);
        }

      

    }
}