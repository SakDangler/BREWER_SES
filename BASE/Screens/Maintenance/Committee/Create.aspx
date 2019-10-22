<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="BASE.Screens.Maintenance.Committee.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
            <div class="col-md-3">
                <asp:Label ID="NameLabel" runat="server" Text="* Name:" AssociatedControlID="txtName" Width="150" />
                <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Width="200" MaxLength="64" ValidationGroup="Create" />
                <asp:RequiredFieldValidator ID="NameRequired" runat="server" ControlToValidate="txtName" CssClass="error-message" Display="None" ValidationGroup="Create" ErrorMessage="Name is required." />
                <br />
                <br />

                <asp:Label ID="DescriptionLabel" runat="server" Text="Description:" AssociatedControlID="txtDescription" Width="150" />
                <asp:TextBox ID="txtDescription" runat="server" CssClass="textbox" Width="200" MaxLength="64" ValidationGroup="Update" />

            </div>
        </div>

            <br />

        <div class="row">
            <div class="col-md-12">
                <asp:Button ID="CreateItemButton" runat="server" CssClass="button" OnClick="CreateItem_Click" ValidationGroup="Create" Width="150" />

                <asp:Button ID="CancelButton" runat="server" CssClass="button" Text="Cancel" OnClick="Cancel_Click" Width="150" />
            </div>
        </div>
        </div>
</asp:Content>
