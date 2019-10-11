<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageRoles.aspx.cs" Inherits="BASE.Screens.Maintenance.Contact.ManageRoles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Committee List</h3>

    <div class="container">

        <div class="row">

            <asp:ListView ID="ItemListView" runat="server" OnItemDataBound="ItemListView_ItemDataBound">
                <LayoutTemplate>
                    <table style="width: 25%;">
                        <tr class="table-header">
                            <th>Committee(s):</th>
                        </tr>
                        <tr runat="server" id="itemPlaceholder" />
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr id="ItemTableRow" runat="server" class="table-row alt">
                        <td>
                            <asp:CheckBox ID="Committee" runat="server" AutoPostBack="true" OnCheckedChanged="Committee_CheckChanged" /></td>
                        <td>
                            <asp:Literal ID="CommitteeName" runat="server" /></td>
                        <td style="display: none">
                            <asp:Literal ID="ID" runat="server" /></td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr id="ItemTableRow" runat="server" class="table-row">
                        <td>
                            <asp:CheckBox ID="Committee" runat="server" AutoPostBack="true" OnCheckedChanged="Committee_CheckChanged" /></td>
                        <td>
                            <asp:Literal ID="CommitteeName" runat="server" /></td>
                        <td style="display: none">
                            <asp:Literal ID="ID" runat="server" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EmptyDataTemplate>
                    <table style="width: 100%;">
                        <tr>
                            <tr>
                                <td>None found.</td>
                            </tr>
                        </tr>
                    </table>
                </EmptyDataTemplate>
            </asp:ListView>
            <br />
            <asp:Button cssClass="button" ID="AddRolesItemButton" runat="server" Text="Save Committees" OnClick="AddRolesItem_Click" />

        </div>

    </div>

</asp:Content>
