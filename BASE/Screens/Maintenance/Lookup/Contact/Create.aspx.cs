using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Lookup.Contact
{
    public partial class Create : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private string _basePath = "/Screens/Maintenance/Lookup/Contact/List";

        protected void Page_Init(Object sender, EventArgs e)
        {
            _entity = new SQLEntities();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Validate("Create");
            if (IsValid)
            {
                tContact contact = new tContact();

                contact.FirstName = txtFirstName.Text.Trim();
                contact.LastName = txtLastName.Text.Trim();
                contact.MemberNumber = txtMemberNumber.Text;
                contact.PrimaryEmail = txtEmail.Text.Trim();
                contact.PrimaryPhone = txtPrimaryPhone.Text.Trim();
                contact.SecondaryPhone = txtSecondaryPhone.Text.Trim();
                contact.RegionHSParticipation = chkRegional.Checked;
                contact.NationalHSParticipation = chkNational.Checked;
                contact.Disabled = chkDisabled.Checked;
                contact.GranteeID = 1;

                _entity.tContact.Add(contact);
                _entity.SaveChanges();

                Response.Redirect(_basePath);
            }
        }
    }
}