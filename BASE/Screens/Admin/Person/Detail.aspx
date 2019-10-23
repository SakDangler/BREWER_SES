<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BASE.Screens.Admin.Person.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="title-item">
        <h3>
            <asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    </div>


    <div class="container">

        <div class="row">

            <div class="col-md-6" style="font-size:larger">
                <asp:Label runat="server" Width="150" Text="Email: " />
                <asp:Literal ID="EmailAddress" runat="server" />
                <br />
                <asp:Label runat="server" Width="150" Text="Network Identity: " />
                <asp:Literal ID="NetworkIdentity" runat="server" />
                <br />
                <asp:Label runat="server" Width="150" Text="Network Password: " />
                <asp:Literal ID="NetworkPassword" runat="server" />
                <br />
                <asp:Label runat="server" Width="150" Text="Employee: " />
                <asp:Literal ID="Employee" runat="server" />
                <br />
                <asp:Label runat="server" Width="150" Text="Admin: " />
                <asp:Literal ID="Admin" runat="server" />
                <br />
                <asp:Label runat="server" Width="150" Text="Disabled: " />
                <asp:Literal ID="Disabled" runat="server" />
                <br />
            </div>

            <div class="col-md-6">
                <asp:ListView ID="ItemListView" runat="server" OnItemDataBound="ItemListView_ItemDataBound">
                    <LayoutTemplate>
		                <table style="width: 100%;">
		                <tr class="table-header">
			                <th style="width:100%;">Roles:</th>
		                </tr>
                        <tr runat="server" id="itemPlaceholder" />
		                </table>
	                </LayoutTemplate>
                    <ItemTemplate>
		                <tr id="ItemTableRow" runat="server" class="table-row alt">
			                <td><asp:Literal ID="Role" runat="server" /></td>
		                </tr>
	                </ItemTemplate>
                    <AlternatingItemTemplate>
                        <tr id="ItemTableRow" runat="server" class="table-row">
			                <td><asp:Literal ID="Role" runat="server" /></td>
		                </tr>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        <p>No roles found for this person.</p>
                    </EmptyDataTemplate>
                </asp:ListView>
                <br />
                <br />
                <asp:Button ID="UserRolesItemButton" runat="server" CssClass="button" OnClick="UserRolesItem_Click" Width="150" />
            </div>

        </div>

        <br />

        <div class="row">
            <div class="col-md-12">
                <asp:Button ID="UpdateItemButton" runat="server" CssClass="button" OnClick="UpdateItem_Click" ValidationGroup="Update" Width="150" />
                <asp:Button ID="CancelButton" runat="server" CssClass="button" Text="Cancel" OnClick="Cancel_Click" Width="150" />
            </div>
        </div>
    </div>
</asp:Content>
