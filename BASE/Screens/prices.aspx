<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="prices.aspx.cs" Inherits="BASE.Screens.prices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function ShowPipe() {
            document.getElementById("MainContent_divPipe").style.display = "block";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowValves() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "block";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowSteelFittings() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "block";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowVictaulic() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "block";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowNipplesHangers() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "block";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowCustomSpecials() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "block";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowHeads() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "block";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowDevices() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "block";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowPlasticFittings() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "block";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowFlangeMaterial() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "block";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowBackFlowPreventer() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "block";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowUndergroundMaterial() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "block";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "none";
        }
        function ShowGalvanizedVictaulic() {
            document.getElementById("MainContent_divPipe").style.display = "none";
            document.getElementById("MainContent_divValves").style.display = "none";
            document.getElementById("MainContent_divSteelFittings").style.display = "none";
            document.getElementById("MainContent_divVictaulic").style.display = "none";
            document.getElementById("MainContent_divNipplesHangers").style.display = "none";
            document.getElementById("MainContent_divCustomSpecials").style.display = "none";
            document.getElementById("MainContent_divHeads").style.display = "none";
            document.getElementById("MainContent_divDevices").style.display = "none";
            document.getElementById("MainContent_divPlasticFittings").style.display = "none";
            document.getElementById("MainContent_divFlangeMaterial").style.display = "none";
            document.getElementById("MainContent_divBackFlowPreventer").style.display = "none";
            document.getElementById("MainContent_divUndergroundMaterial").style.display = "none";
            document.getElementById("MainContent_divGalvanizedVictaulic").style.display = "block";
        }
    </script>

    <asp:UpdateProgress ID="prgLoadingStatus" runat="server" DynamicLayout="true">
        <ProgressTemplate>
            <div id="overlay" style="position: fixed;
                                    z-index: 99;
                                    top: 0px;
                                    left: 0px;
                                    background-color: #f8f8f8;
                                    width: 100%;
                                    height: 100%;
                                    filter: Alpha(Opacity=90);
                                    opacity: 0.9;
                                    -moz-opacity: 0.9;">
                <div id="modalprogress" style="position: absolute;
                                    top: 40%;
                                    left: 50%;
                                    margin: -11px 0 0 -150px;
                                    color: #990000;
                                    font-weight:bold;
                                    font-size:14px;">
                    <div id="theprogress" style="background-color: #fff;
                                                    border:1px solid #ccc;
                                                    padding:10px;
                                                    width: 300px;
                                                    height: 120px;
                                                    line-height:30px;
                                                    text-align: center;
                                                    filter: Alpha(Opacity=100);
                                                    opacity: 1;
                                                    -moz-opacity: 1;">
                        <asp:Image ID="imgWaitIcon" runat="server" ImageAlign="AbsMiddle" Width="100px" Height="100px"
                            ImageUrl="~/saving.gif" />
                    </div>
                </div>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress> 

    <asp:UpdatePanel ID="updAll" runat="server">
        <ContentTemplate>
            <ul id="css3menu1" class="topmenu">
	            <li class="switch"><label onclick="" for="css3menu-switcher"></label></li>
                <li class="topfirst"><a href="#" onclick="ShowPipe();" style="height:36px;line-height:18px;">Pipe</a></li>
                <li class="topmenu"><a href="#" onclick="ShowValves();" style="height:36px;line-height:18px;">Valves</a></li>
                <li class="topmenu"><a href="#" onclick="ShowSteelFittings();" style="height:36px;line-height:18px;">Steel Fittings</a></li>
                <li class="topmenu"><a href="#" onclick="ShowVictaulic();" style="height:36px;line-height:18px;">Victaulic</a></li>
                <li class="topmenu"><a href="#" onclick="ShowNipplesHangers();" style="height:36px;line-height:18px;">Nipples & Hangers</a></li>
                <li class="topmenu"><a href="#" onclick="ShowCustomSpecials();" style="height:36px;line-height:18px;">Custom Specials</a></li>
                <li class="topmenu"><a href="#" onclick="ShowHeads();" style="height:36px;line-height:18px;">Heads</a></li>
	            <li class="topmenu"><a href="#" onclick="ShowDevices();" style="height:36px;line-height:18px;">Devices</a></li>
                <li class="topmenu"><a href="#" onclick="ShowPlasticFittings();" style="height:36px;line-height:18px;">Plastic Fittings</a></li>
	            <li class="topmenu"><a href="#" onclick="ShowFlangeMaterial();" style="height:36px;line-height:18px;">Flange Material</a></li>
	            <li class="topmenu"><a href="#" onclick="ShowBackFlowPreventer();" style="height:36px;line-height:18px;">BackFlow Preventer</a></li>
	            <li class="topmenu"><a href="#" onclick="ShowUndergroundMaterial();" style="height:36px;line-height:18px;">Underground Material</a></li>
                <li class="topmenu"><a href="#" onclick="ShowGalvanizedVictaulic();" style="height:36px;line-height:18px;">Galvanized Victaulic</a></li>
                <li class="toplast"><a href="javascript:var win = window.open('', '_self');win.close();" style="height:36px;line-height:18px;">Exit</a></li>
            </ul>
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:UpdatePanel ID="upd" runat="server" >
        <ContentTemplate>
            <div runat="server" id="divPipe" style="overflow: scroll; height:600px;" >
                <asp:Panel ID="pnlPipe" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Pipe</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSavePipe" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSavePipe_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddPipe" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddPipe_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updPipe" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSavePipe" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddPipe" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstPipe" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeletePipe" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeletePipe_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <div runat="server" id="divValves" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlValves" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Valves</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveValves" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveValves_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddValves" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddValves_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updValves" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveValves" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddValves" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstValves" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeleteValves" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeleteValves_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <div runat="server" id="divSteelFittings" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlSteelFittings" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Steel Fittings</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveSteelFittings" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveSteelFittings_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddSteelFittings" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddSteelFittings_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updSteelFittings" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveSteelFittings" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddSteelFittings" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstSteelFittings" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeleteSteelFittings" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeleteSteelFittings_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <div runat="server" id="divVictaulic" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlVictaulic" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Victaulic</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveVictaulic" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveVictaulic_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddVictaulic" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddVictaulic_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updVictaulic" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveVictaulic" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddVictaulic" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstVictaulic" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeleteVictaulic" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeleteVictaulic_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>
                        
            <div runat="server" id="divNipplesHangers" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlNipplesHangers" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Nipples & Hangers</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveNipplesHangers" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveNipplesHangers_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddNipplesHangers" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddNipplesHangers_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updNipplesHangers" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveNipplesHangers" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddNipplesHangers" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstNipplesHangers" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeleteNipplesHangers" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeleteNipplesHangers_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <div runat="server" id="divCustomSpecials" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlCustomSpecials" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Custom Specials</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveCustomSpecials" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveCustomSpecials_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddCustomSpecials" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddCustomSpecials_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updCustomSpecials" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveCustomSpecials" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddCustomSpecials" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstCustomSpecials" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeleteCustomSpecials" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeleteCustomSpecials_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <div runat="server" id="divHeads" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlHeads" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Heads</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveHeads" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveHeads_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddHeads" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddHeads_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updHeads" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveHeads" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddHeads" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstHeads" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeleteHeads" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeleteHeads_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <div runat="server" id="divDevices" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlDevices" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Devices</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveDevices" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveDevices_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddDevices" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddDevices_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updDevices" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveDevices" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddDevices" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstDevices" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeleteDevices" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeleteDevices_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <div runat="server" id="divPlasticFittings" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlPlasticFittings" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Plastic Fittings</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSavePlasticFittings" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSavePlasticFittings_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddPlasticFittings" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddPlasticFittings_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updPlasticFittings" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSavePlasticFittings" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddPlasticFittings" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstPlasticFittings" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeletePlasticFittings" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeletePlasticFittings_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <div runat="server" id="divFlangeMaterial" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlFlangeMaterial" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Flange Material</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveFlangeMaterial" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveFlangeMaterial_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddFlangeMaterial" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddFlangeMaterial_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updFlangeMaterial" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveFlangeMaterial" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddFlangeMaterial" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstFlangeMaterial" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeleteFlangeMaterial" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeleteFlangeMaterial_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <div runat="server" id="divBackFlowPreventer" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlBackFlowPreventer" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>BackFlow Preventer</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveBackFlowPreventer" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveBackFlowPreventer_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddBackFlowPreventer" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddBackFlowPreventer_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updBackFlowPreventer" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveBackFlowPreventer" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddBackFlowPreventer" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstBackFlowPreventer" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeleteBackFlowPreventer" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeleteBackFlowPreventer_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <div runat="server" id="divUndergroundMaterial" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlUndergroundMaterial" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Underground Material</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveUndergroundMaterial" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveUndergroundMaterial_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddUndergroundMaterial" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddUndergroundMaterial_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updUndergroundMaterial" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveUndergroundMaterial" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddUndergroundMaterial" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstUndergroundMaterial" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeleteUndergroundMaterial" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeleteUndergroundMaterial_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <div runat="server" id="divGalvanizedVictaulic" style="overflow: scroll; height:600px;">
                <asp:Panel ID="pnlGalvanizedVictaulic" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Galvanized Victaulic</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveGalvanizedVictaulic" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveGalvanizedVictaulic_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddGalvanizedVictaulic" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddGalvanizedVictaulic_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updGalvanizedVictaulic" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveGalvanizedVictaulic" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddGalvanizedVictaulic" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lstGalvanizedVictaulic" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">        
	                            <LayoutTemplate>
                                    <div>
                                         <div ID="groupPlaceholder1" runat="server">
                                         </div>
                                    </div>
                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div style="clear:both">
                                        <div ID="itemPlaceholder1" runat="server">
 
                                        </div>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div style="float:left; padding-right:80px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" style="text-align:left" Width="160px" Text=<%# Eval("Name") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:TextBox ID="txtPrice" runat="server" style="text-align:right" Width="50px" Text=<%# Eval("Price") %>></asp:TextBox>  
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnDeleteGalvanizedVictaulic" runat="server" Text="Delete" CssClass="button" Width="60px" Height="30px" OnClick="btnDeleteGalvanizedVictaulic_Click" />
                                                </td>
                                                <td style="display:none"><asp:Literal ID="litID" runat="server" Text=<%# Eval("ID") %>></asp:Literal></td>
		                                    </tr>
                                        </table>
                                    </div>
	                            </ItemTemplate>
                                <GroupSeparatorTemplate>
                                    <div runat="server">
                                        <div style="clear:both"><hr /></div>
                                    </div>
                                </GroupSeparatorTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No prices found.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>