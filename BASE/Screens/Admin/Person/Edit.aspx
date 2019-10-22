<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="BASE.Screens.Admin.Person.Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        <asp:Literal ID="FormTitleLiteral" runat="server" /></h3>

    <div style="background-color: lightcoral; font-size: large; color: white; font-weight: bold; width: 50%;">
        <asp:ValidationSummary ID="CreateItemValidationSummary" runat="server" CssClass="error" ValidationGroup="Update" HeaderText="Error:" />
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
            <div class="col-md-4">
                <h4>User Details</h4>
                <asp:Label ID="FirstNameLabel" runat="server" Text="* First Name" AssociatedControlID="FirstName" Width="150" />
                <asp:TextBox ID="FirstName" runat="server" CssClass="textbox" Width="300" MaxLength="64" ValidationGroup="Update" />
                <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName" CssClass="error-message" Display="None" ValidationGroup="Update" ErrorMessage="First Name is required." />
                <br />
                <br />

                <asp:Label ID="LastNameLabel" runat="server" Text="* Last Name" AssociatedControlID="LastName" Width="150" />
                <asp:TextBox ID="LastName" runat="server" CssClass="textbox" Width="300" MaxLength="64" ValidationGroup="Update" />
                <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName" CssClass="error-message" Display="None" ValidationGroup="Update" ErrorMessage="Last Name is required." />
                <br />
                <br />

                <asp:Label ID="EmailAddressLabel" runat="server" Text="E-mail Address" AssociatedControlID="EmailAddress" Width="150" />
                <asp:TextBox ID="EmailAddress" runat="server" CssClass="textbox" Width="400" MaxLength="256" ValidationGroup="Update" />
                <asp:RequiredFieldValidator ID="EmailAddressRequired" runat="server" ControlToValidate="EmailAddress" CssClass="error-message" Display="None" ValidationGroup="Update" ErrorMessage="Email Address is required." />
            </div>

            <div class="col-md-4">
                <h4>Authentication:</h4>
                <asp:Label ID="NetworkIdentityLabel" runat="server" Text="* Username" AssociatedControlID="NetworkIdentity" Width="150" />
                <asp:TextBox ID="NetworkIdentity" runat="server" CssClass="textbox" Width="350" MaxLength="64" ValidationGroup="Update" />
                <br />
                <br />
                <asp:Label ID="NetworkPasswordLabel" runat="server" Text="* Password" AssociatedControlID="NetworkPassword" Width="150" />
                <asp:TextBox ID="NetworkPassword" runat="server" CssClass="textbox" Width="350" MaxLength="64" ValidationGroup="Update" />
            </div>

            <div class="col-md-4">
                <h4>Account:</h4>
                <asp:CheckBox ID="Employee" runat="server" CssClass="checkbox" ValidationGroup="Update" />
                <asp:Label ID="EmployeeLabel" runat="server" Text="Employee" AssociatedControlID="Employee" />
                <br />
                <asp:CheckBox ID="Disabled" runat="server" CssClass="checkbox" ValidationGroup="Update" />
                <asp:Label ID="DisabledLabel" runat="server" Text="Disabled" AssociatedControlID="Disabled" />
                <br />
                <asp:CheckBox ID="Admin" runat="server" CssClass="checkbox" ValidationGroup="Update" />
                <asp:Label ID="AdminLabel" runat="server" Text="Admin" AssociatedControlID="Admin" />

            </div>
        </div>
    

    <br />
    <br />

    <div class="row">
        <div class="col-md-12">
            <asp:Button ID="UpdateItemButton" runat="server" CssClass="button" OnClick="UpdateItem_Click" ValidationGroup="Update" Width="150" />

            <asp:Button ID="CancelButton" runat="server" CssClass="button" Text="Cancel" OnClick="Cancel_Click" Width="150" />
        </div>
    </div>

    </div>
</asp:Content>
