<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="BASE.Screens.Admin.Role.List" %>
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
		    <table style="width: 60%;">
			<tr class="table-header">
				<th>Role(s):</th>
			</tr>
			<tr runat="server" id="itemPlaceholder" />
		    </table>
		</LayoutTemplate>
		<ItemTemplate>
			<tr id="ItemTableRow" runat="server" class="table-row alt">
                <td><asp:HyperLink ID="RoleName" runat="server" /></td>
                <td style="display:none"><asp:Literal ID="ID" runat="server" /></td>
			</tr>
		</ItemTemplate>
		<AlternatingItemTemplate>
			<tr id="ItemTableRow" runat="server" class="table-row">
                <td><asp:HyperLink ID="RoleName" runat="server" /></td>
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
</asp:Content>