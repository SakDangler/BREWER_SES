<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="BASE.Screens.Maintenance.Lookup.Contact.List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <h3>Grantees</h3>

        <asp:Button ID="btnCreate" Text="Create" Width="125" runat="server" OnClick="btnCreate_Click" />

        <br />

        <asp:Literal ID="litLevel" runat="server"></asp:Literal>

        <div class="row">
            <asp:ListView ID="ItemListView" runat="server" OnItemDataBound="ItemListView_ItemDataBound">
                <LayoutTemplate>
                    <table style="width: 100%;">
                        <tr class="table-header">
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                        </tr>
                        <tr runat="server" id="itemPlaceholder" />
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr id="ItemTableRow" runat="server" class="table-row alt">
                        <td>
                            <asp:HyperLink ID="hypDetail" runat="server" /></td>
                        <td><%# Eval("PrimaryEmail") %></td>
                        <td><%# Eval("PrimaryPhone") %></td>
                    </tr>
                </ItemTemplate>
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
        </div>

    </div>


</asp:Content>
