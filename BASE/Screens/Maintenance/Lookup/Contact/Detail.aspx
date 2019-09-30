<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BASE.Screens.Maintenance.Lookup.Contact.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        <asp:Literal ID="FormTitleLiteral" runat="server" /></h3>

    <div class="container">

        <div class="row">

            <h3>Contact Information</h3>

            <br />

            <div class="col-md-6">

                <asp:Label runat="server" Width="100" Text="First Name: " Font-Bold="true" />
                <asp:Label ID="lblFirstName" Width="150" runat="server" />

                <br />
                <br />

                <asp:Label runat="server" Width="100" Text="Primary Phone: " Font-Bold="true" />
                <asp:Label ID="lblPrimaryPhone" Width="150" runat="server" />

                <br />
                <br />

                <asp:Label runat="server" Width="100" Text="Email: " />
                <asp:Label ID="lblEmail" Width="150" runat="server" />

            </div>

            <div class="col-md-6">

                <asp:Label runat="server" Width="200" Text="Last Name: " Font-Bold="true" />
                <asp:Label ID="lblLastName" Width="150" runat="server" />

                <br />
                <br />

                <asp:Label runat="server" Width="200" Text="Secondary Phone: " Font-Bold="true" />
                <asp:Label ID="lblSecondaryPhone" Width="150" runat="server" />

                <br />
                <br />

                <asp:Label runat="server" Width="200" Text="Member Number: " Font-Bold="true" />
                <asp:Label ID="lblMemberNumber" Width="150" runat="server" />
            </div>

        </div>

        <br /><hr /><br />

        <div class="row">

            <div class="col-md-4">
                <asp:Label runat="server" Text="Regional HS" Font-Bold="true" />
                <asp:CheckBox ID="chkRegional" runat="server" Enabled="false" />
            </div>

            <div class="col-md-4">
                <asp:Label runat="server" Text="National HS" Font-Bold="true" />
                <asp:CheckBox ID="chkNational" runat="server" Enabled="false" />
            </div>

            <div class="col-md-4">
                <asp:Label runat="server" Text="Disabled" Font-Bold="true" />
                <asp:CheckBox ID="chkDisabled" runat="server" Enabled="false" />
            </div>

        </div>

        <br /><hr /><br />

        <div class="row">
            
            <div class="col-md-6">
                <asp:Label Width="100" Text="Grantee: " runat="server" Font-Bold="true" />
            <asp:Label ID="lblGrantee" runat="server" Width="200" />
            </div>

            <div class="col-md-6">
                <asp:Repeater ID="CommitteeList" runat="server">

                    <HeaderTemplate>
                        <h4>Committee(s)</h4>
                        <table>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Name") %> </td>
                        </tr>
                    </ItemTemplate>

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>

                </asp:Repeater>
            </div>
        </div>

        <br />

        <div class="row">

            <div class="col-md-6">
                <asp:Button ID="btnEdit" Text="Edit" Width="125" runat="server" OnClick="btnEdit_Click" />
            </div>

            <div class="col-md-6">
                <asp:Button ID="btnCommittee" runat="server" Width="250" Text="Manage Committees" OnClick="btnCommittee_Click" />
            </div>

        </div>

    </div>
</asp:Content>
