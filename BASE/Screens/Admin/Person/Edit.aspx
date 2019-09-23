<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="BASE.Screens.Admin.Person.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3><asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    <table>
        <tr>
            <td>
                <asp:Label ID="FirstNameLabel" runat="server" Text="* First Name" AssociatedControlID="FirstName" />
            </td>
            <td style="padding-left:20px">
			    <asp:TextBox ID="FirstName" runat="server" CssClass="textbox" Width="300" MaxLength="64" ValidationGroup="Update" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LastNameLabel" runat="server" Text="* Last Name" AssociatedControlID="LastName" />
            </td>
            <td style="padding-left:20px">
			    <asp:TextBox ID="LastName" runat="server" CssClass="textbox" Width="300" MaxLength="64" ValidationGroup="Update" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="EmailAddressLabel" runat="server" Text="E-mail Address" AssociatedControlID="EmailAddress" />
            </td>
            <td style="padding-left:20px">
			    <asp:TextBox ID="EmailAddress" runat="server" CssClass="textbox" Width="400" MaxLength="256" ValidationGroup="Update" />
            </td>
        </tr>
    </table>

	<h4>Authentication:</h4>
    <table>
        <tr>
            <td>
                <asp:Label ID="NetworkIdentityLabel" runat="server" Text="* Username" AssociatedControlID="NetworkIdentity" />
            </td>
            <td style="padding-left:20px">
			    <asp:TextBox ID="NetworkIdentity" runat="server" CssClass="textbox" Width="350" MaxLength="64" ValidationGroup="Update" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="NetworkPasswordLabel" runat="server" Text="* Password" AssociatedControlID="NetworkPassword" />
            </td>
            <td style="padding-left:20px">
			    <asp:TextBox ID="NetworkPassword" runat="server" CssClass="textbox" Width="350" MaxLength="64" ValidationGroup="Update" />
            </td>
        </tr>
    </table>

	<h4>Account:</h4>
    <table>
        <tr>
            <td style="padding-left:20px">
                <asp:Checkbox ID="Employee" runat="server" CssClass="checkbox" ValidationGroup="Update" />
                <asp:Label ID="EmployeeLabel" runat="server" Text="Employee" AssociatedControlID="Employee" />
            </td>
        </tr>
        <tr>
            <td style="padding-left:20px">
                <asp:Checkbox ID="Disabled" runat="server" CssClass="checkbox" ValidationGroup="Update" />
			    <asp:Label ID="DisabledLabel" runat="server" Text="Disabled" AssociatedControlID="Disabled" />
            </td>
        </tr>
        <tr>
            <td style="padding-left:20px">
                <asp:Checkbox ID="Admin" runat="server" CssClass="checkbox" ValidationGroup="Update" />
			    <asp:Label ID="AdminLabel" runat="server" Text="Admin" AssociatedControlID="Admin" />
            </td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td>
                <asp:Button ID="UpdateItemButton" runat="server" CssClass="button" OnClick="UpdateItem_Click" ValidationGroup="Update" />
            </td>
            <td style="padding-left:10px">
                <asp:Button ID="CancelButton" runat="server" CssClass="button" Text="Cancel" OnClick="Cancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>