<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="BASE.Screens.Maintenance.Contact.Create" %>
<asp:content id="Content1" contentplaceholderid="MainContent" runat="server">
   <h3>
        <asp:Literal ID="FormTitleLiteral" runat="server" /></h3>

    <div style="background-color: lightcoral; font-size: large; color: white; font-weight: bold; width: 50%;">
        <asp:ValidationSummary ID="CreateItemValidationSummary" runat="server" CssClass="error" ValidationGroup="Create" HeaderText="Error:" />
        <asp:Panel ID="ModelValidationSummary" runat="server" Visible="false" CssClass="error" BackColor="LightPink">
            <asp:ListView ID="ValidationErrors" runat="server">
                <LayoutTemplate>
                    <ul>
                        <li id="itemPlaceholder" runat="server" />
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li><%# Container.DataItem %></li>
                </ItemTemplate>
            </asp:ListView>
        </asp:Panel>
    </div>

    <br />
    
    <div class="container">
        <div class="row">


            <br />

            <div class="col-md-6">

                <asp:Label runat="server" Width="100" Text="First Name" />
                <asp:TextBox id="txtFirstName" Width="150" runat="server" />
                <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="txtFirstName" CssClass="error-message" Display="None" ValidationGroup="Create" ErrorMessage="First Name is required." />
                <br /><br />

                <asp:Label runat="server" Width="100" Text="Primary Phone" Placeholder="8885551234" />
                <asp:TextBox id="txtPrimaryPhone" Width="150" runat="server" />
                <br /><br />

                <asp:Label runat="server" Width="100" Text="Email" Placeholder="yourname@email.com" />
                <asp:TextBox id="txtEmail" Width="150" runat="server" />
            </div>

            <div class="col-md-6">

                <asp:Label runat="server" Width="200" Text="Last Name" />
                <asp:TextBox id="txtLastName" Width="150" runat="server" />
                <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="txtLastName" CssClass="error-message" Display="None" ValidationGroup="Create" ErrorMessage="Last Name is required." />
                <br /><br />

                <asp:Label runat="server" Width="200" Text="Secondary Phone" Placeholder="8885551234" />
                <asp:TextBox id="txtSecondaryPhone" Width="150" runat="server" />
                <br /><br />

                <asp:Label runat="server" Width="200" Text="Member Number"/>
                <asp:TextBox id="txtMemberNumber" Width="150" runat="server" />
            </div>

        </div>

        <br />

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

            <div class="col-md-12">
                <asp:Button ID="CreateItemButton" runat="server" CssClass="button" OnClick="CreateItem_Click" ValidationGroup="Create" Width="150" />

                <asp:Button ID="CancelButton" runat="server" CssClass="button" Text="Cancel" OnClick="Cancel_Click" Width="150" />
            </div>

        </div>
    </div>
</asp:content>
