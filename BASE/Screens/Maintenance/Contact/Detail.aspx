<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BASE.Screens.Maintenance.Contact.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Contact Information</h3>
    <br />
    <div class="container">

        <div class="row">
            <div class="col-md-6" style="font-size: larger">

                <asp:Label runat="server" Width="150" Text="First Name: " />
                <asp:Label ID="lblFirstName" Width="150" runat="server" />

                <br />
                <br />

                <asp:Label runat="server" Width="150" Text="Primary Phone: " />
                <asp:Label ID="lblPrimaryPhone" Width="150" runat="server" />

                <br />
                <br />

                <asp:Label runat="server" Width="150" Text="Email: " />
                <asp:Label ID="lblEmail" Width="150" runat="server" />

            </div>

            <div class="col-md-6" style="font-size: larger">

                <asp:Label runat="server" Width="200" Text="Last Name: " />
                <asp:Label ID="lblLastName" Width="150" runat="server" />

                <br />
                <br />

                <asp:Label runat="server" Width="200" Text="Secondary Phone: " />
                <asp:Label ID="lblSecondaryPhone" Width="150" runat="server" />

                <br />
                <br />

                <asp:Label runat="server" Width="200" Text="Member Number: " />
                <asp:Label ID="lblMemberNumber" Width="150" runat="server" />
            </div>

        </div>

        <br /><hr /><br />

        <div class="row">

            <div class="col-md-4" style="font-size: larger">
                <asp:Label runat="server" Text="Regional HS" />
                <asp:CheckBox ID="chkRegional" runat="server" Enabled="false" />
            </div>

            <div class="col-md-4" style="font-size: larger">
                <asp:Label runat="server" Text="National HS" />
                <asp:CheckBox ID="chkNational" runat="server" Enabled="false" />
            </div>

            <div class="col-md-4" style="font-size: larger">
                <asp:Label runat="server" Text="Disabled" />
                <asp:CheckBox ID="chkDisabled" runat="server" Enabled="false" />
            </div>

        </div>

        <br /><hr /><br />

        <div class="row">
            
            <div class="col-md-6" style="font-size: larger">
                <asp:Label Width="100" Text="Grantee: " runat="server" />
            <asp:Label ID="lblGrantee" runat="server" Width="200" />
            </div>

            <div class="col-md-6" style="font-size: larger">
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
                <asp:Button cssClass="button" ID="btnEdit" Text="Edit" Width="125" runat="server" OnClick="btnEdit_Click" />
            </div>

            <div class="col-md-6">
                <asp:Button cssClass="button" ID="btnCommittee" runat="server" Width="250" Text="Manage Committees" OnClick="btnCommittee_Click" />
            </div>

        </div>

    </div>
</asp:Content>
