﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="BASE.Screens.Maintenance.Committee.List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h3>Committees</h3>
    <div class="row">
        <div class="col-md-9">
            <asp:Button CssClass="button" ID="CreateItemButton" Text="Create" Width="150" runat="server" OnClick="CreateItem_Click" />
        </div>
        <div class="col-md-3">
            
        </div>
    </div>
    <br />

    <div class="row">
        <asp:ListView ID="ItemListView" runat="server" OnItemDataBound="ItemListView_ItemDataBound">
            <LayoutTemplate>
                <table style="width: 100%;">
                    <tr class="table-header">
                        <th>Name:</th>
                    </tr>
                    <tr runat="server" id="itemPlaceholder" />
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr id="ItemTableRow" runat="server" class="table-row alt">
                    <td>
                        <asp:HyperLink ID="hypDetail" runat="server" /></td>
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


</asp:Content>
