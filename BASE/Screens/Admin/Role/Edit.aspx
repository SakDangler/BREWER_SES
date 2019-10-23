<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="BASE.Screens.Admin.Role.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3><asp:Literal ID="FormTitleLiteral" runat="server" /></h3>

    <div style="background-color:lightcoral; font-size:large; color:white; font-weight:bold; width:50%;">
        <asp:ValidationSummary ID="CreateItemValidationSummary" runat="server" CssClass="error" ValidationGroup="Update" HeaderText="Error:" />
	    <asp:Panel ID="ModelValidationSummary" runat="server" Visible="false" CssClass="error" BackColor="LightPink">
		    <asp:ListView ID="ValidationErrors" runat="server">
			    <LayoutTemplate>
				    <ul>
					    <li id="itemPlaceholder" runat="server" />
				    </ul>
			    </LayoutTemplate>
			    <ItemTemplate>
				    <li><%# Container.DataItem %></li>
			    </ItemTemplate>
		    </asp:ListView>
	    </asp:Panel>
    </div>

    <br />

    <table>
        <tr>
            <td>
                <asp:Label ID="NameLabel" runat="server" Text="* Name" AssociatedControlID="Name" Width="150" />
                <asp:TextBox ID="Name" runat="server" CssClass="textbox" Width="300" MaxLength="64" ValidationGroup="Update" />
			    <asp:RequiredFieldValidator ID="NameRequired" runat="server" ControlToValidate="Name" CssClass="error-message" Display="None" ValidationGroup="Update" ErrorMessage="Name is required." />
            </td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td>
                <asp:Button ID="SaveRolesItemButton" runat="server" CssClass="button" Text="Save Role" OnClick="SaveRolesItem_Click" Width="150" />
            </td>
            <td style="padding-left:10px">
                <asp:Button ID="CancelButton" runat="server" CssClass="button" Text="Cancel" OnClick="Cancel_Click" Width="150" />
            </td>
        </tr>
    </table>
</asp:Content>