<%@ Page Language="C#"MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="BASE.Screens.Maintenance.Contact.Edit" %>
<asp:content id="Content1" contentplaceholderid="MainContent" runat="server">
   <h3><asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    
    <div class="container">

        <div class="row">

            <h3>Contact Information</h3>

            <br />

            <div class="col-md-6">

                <asp:Label runat="server" Width="100" Text="First Name" />
                <asp:TextBox id="txtFirstName" Width="150" runat="server" />
                <asp:RequiredFieldValidator ID="rfvName"
                    runat="server"
                    ControlToValidate="txtFirstName"
                    ErrorMessage="Please enter a first name." />

                <br /><br />

                <asp:Label runat="server" Width="100" Text="Primary Phone" Placeholder="8885551234" />
                <asp:TextBox id="txtPrimaryPhone" Width="150" runat="server" />
                <asp:RegularExpressionValidator 
                    ID="rfvPhone" 
                    runat="server" 
                    ErrorMessage="Enter valid phone number." 
                    ControlToValidate="txtPrimaryPhone" 
                    ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" />
                <br /><br />

                <asp:Label runat="server" Width="100" Text="Email" Placeholder="yourname@email.com" />
                <asp:TextBox id="txtEmail" Width="150" runat="server" />
                <asp:RegularExpressionValidator 
                    ID="rfvEmail" 
                    runat="server" 
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Enter a valid email address." />
            </div>
            
            <div class="col-md-6">

                <asp:Label runat="server" Width="200" Text="Last Name" />
                <asp:TextBox id="txtLastName" Width="150" runat="server" />
                <asp:RequiredFieldValidator ID="rfvLastName"
                    runat="server"
                    ControlToValidate="txtLastName"
                    ErrorMessage="Please enter a last name." />
                <br /><br />

                <asp:Label runat="server" Width="200" Text="Secondary Phone" Placeholder="8885551234" />
                <asp:TextBox id="txtSecondaryPhone" Width="150" runat="server" />
                <asp:RegularExpressionValidator 
                    ID="rfvSecondaryPhone" 
                    runat="server" 
                    ErrorMessage="Enter valid phone number." 
                    ControlToValidate="txtSecondaryPhone" 
                    ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" />
                <br /><br />

                <asp:Label runat="server" Width="200" Text="Member Number"/>
                <asp:TextBox id="txtMemberNumber" Width="150" runat="server" />
                <asp:RequiredFieldValidator ID="rfvMemberNumber"
                    runat="server"
                    ControlToValidate="txtMemberNumber"
                    ErrorMessage="Please enter a member number." />
            </div>

        </div>

        <br /><hr /><br />

        <div class="row">

            <div class="col-md-4">
                <asp:Label runat="server" Text="Regional HS" />
                <asp:Checkbox ID="chkRegional" runat="server" />
            </div>

            <div class="col-md-4">
                <asp:Label runat="server" Text="National HS" />
                <asp:Checkbox ID="chkNational" runat="server" />
            </div>

            <div class="col-md-4">
                <asp:Label runat="server" Text="Disabled" />
                <asp:Checkbox ID="chkDisabled" runat="server" />
            </div>

        </div>
        
        <br /><hr /><br />

        <div class="row">

            <div class="col-md-12">

                <asp:Label runat="server" Width="100" Text="Grantee" />
                <asp:DropDownList runat="server" ID="ddlGrantee" Width="200" />

            </div>

        </div>

        <br /><hr /><br />

        <div class="row">

            <div class="col-md-6">
                <asp:Button cssClass="button" ID="btnSave" Text="Save" Width="125" runat="server" OnClick="btnSave_Click"/>
            </div>

        </div>

    </div>
</asp:content>
