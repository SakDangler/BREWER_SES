<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BASE.Screens.Maintenance.Admin.Committee.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Committee Details</h3>

    <div class="container">

        <div class="col-md-12">

            <asp:Label Width="100" Text="Name: " runat="server" />
            <asp:Label Width="250" ID="lblName" runat="server" />

            <br />

            <asp:Label Width="100" Text="Description: " runat="server" />
            <asp:Label Width="250" ID="lblDescription" runat="server" />

       </div>

        <div class="row">
            <div class="col-md-12">
                <asp:Button ID="btnEdit" Text="Edit Committee" Width="150" runat="server" OnClick="btnEdit_Click" />
            </div>
        </div>

    </div>

</asp:Content>
