<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="BASE.Screens.Admin.Role.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3><asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    <table>
        <tr>
            <td>
                <asp:Label ID="NameLabel" runat="server" Text="Role" AssociatedControlID="Name"/>
            </td>
            <td style="padding-left:20px">
			    <asp:TextBox ID="Name" runat="server" CssClass="textbox" Width="300" MaxLength="64" />
            </td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td>
                <asp:Button ID="CreateItemButton" runat="server" CssClass="button" OnClick="CreateItem_Click" ValidationGroup="Create" />
            </td>
            <td style="padding-left:10px">
                <asp:Button ID="CancelButton" runat="server" CssClass="button" Text="Cancel" OnClick="Cancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>