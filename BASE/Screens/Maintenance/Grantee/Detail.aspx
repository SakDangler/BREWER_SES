<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BASE.Screens.Maintenance.Grantee.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Grantee Details</h3>

    <div class="container">

        <div class="row">
            <div class="col-md-12" style="font-size:larger">
                <asp:Label Width="100" Text="Name: " runat="server" />
                <asp:Label Width="250" ID="lblName" runat="server" />
                <br />
                <asp:Label Width="100" Text="Address: " runat="server" />
                <asp:Label Width="250" ID="lblAddress" runat="server" />
                <br />
                <asp:Label Width="100" Text="Address 2: " runat="server" />
                <asp:Label Width="250" ID="lblAddress2" runat="server" />
                <br />
                <asp:Label Width="100" Text="City: " runat="server" />
                <asp:Label Width="150" ID="lblCity" runat="server" />
                <br />
                <asp:Label Width="100" Text="State: " runat="server" />
                <asp:Label Width="100" ID="lblState" runat="server" />
                <br />
                <asp:Label Width="100" Text="Zip: " runat="server" />
                <asp:Label Width="100" ID="lblZip" runat="server" />
                <br />
                <br />
                <asp:CheckBox Enabled="false" ID="chkDisabled" runat="server" Text="Disabled" />
                <br />
            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-md-12">
                <asp:Button CssClass="button" ID="btnEdit" Text="Edit Grantee" Width="150" runat="server" OnClick="btnEdit_Click" />
            </div>
        </div>

    </div>

</asp:Content>
