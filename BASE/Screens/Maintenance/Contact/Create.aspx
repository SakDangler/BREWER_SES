<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="BASE.Screens.Maintenance.Contact.Create" %>
<asp:content id="Content1" contentplaceholderid="MainContent" runat="server">
   <h3><asp:Literal ID="FormTitleLiteral" runat="server" /></h3>
    
    <div class="container">

        <div class="row">

            <h3>Contact Information</h3>

            <br />

            <div class="col-md-6">

                <asp:Label runat="server" Width="100" Text="First Name" />
                <asp:TextBox id="txtFirstName" Width="150" runat="server" />

                <br /><br />

                <asp:Label runat="server" Width="100" Text="Primary Phone" Placeholder="8885551234" />
                <asp:TextBox id="txtPrimaryPhone" Width="150" runat="server" />

                <br /><br />

                <asp:Label runat="server" Width="100" Text="Email" Placeholder="yourname@email.com" />
                <asp:TextBox id="txtEmail" Width="150" runat="server" />

            </div>

            <div class="col-md-6">

                <asp:Label runat="server" Width="200" Text="Last Name" />
                <asp:TextBox id="txtLastName" Width="150" runat="server" />

                <br /><br />

                <asp:Label runat="server" Width="200" Text="Secondary Phone" Placeholder="8885551234" />
                <asp:TextBox id="txtSecondaryPhone" Width="150" runat="server" />

                <br /><br />

                <asp:Label runat="server" Width="200" Text="Member Number"/>
                <asp:TextBox id="txtMemberNumber" Width="150" runat="server" />
            </div>

        </div>

        <br />

        <div class="row">

            <div class="col-md-4">
                <asp:Label runat="server" Text="Regional HS" />
                <asp:Checkbox ID="chkRegional" runat="server" />
            </div>

            <div class="col-md-4">
                <asp:Label runat="server" Text="National HS" />
                <asp:Checkbox ID="chkNational" runat="server" />
            </div>

            <div class="col-md-4">
                <asp:Label runat="server" Text="Disabled" />
                <asp:Checkbox ID="chkDisabled" runat="server" />
            </div>

        </div>
        
        <br />

        <div class="row">

            <div class="col-md-6">
                <asp:Button cssClass="button" ID="btnSave" Text="Save" Width="125" runat="server" onclick="btnSave_Click" ValidationGroup="Create"/>
            </div>

        </div>

    </div>
</asp:content>
