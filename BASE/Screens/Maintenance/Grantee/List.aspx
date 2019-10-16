﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="BASE.Screens.Maintenance.Grantee.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h3>Grantees</h3>
        <br />
        <div class="row">
            <asp:Button ID="CreateItemButton" runat="server" OnClick="CreateItem_Click" CssClass="button" Width="150" />
        </div>
        <br />

        <div class="row">
            <asp:ListView ID="ItemListView" runat="server" OnItemDataBound="ItemListView_ItemDataBound">
                <LayoutTemplate>
                    <table style="width: 100%;">
                        <tr class="table-header">
                            <th>Name:</th>
                            <th>City:</th>
                            <th>State:</th>
                        </tr>
                        <tr runat="server" id="itemPlaceholder" />
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr id="ItemTableRow" runat="server" class="table-row alt">
                        <td>
                            <asp:HyperLink ID="hypDetail" runat="server" /></td>
                        <td><%# Eval("GranteeCity") %></td>
                        <td><%# Eval("GranteeState") %></td>
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
