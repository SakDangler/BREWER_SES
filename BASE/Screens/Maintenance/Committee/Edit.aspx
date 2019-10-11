<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="BASE.Screens.Maintenance.Committee.Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    \

       <div class="container">

           <h3>Edit Committee</h3>

           <div class="row">
               <asp:Label Width="100" Text="Committee Name" runat="server" />
               <asp:TextBox ID="txtName" Width="200" runat="server" />
               <asp:RequiredFieldValidator ID="rfvName"
                   runat="server"
                   ControlToValidate="txtName"
                   ErrorMessage="Please enter a name." />
               <br />
               <br />

               <asp:Label Width="500" Text="Description" runat="server" />
               <asp:TextBox ID="txtDescription" Width="200" runat="server" />
               <asp:RequiredFieldValidator ID="rfvDescription"
                   runat="server"
                   ControlToValidate="txtDescription"
                   ErrorMessage="Please enter a description." />
           </div>

           <br />

           <div class="row">
               <div class="col-md-12">
                   <asp:CheckBox ID="chkDisabled" Text="Disabled" runat="server" />
               </div>
           </div>

           <br />

           <div class="row">
               <div class="col-md-12">
                   <asp:Button CssClass="button" ID="btnSave" Text="Save" Width="125" runat="server" OnClick="btnSave_Click" />
               </div>
           </div>

       </div>

</asp:Content>
