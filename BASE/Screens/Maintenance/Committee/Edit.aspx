<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="BASE.Screens.Maintenance.Committee.Edit" %>

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
            <%--<asp:Label Width="100" Text="Committee Name" runat="server" />
               <asp:TextBox ID="txtName" Width="200" runat="server" />
               <asp:RequiredFieldValidator ID="rfvName"
                   runat="server"
                   ControlToValidate="txtName"
                   ErrorMessage="Please enter a name." />--%>

            <asp:Label ID="NameLabel" runat="server" Text="* Name:" AssociatedControlID="txtName" Width="150" />
            <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Width="200" MaxLength="64" ValidationGroup="Update" />
            <asp:RequiredFieldValidator ID="NameRequired" runat="server" ControlToValidate="txtName" CssClass="error-message" Display="None" ValidationGroup="Update" ErrorMessage="Name is required." />
            <br />
            <br />

            <asp:Label ID="DescriptionLabel" runat="server" Text="Description:" AssociatedControlID="txtDescription" Width="150" />
            <asp:TextBox ID="txtDescription" runat="server" CssClass="textbox" Width="200" MaxLength="64" ValidationGroup="Update" />



            <%--<asp:Label Width="500" Text="Description" runat="server" />
               <asp:TextBox ID="txtDescription" Width="200" runat="server" />
               <asp:RequiredFieldValidator ID="rfvDescription"
                   runat="server"
                   ControlToValidate="txtDescription"
                   ErrorMessage="Please enter a description." />--%>
        </div></div>
        <br />
        <div class="col-md-4">
            <asp:CheckBox ID="chkDisabled" runat="server" CssClass="checkbox" ValidationGroup="Update" />
            <asp:Label ID="DisabledLabel" runat="server" Text="Disabled" AssociatedControlID="chkDisabled" />
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

</asp:Content>
