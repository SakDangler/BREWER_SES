<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BASE.Screens.Admin.Person.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="title-item">
        <h3><asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    </div>
    <div class="detail-section">
        <table>
            <tr>
                <td>
                    <table class="detail-table">
                        <tr>
                            <td>
                                <strong>Email Address:</strong>
                            </td>
                            <td style="padding-left: 10px">
                                <asp:Literal ID="EmailAddress" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="two-column">
                                <strong>Network Identity:</strong>
                            </td>
                            <td style="padding-left: 10px">
                                <asp:Literal ID="NetworkIdentity" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="two-column">
                                <strong>Network Password:</strong>
                            </td>
                            <td style="padding-left: 10px">
                                <asp:Literal ID="NetworkPassword" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="three-column">
                                <strong>Employee:</strong>
                            </td>
                            <td style="padding-left: 10px">
                                <asp:Literal ID="Employee" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="three-column">
                                <strong>Admin:</strong>
                            </td>
                            <td style="padding-left: 10px">
                                <asp:Literal ID="Admin" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="three-column">
                                <strong>Disabled:</strong>
                            </td>
                            <td style="padding-left: 10px">
                                <asp:Literal ID="Disabled" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="padding-left: 20px">
                    <table>
                        <tr>
                            <td style="padding-left: 20px">
                                <asp:ListView ID="ItemListView" runat="server" OnItemDataBound="ItemListView_ItemDataBound">
                                    <LayoutTemplate>
                                        <table style="width: 100%;">
                                            <tr class="table-header">
                                                <th>Role(s):</th>
                                            </tr>
                                            <tr runat="server" id="itemPlaceholder" />
                                        </table>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr id="ItemTableRow" runat="server" class="table-row alt">
                                            <td>
                                                <asp:Literal ID="Role" runat="server" /></td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr id="ItemTableRow" runat="server" class="table-row">
                                            <td>
                                                <asp:Literal ID="Role" runat="server" /></td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EmptyDataTemplate>
                                        <table style="width: 100%;">
                                            <tr>
                                                <tr>
                                                    <td>No roles found for this person.</td>
                                                </tr>
                                            </tr>
                                        </table>
                                    </EmptyDataTemplate>
                                </asp:ListView>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-left:20px; padding-top:10px">
                                <asp:Button ID="UserRolesItemButton" runat="server" CssClass="button" OnClick="UserRolesItem_Click" />
                            </td>
                            <td></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <asp:Button ID="UpdateItemButton" runat="server" CssClass="button" OnClick="UpdateItem_Click" ValidationGroup="Update" />
</asp:Content>
