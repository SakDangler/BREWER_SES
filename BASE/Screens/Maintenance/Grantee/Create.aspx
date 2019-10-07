﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="BASE.Screens.Maintenance.Grantee.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <h3><asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    
    <div class="container">

        <h3>Create Grantee</h3>

        <div class="row">
            <div class="col-md-3">
                <asp:Label Width="100" Text="Grantee Name" runat="server" />
                <asp:TextBox ID="txtName" Width="200" runat="server" />
            </div>
        </div>

            <br />

        <div class="row">
            <div class="col-md-4">
                <asp:Label Width="100" Text="Address 1" runat="server" />
                <asp:TextBox ID="txtAddress" Width="350" runat="server" />
            </div>
            <div class="col-md-4">
                <asp:Label Width="100" Text="Address 2" runat="server" />
                <asp:TextBox ID="txtAddress2" Width="350" runat="server" />
            </div>
        </div>

            <br />

        <div class="row">
            <div class="col-md-2">
                <asp:Label Width="100" Text="City" runat="server" />
                <asp:TextBox ID="txtCity" Width="150" runat="server" />
            </div>
            <div class="col-md-2">
                <asp:Label Width="100" Text="State" runat="server" />
                <asp:TextBox ID="txtState" Width="150" runat="server" />
            </div>
            <div class="col-md-2">
                <asp:Label Width="100" Text="Zip" runat="server" />
                <asp:TextBox ID="txtZip" Width="150" runat="server" />
            </div>
        </div>

            <br />

        <div class="row">
            <div class="col-md-12">
                <asp:Checkbox ID="chkDisabled" Text="Disabled" runat="server" />
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