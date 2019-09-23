<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="BASE.Screens.Admin.Person.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<table>
        <tr>
            <td>
                <asp:Button ID="CreateItemButton" runat="server" OnClick="CreateItem_Click" CssClass="button" />
            </td>
        </tr>
    </table>
    <br />
    <asp:ListView ID="ItemListView" runat="server" OnItemDataBound="ItemListView_ItemDataBound">        
		<LayoutTemplate>
		  <table style="width: 100%;">
			<tr class="table-header">
				<th>Name:</th>
				<th>E-mail Address:</th>
			</tr>
			<tr runat="server" id="itemPlaceholder" />
		  </table>
		</LayoutTemplate>
		<ItemTemplate>
			<tr id="ItemTableRow" runat="server" class="table-row alt">
				<td><asp:HyperLink ID="hypDetail" runat="server" /></td>
				<td><%# Eval("EmailAddress") %></td>
			</tr>
		</ItemTemplate>
		<EmptyDataTemplate>
		  <table style="width: 100%;">
			<tr>
				<tr><td>None found.</td></tr>
			</tr>
		  </table>
		</EmptyDataTemplate>
	</asp:ListView>
</asp:Content>