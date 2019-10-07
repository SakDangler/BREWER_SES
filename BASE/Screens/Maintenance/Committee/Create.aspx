<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="BASE.Screens.Maintenance.Committee.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <h3><asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    
    <div class="container">

        <h3>Create Committee</h3>

        <div class="row">
            <div class="col-md-3">
                <asp:Label Width="100" Text="Committee Name" runat="server" />
                <asp:TextBox ID="txtName" Width="200" runat="server" />

                <br />

                <asp:Label Width="500" Text="Description" runat="server" />
                <asp:TextBox ID="txtDescription" Width="200" runat="server" />
            </div>
        </div>

            <br />

        <div class="row">
            <div class="col-md-12">
                <asp:Button ID="btnSave" Text="Save" Width="125" runat="server" onclick="btnSave_Click" ValidationGroup="Create"/>
            </div>
        </div>

    </div>

</asp:Content>
