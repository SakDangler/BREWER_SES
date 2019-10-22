using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BASE.Screens.Maintenance.Contact
{
    public partial class Create : System.Web.UI.Page
    {
        private SQLEntities _entity;
        private string _basePath = "/Screens/Maintenance/Contact/List";

        protected void Page_Init(Object sender, EventArgs e)
        {
            _entity = new SQLEntities();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Title += " Create a Contact";
                FormTitleLiteral.Text = String.Format("Create a Contact:");
                CreateItemButton.Text = "+ Create Contact";

                LoadGrantees(ddlGrantee);
            }
        }

        protected DropDownList LoadGrantees(DropDownList ddl)
        {
            List<tGrantee> granteeList = _entity.tGrantee.ToList();
            string granteeName = _entity.tGrantee.Select(w => w.GranteeID).ToString();

            ddl.DataSource = granteeList;
            ddl.Items.FindByText(granteeName);
            ddl.DataTextField = "GranteeName";
            ddl.DataValueField = "GranteeID";
            ddl.DataBind();
            return ddl;
        }

        protected void CreateItem_Click(object sender, EventArgs e)
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
                contact.GranteeID = Convert.ToInt32(ddlGrantee.SelectedValue);

                _entity.tContact.Add(contact);
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