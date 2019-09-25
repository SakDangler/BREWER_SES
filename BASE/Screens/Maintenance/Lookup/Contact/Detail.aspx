<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BASE.Screens.Maintenance.Lookup.Contact.Detail" %>
<asp:content id="Content1" contentplaceholderid="MainContent" runat="server">
   <h3><asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    
    <div class="container">

        <div class="row">

            <h3>Contact Information</h3>

            <br />

            <div class="col-md-6">

                <asp:Label runat="server" Width="100" Text="First Name" />
                <asp:Label id="lblFirstName" Width="150" runat="server" />

                <br /><br />

                <asp:Label runat="server" Width="100" Text="Primary Phone" />
                <asp:Label id="lblPrimaryPhone" Width="150" runat="server" />

                <br /><br />

                <asp:Label runat="server" Width="100" Text="Email" />
                <asp:Label id="lblEmail" Width="150" runat="server" />

            </div>

            <div class="col-md-6">

                <asp:Label runat="server" Width="200" Text="Last Name" />
                <asp:Label id="lblLastName" Width="150" runat="server" />

                <br /><br />

                <asp:Label runat="server" Width="200" Text="Secondary Phone"/>
                <asp:Label id="lblSecondaryPhone" Width="150" runat="server" />

                <br /><br />

                <asp:Label runat="server" Width="200" Text="Member Number"/>
                <asp:Label id="lblMemberNumber" Width="150" runat="server" />
            </div>

        </div>

        <br />

        <div class="row">

            <div class="col-md-4">
                <asp:Label runat="server" Text="Regional HS" />
                <asp:Checkbox ID="chkRegional" runat="server" Enabled="false" />
            </div>

            <div class="col-md-4">
                <asp:Label runat="server" Text="National HS" />
                <asp:Checkbox ID="chkNational" runat="server" Enabled="false" />
            </div>

            <div class="col-md-4">
                <asp:Label runat="server" Text="Disabled" />
                <asp:Checkbox ID="chkDisabled" runat="server" Enabled="false" />
            </div>

        </div>
        
        <br />

        <div class="row">

            <div class="col-md-6">
                <asp:Button ID="btnEdit" Text="Edit" Width="125" runat="server" OnClick="btnEdit_Click"/>
            </div>

        </div>

    </div>
</asp:content>