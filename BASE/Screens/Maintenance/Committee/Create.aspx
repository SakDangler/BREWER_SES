<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="BASE.Screens.Maintenance.Committee.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <h3><asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    

        <br />

        <div class="row">
            <div class="col-md-3">
                <asp:Label Width="100" Text="Committee Name" runat="server" />
                <asp:TextBox ID="txtName" Width="200" runat="server" />
                <asp:RequiredFieldValidator ID="rfvName"
                   runat="server"
                   ControlToValidate="txtName"
                   ErrorMessage="Please enter a name." />
                <br />

                <asp:Label Width="500" Text="Description" runat="server" />
                <asp:TextBox ID="txtDescription" Width="200" runat="server" />
                <asp:RequiredFieldValidator ID="rfvDescription"
                   runat="server"
                   ControlToValidate="txtDescription"
                   ErrorMessage="Please enter a description." />
            </div>
        </div>

            <br />

        <div class="row">
            <div class="col-md-12">
                <asp:Button ID="CreateItemButton" runat="server" CssClass="button" OnClick="CreateItem_Click" ValidationGroup="Create" Width="150" />

                <asp:Button ID="CancelButton" runat="server" CssClass="button" Text="Cancel" OnClick="Cancel_Click" Width="150" />
            </div>
        </div>

</asp:Content>
