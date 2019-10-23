<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="BASE.Screens.Maintenance.Grantee.Edit" %>

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
        <div class="col-md-3">
            <asp:Label Width="100" Text="Grantee Name" runat="server" />
            <asp:TextBox ID="txtName" Width="200" runat="server" />
        <asp:RequiredFieldValidator ID="NameRequired" runat="server" ControlToValidate="txtName" CssClass="error-message" Display="None" ValidationGroup="Update" ErrorMessage="Name is required." />
                </div>
    </div>

    <br />

    <div class="row">
        <div class="col-md-4">
            <asp:Label Width="100" Text="Address 1" runat="server" />
            <asp:TextBox ID="txtAddress" Width="350" runat="server" />
        </div>
        <div class="col-md-4">
            <asp:Label Width="100" Text="Address 2" runat="server" />
            <asp:TextBox ID="txtAddress2" Width="350" runat="server" />
        </div>
    </div>

    <br />

    <div class="row">
        <div class="col-md-2">
            <asp:Label Width="100" Text="City" runat="server" />
            <asp:TextBox ID="txtCity" Width="150" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:Label Width="100" Text="State" runat="server" />
            <asp:TextBox ID="txtState" Width="150" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:Label Width="100" Text="Zip" runat="server" />
            <asp:TextBox ID="txtZip" Width="150" runat="server" />
        </div>
    </div>

    <br />

    <div class="row">
        <div class="col-md-12">
            <asp:CheckBox ID="chkDisabled" Text="Disabled" runat="server" />
        </div>
    </div>

    <br />

    <div class="row">
        <div class="col-md-12">
            <asp:Button ID="UpdateItemButton" runat="server" CssClass="button" OnClick="UpdateItem_Click" ValidationGroup="Update" Width="150" />

            <asp:Button ID="CancelButton" runat="server" CssClass="button" Text="Cancel" OnClick="Cancel_Click" Width="150" />
        </div>
    </div>
    </div>
</asp:Content>
