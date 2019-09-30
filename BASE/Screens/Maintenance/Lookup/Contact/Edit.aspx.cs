using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Lookup.Contact
{
    public partial class Edit : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private tContact _item;
        private string _basePath = "/Screens/Maintenance/Lookup/Contact/List/";

        protected tContact CurrentItem
        {
            get
            {
                if (_item == null)
                {
                    int id = Convert.ToInt32(Request.QueryString["ID"]);
                    _item = _entity.tContact.Where(w => w.ContactID == id).FirstOrDefault();
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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtFirstName.Text = CurrentItem.FirstName;
                txtLastName.Text = CurrentItem.LastName;
                txtPrimaryPhone.Text = CurrentItem.PrimaryPhone;
                txtSecondaryPhone.Text = CurrentItem.SecondaryPhone;
                txtMemberNumber.Text = CurrentItem.MemberNumber;
                txtEmail.Text = CurrentItem.PrimaryEmail;
                chkDisabled.Checked = (CurrentItem.Disabled == true) ? true : false;
                chkRegional.Checked = (CurrentItem.RegionHSParticipation == true) ? true : false;
                chkNational.Checked = (CurrentItem.NationalHSParticipation == true) ? true : false;
                LoadGrantees(ddlGrantee);
            }
        }

        protected DropDownList LoadGrantees(DropDownList ddl)
        {
            List<tGrantee> granteeList = _entity.tGrantee.ToList();
            string granteeName = _entity.tGrantee.Where(w => w.GranteeID == CurrentItem.GranteeID).Select(w => w.GranteeID).ToString();

            ddl.DataSource = granteeList;
            ddl.Items.FindByText(granteeName);
            ddl.DataTextField = "GranteeName";
            ddl.DataValueField = "GranteeID";
            ddl.DataBind();
            return ddl;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            CurrentItem.FirstName = txtFirstName.Text.Trim();
            CurrentItem.LastName = txtLastName.Text.Trim();
            CurrentItem.PrimaryPhone = txtPrimaryPhone.Text.Trim();
            CurrentItem.SecondaryPhone = txtSecondaryPhone.Text.Trim();
            CurrentItem.MemberNumber = txtMemberNumber.Text.Trim();
            CurrentItem.PrimaryEmail = txtEmail.Text.Trim();
            CurrentItem.Disabled = (chkDisabled.Checked == true) ? true : false;
            CurrentItem.RegionHSParticipation = (chkRegional.Checked == true) ? true : false;
            CurrentItem.NationalHSParticipation = (chkNational.Checked == true) ? true : false;
            CurrentItem.GranteeID = Convert.ToInt32(ddlGrantee.SelectedValue);

            _entity.Entry(CurrentItem).Property("FirstName").IsModified = true;
            _entity.Entry(CurrentItem).Property("LastName").IsModified = true;
            _entity.Entry(CurrentItem).Property("PrimaryPhone").IsModified = true;
            _entity.Entry(CurrentItem).Property("SecondaryPhone").IsModified = true;
            _entity.Entry(CurrentItem).Property("PrimaryEmail").IsModified = true;
            _entity.Entry(CurrentItem).Property("MemberNumber").IsModified = true;
            _entity.Entry(CurrentItem).Property("Disabled").IsModified = true;
            _entity.Entry(CurrentItem).Property("RegionHSParticipation").IsModified = true;
            _entity.Entry(CurrentItem).Property("NationalHSParticipation").IsModified = true;
            _entity.Entry(CurrentItem).Property("GranteeID").IsModified = true;

            _entity.SaveChanges();

            Response.Redirect(_basePath);
        }
    }
}