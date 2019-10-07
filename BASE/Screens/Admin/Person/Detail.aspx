<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BASE.Screens.Admin.Person.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="title-item">
        <h3>
            <asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    </div>


    <div class="container">

        <div class="row">

            <div class="col-md-6">
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
                        <h3>Roles</h3>
                        <div class="row" id="itemPlaceholder" runat="server">

                        </div>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <asp:Literal ID="Role" runat="server" /></td>   
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <asp:Literal ID="Role" runat="server" /></td>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        <p>No roles found for this person.</p>
                    </EmptyDataTemplate>
                </asp:ListView>
            </div>

        </div>

        <br />

        <div class="row">

            <div class="col-md-3">
                <asp:Button ID="UserRolesItemButton" runat="server" CssClass="button" OnClick="UserRolesItem_Click" />
            </div>

            <div class="col-md-3">
                <asp:Button ID="UpdateItemButton" runat="server" CssClass="button" OnClick="UpdateItem_Click" ValidationGroup="Update" />
            </div>
        </div>
    </div>
   
</asp:Content>
