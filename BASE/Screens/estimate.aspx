<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="estimate.aspx.cs" Inherits="BASE.Screens.estimate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function ShowBranchAndLadderLines() {
            document.getElementById("MainContent_divBranchAndLadderLines").style.display = "block";
            document.getElementById("MainContent_divOtherThanStandardLines").style.display = "none";
            document.getElementById("MainContent_divCrossMain").style.display = "none";
            document.getElementById("MainContent_divSpecialsAndSprinklers").style.display = "none";
            document.getElementById("MainContent_divBulkMainFittingsAndValves").style.display = "none";
            document.getElementById("MainContent_divFDCAndAntiFreeze").style.display = "none";
            document.getElementById("MainContent_divEstPipeRequirements").style.display = "none";
        }
        function ShowOtherThanStandardLines() {
            document.getElementById("MainContent_divBranchAndLadderLines").style.display = "none";
            document.getElementById("MainContent_divOtherThanStandardLines").style.display = "block";
            document.getElementById("MainContent_divCrossMain").style.display = "none";
            document.getElementById("MainContent_divSpecialsAndSprinklers").style.display = "none";
            document.getElementById("MainContent_divBulkMainFittingsAndValves").style.display = "none";
            document.getElementById("MainContent_divFDCAndAntiFreeze").style.display = "none";
            document.getElementById("MainContent_divEstPipeRequirements").style.display = "none";
        }
        function ShowCrossMain() {
            document.getElementById("MainContent_divBranchAndLadderLines").style.display = "none";
            document.getElementById("MainContent_divOtherThanStandardLines").style.display = "none";
            document.getElementById("MainContent_divCrossMain").style.display = "block";
            document.getElementById("MainContent_divSpecialsAndSprinklers").style.display = "none";
            document.getElementById("MainContent_divBulkMainFittingsAndValves").style.display = "none";
            document.getElementById("MainContent_divFDCAndAntiFreeze").style.display = "none";
            document.getElementById("MainContent_divEstPipeRequirements").style.display = "none";
        }
        function ShowSpecialsAndSprinklers() {
            document.getElementById("MainContent_divBranchAndLadderLines").style.display = "none";
            document.getElementById("MainContent_divOtherThanStandardLines").style.display = "none";
            document.getElementById("MainContent_divCrossMain").style.display = "none";
            document.getElementById("MainContent_divSpecialsAndSprinklers").style.display = "block";
            document.getElementById("MainContent_divBulkMainFittingsAndValves").style.display = "none";
            document.getElementById("MainContent_divFDCAndAntiFreeze").style.display = "none";
            document.getElementById("MainContent_divEstPipeRequirements").style.display = "none";
        }
        function ShowBulkMainFittingsAndValves() {
            document.getElementById("MainContent_divBranchAndLadderLines").style.display = "none";
            document.getElementById("MainContent_divOtherThanStandardLines").style.display = "none";
            document.getElementById("MainContent_divCrossMain").style.display = "none";
            document.getElementById("MainContent_divSpecialsAndSprinklers").style.display = "none";
            document.getElementById("MainContent_divBulkMainFittingsAndValves").style.display = "block";
            document.getElementById("MainContent_divFDCAndAntiFreeze").style.display = "none";
            document.getElementById("MainContent_divEstPipeRequirements").style.display = "none";
        }
        function ShowFDCAndAntiFreeze() {
            document.getElementById("MainContent_divBranchAndLadderLines").style.display = "none";
            document.getElementById("MainContent_divOtherThanStandardLines").style.display = "none";
            document.getElementById("MainContent_divCrossMain").style.display = "none";
            document.getElementById("MainContent_divSpecialsAndSprinklers").style.display = "none";
            document.getElementById("MainContent_divBulkMainFittingsAndValves").style.display = "none";
            document.getElementById("MainContent_divFDCAndAntiFreeze").style.display = "block";
            document.getElementById("MainContent_divEstPipeRequirements").style.display = "none";
        }
        function ShowEstPipeRequirements() {
            document.getElementById("MainContent_divBranchAndLadderLines").style.display = "none";
            document.getElementById("MainContent_divOtherThanStandardLines").style.display = "none";
            document.getElementById("MainContent_divCrossMain").style.display = "none";
            document.getElementById("MainContent_divSpecialsAndSprinklers").style.display = "none";
            document.getElementById("MainContent_divBulkMainFittingsAndValves").style.display = "none";
            document.getElementById("MainContent_divFDCAndAntiFreeze").style.display = "none";
            document.getElementById("MainContent_divEstPipeRequirements").style.display = "block";
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
                <li class="topfirst"><a href="#" onclick="ShowBranchAndLadderLines();" style="height:36px;line-height:18px;">Branch & LadderLines</a></li>
                <li class="topmenu"><a href="#" onclick="ShowOtherThanStandardLines();" style="height:36px;line-height:18px;">Other Than Standard Lines</a></li>
                <li class="topmenu"><a href="#" onclick="ShowCrossMain();" style="height:36px;line-height:18px;">Cross Main</a></li>
                <li class="topmenu"><a href="#" onclick="ShowSpecialsAndSprinklers();" style="height:36px;line-height:18px;">Specials & Sprinklers</a></li>
                <li class="topmenu"><a href="#" onclick="ShowBulkMainFittingsAndValves();" style="height:36px;line-height:18px;">Bulk Main, Fittings & Valves</a></li>
                <li class="topmenu"><a href="#" onclick="ShowFDCAndAntiFreeze();" style="height:36px;line-height:18px;">FDC & Anti-Freeze</a></li>
                <li class="topmenu"><a href="#" onclick="ShowEstPipeRequirements();" style="height:36px;line-height:18px;">Est. Pipe Requirements</a></li>
	            <li class="toplast"><a href="javascript:var win = window.open('', '_self');win.close();" style="height:36px;line-height:18px;">Exit</a></li>
            </ul>
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:UpdatePanel ID="upd" runat="server" >
        <ContentTemplate>
            <div runat="server" id="divBranchAndLadderLines" style="overflow: scroll; height:600px;" >
                <asp:Panel ID="pnlBranchAndLadderLines" runat="server" Width="90%" >
                    <table style="width:100%">
                        <tr>
                            <td>
                                <h3>Branch & Ladder Lines</h3>
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnSaveBranchAndLadderLines" runat="server" Text="Save All" CssClass="button" Width="100px" Height="30px" OnClick="btnSaveBranchAndLadderLines_Click" />
                            </td>
                            <td style="float:right; margin-top:16px">
                                <asp:Button ID="btnAddBranchAndLadderLines" runat="server" Text="+ Add New" CssClass="button" Width="100px" Height="30px" OnClick="btnAddBranchAndLadderLines_Click" />
                            </td>
                        </tr>
                    </table>
                   
                    <asp:UpdatePanel ID="updBranchAndLadderLines" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnSaveBranchAndLadderLines" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnAddBranchAndLadderLines" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:ListView ID="lst" runat="server" OnPagePropertiesChanging="ItemListView_PagePropertiesChanging" OnItemDataBound="ItemListView_ItemDataBound">        
	                            <LayoutTemplate>
		                            <table style="width: 100%;">
		                            <tr class="table-header">
			                            <th style="width:15%;">Pipe:</th>
			                            <th style="width:15%;">#AS:</th>
                                        <th style="width:15%;">AS:</th>
			                            <th style="width:15%;">Feed:</th>
			                            <th style="width:15%;">C-C Dimension:</th>
			                            <th style="width:15%;"># Lines:</th>
			                            <th style="width:10%;">Cost:</th>
		                            </tr>
		                            <tr runat="server" id="itemPlaceholder" />
		                            </table>
	                            </LayoutTemplate>
	                            <ItemTemplate>
		                            <tr id="ItemTableRow" runat="server" class="table-row alt">
			                            <td><asp:Literal ID="" runat="server" /></td>
                                        <td><%# Eval("InPlaceName") %></td>
                                        <td><%# Eval("EquipmentType") %></td>
                                        <td><%# Eval("Status") %></td>
		                            </tr>
	                            </ItemTemplate>
	                            <AlternatingItemTemplate>
		                            <tr id="ItemTableRow" runat="server" class="table-row">
			                            <td><a href='<%# Urls.Maintenance.Dashboard.Mines.Equipment.Detail(MineID.ToString(), Eval("ID").ToString()) %>'><%# Eval("Name") %></a></td>
                                        <td><%# Eval("InPlaceName") %></td>
                                        <td><%# Eval("EquipmentType") %></td>
                                        <td><%# Eval("Status") %></td>
		                            </tr>
	                            </AlternatingItemTemplate>
	                            <EmptyDataTemplate>
		                            <table style="width: 100%; margin: 10px;">
		                                <tr>
			                                <tr><td>No equipment found with the selected criteria.</td></tr>
		                                </tr>
		                            </table>
	                            </EmptyDataTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>
            <div runat="server" id="divOtherThanStandardLines" style="overflow: scroll; height:600px;" >
            </div>
            <div runat="server" id="divCrossMain" style="overflow: scroll; height:600px;" >
            </div>
            <div runat="server" id="divSpecialsAndSprinklers" style="overflow: scroll; height:600px;" >
            </div>
            <div runat="server" id="divBulkMainFittingsAndValves" style="overflow: scroll; height:600px;" >
            </div>
            <div runat="server" id="divFDCAndAntiFreeze" style="overflow: scroll; height:600px;" >
            </div>
            <div runat="server" id="divEstPipeRequirements" style="overflow: scroll; height:600px;" >
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>