<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BASE.Screens.Admin.Role.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="title-item">
        <h3><asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    </div>
    <table class="detail-table">
        <tr>
            <td class="one-column">
                <strong>Name:</strong>
                <asp:Literal ID="Name" runat="server" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="UpdateItemButton" runat="server" OnClick="UpdateItemButton_Click" CssClass="button" Width="150" />
    <asp:Button ID="CancelButton" runat="server" CssClass="button" Text="Cancel" OnClick="Cancel_Click" Width="150" />
</asp:Content>