<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageRoles.aspx.cs" Inherits="BASE.Screens.Admin.Person.ManageRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<asp:ListView ID="ItemListView" runat="server" OnItemDataBound="ItemListView_ItemDataBound">        
		<LayoutTemplate>
			<table style="width: 25%;">
			<tr class="table-header">
				<th>Role(s):</th>
			</tr>
			<tr runat="server" id="itemPlaceholder" />
			</table>
		</LayoutTemplate>
		<ItemTemplate>
			<tr id="ItemTableRow" runat="server" class="table-row alt">
				<td><asp:CheckBox ID="Role" runat="server" AutoPostBack="true" OnCheckedChanged="Role_CheckChanged" /></td>
				<td><asp:Literal ID="RoleName" runat="server" /></td>
				<td style="display:none"><asp:Literal ID="ID" runat="server" /></td>
			</tr>
		</ItemTemplate>
		<AlternatingItemTemplate>
			<tr id="ItemTableRow" runat="server" class="table-row">
				<td><asp:CheckBox ID="Role" runat="server" AutoPostBack="true" OnCheckedChanged="Role_CheckChanged" /></td>
				<td><asp:Literal ID="RoleName" runat="server" /></td>
				<td style="display:none"><asp:Literal ID="ID" runat="server" /></td>
			</tr>
		</AlternatingItemTemplate>
		<EmptyDataTemplate>
			<table style="width: 100%;">
			<tr>
				<tr><td>None found.</td></tr>
			</tr>
			</table>
		</EmptyDataTemplate>
	</asp:ListView>
	<br />
	<asp:Button ID="AddRolesItemButton" runat="server" CssClass="button" Text="Save Roles" OnClick="AddRolesItem_Click" />
</asp:Content>