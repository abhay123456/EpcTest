 <%--First Final Version 24March fri,4.28PM --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddEBS.aspx.cs" EnableEventValidation="false" Inherits="AddEBS" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.Web" Assembly="DevExpress.Web.v15.1" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.Web.ASPxTreeList" Assembly="DevExpress.Web.ASPxTreeList.v15.1" %>

--comment by abhay----
--comment by Rajiv patel
--comment by abh888
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <script type="text/javascript" src="js/AddEbs.js?ver<%=DateTime.Now.Ticks.ToString()%>"></script><link rel="stylesheet" href="css/addEBS.css?ver<%=DateTime.Now.Ticks.ToString()%>" /><style>
      

        .form-control {
            margin-bottom: 10px;
        }

        .modal-body {
            padding-bottom: 20px;
        }

        body {
            font-size: medium;
        }

      
    </style><div class="toolbar" id="toolboxDiv">
        <table>
            <tr>
               <%-- <td  style="width:16.66%;"><a href="#" id="add" class="toolbar-item">
                    <img src="images/plus5.png" alt="Add" height="20px" width="20px" title="Add EBS" /></a>  </td>--%>
                   <td>
                       <input type="button" value="Add EBS" id="add" title="Add EBS" class="toolbar-item" style="outline:0;font-size:15px"  />

                   </td>

                <td><a href="#" id="move_left" class="toolbar-item">
                    <img src="images/left3.png" alt="Move Left" height="20px" width="20px" title="Move Left" /></a> </td>

              
                <td><a href="#" id="move_right" class="toolbar-item">
                    <img src="images/right3.png" alt="Move Right" height="20px" width="20px" title="Move Right" /></a></td>
                <td><a href="#" id="move_up" class="toolbar-item">
                    <img src="images/uparrow2.png" alt="Move Up" height="20px" width="20px" title="Move Up" /></a> </td>
                <td><a href="#" id="move_down" class="toolbar-item">
                    <img src="images/down3.png" alt="Move Down" height="20px" width="20px" title="Move Down" /></a> </td>
                <td>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/Excel.png" OnClick="btnExportToXls_Click" Height="20px" Width="20px" ToolTip="Excel" /></td>
                 <td>
                   
                  
                   
<asp:Button ID="btnImport" runat="server" Text="Import Data"  OnClientClick="showpopupimport(); return false;"    style="margin-left:20px" />

                </td>   
            </tr>
            <a href="#" id="delete" class="toolbar-Deleteitem" style="float: right;">
                <img src="images/remove.png" alt="delete" height="20px" width="20px" style="float: right" title="Delete EBS" /></a>
        </table>
    </div>


    <dx:ASPxCallbackPanel ID="ASPxCallbackPanel2" runat="server" BackColor="white" ClientInstanceName="callbackPanel2" OnCallback="ASPxCallbackPanel2_Callback1" ClientIDMode="Static">
        <PanelCollection>
            <dx:PanelContent ID="PanelContent2" runat="server">

                <dx:ASPxTreeList ID="treeList" runat="server" AutoGenerateColumns="false"  KeyFieldName="EBSID" ParentFieldName="ParentID" DataSourceID="SqlDataSourceForTreeList" Width="100%" Border-BorderStyle="Solid" Font-Names="Cambria" OnHtmlRowPrepared="treeList_HtmlRowPrepared" ClientInstanceName="treeList" ClientIDMode="Static">
                    <Columns>

                    <%--    <dx:TreeListTextColumn FieldName="EBSID" Caption="EBS ID" Width="40px" ShowInCustomizationForm="True" HeaderStyle-Font-Bold="true" CellStyle-Wrap="True">
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight"></HeaderStyle>
                        </dx:TreeListTextColumn>--%>

                        <dx:TreeListTextColumn FieldName="EBSName" Caption="EBS Name" Width="250px" ShowInCustomizationForm="True" HeaderStyle-Font-Bold="true" AllowSort="False">
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight"></HeaderStyle>
                        </dx:TreeListTextColumn>

                        <dx:TreeListTextColumn FieldName="TotalValue" Caption="Total Drawings" Width="80px" ShowInCustomizationForm="True" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Right"  AllowSort="False">
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True" HorizontalAlign="Center"></HeaderStyle>
                            <DataCellTemplate>
                                <%#Eval("TotalValue").ToString() == "0"? " " : Eval("TotalValue").ToString() %>
                            </DataCellTemplate>
                        </dx:TreeListTextColumn>

                       

                        <dx:TreeListTextColumn FieldName="DrawingSubmitted" Caption="Drawings Submitted" Width="100px" ShowInCustomizationForm="True" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Right" AllowSort="False" >
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True" HorizontalAlign="Center"></HeaderStyle>

                            <DataCellTemplate>
                                <%#Eval("DrawingSubmitted").ToString() == "0"? " " : Eval("DrawingSubmitted").ToString() %>
                            </DataCellTemplate>
                        </dx:TreeListTextColumn>

                        <dx:TreeListTextColumn FieldName="Approved_Status" Caption="Approved" Width="80px" ShowInCustomizationForm="True" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Right" AllowSort="False">
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True" HorizontalAlign="Center"></HeaderStyle>

                            <DataCellTemplate>
                                <%#Eval("Approved_Status").ToString() == "0"? " " : Eval("Approved_Status").ToString() %>
                            </DataCellTemplate>
                        </dx:TreeListTextColumn>

                        <dx:TreeListTextColumn FieldName="ApprovedwithComments_Status" Caption="Approved With Comments"  Width="150px" ShowInCustomizationForm="True" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Right" AllowSort="False">
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True" HorizontalAlign="Center"></HeaderStyle>
                            <DataCellTemplate>
                                <%#Eval("ApprovedwithComments_Status").ToString() == "0"? " " : Eval("ApprovedwithComments_Status").ToString() %>
                            </DataCellTemplate>
                        </dx:TreeListTextColumn>

                        <dx:TreeListTextColumn FieldName="ReviseandResubmit_Status" Caption="Revise and Resubmit" Width="120px" ShowInCustomizationForm="True" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Right" AllowSort="False"  >
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True" HorizontalAlign="Center"></HeaderStyle>
                            <DataCellTemplate>
                                <%#Eval("ReviseandResubmit_Status").ToString() == "0"? " " : Eval("ReviseandResubmit_Status").ToString() %>
                            </DataCellTemplate>
                        </dx:TreeListTextColumn>

                        <dx:TreeListTextColumn FieldName="Rejected_Status" Caption="Rejected" Width="80px" ShowInCustomizationForm="True" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Right" AllowSort="False">
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True" HorizontalAlign="Center"></HeaderStyle>
                            <DataCellTemplate>
                                <%#Eval("Rejected_Status").ToString() == "0"? " " : Eval("Rejected_Status").ToString() %>
                            </DataCellTemplate>
                        </dx:TreeListTextColumn>

                        <dx:TreeListTextColumn FieldName="NotSubmitted" Caption="Not Yet Submitted" Width="80px" ShowInCustomizationForm="True" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Right" AllowSort="False">
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True" HorizontalAlign="Center"></HeaderStyle>
                            <DataCellTemplate>
                                <%#Eval("NotSubmitted").ToString() == "0"? " " : Eval("NotSubmitted").ToString() %>
                            </DataCellTemplate>
                        </dx:TreeListTextColumn>

                        <dx:TreeListTextColumn FieldName="PercentComplete" Caption="Percent Complete" HeaderStyle-Wrap="True" ShowInCustomizationForm="True" Width="80px" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Right" AllowSort="False" >
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" HorizontalAlign="Center"></HeaderStyle>

                        </dx:TreeListTextColumn>

                        <dx:TreeListDateTimeColumn FieldName="ResponsibleManager" Caption="Manager" HeaderStyle-Wrap="True" ShowInCustomizationForm="True" Width="248px" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Left" AllowSort="False">
                            <HeaderStyle Font-Bold="True" HorizontalAlign="Center"></HeaderStyle>
                        </dx:TreeListDateTimeColumn>

                        <%-- <dx:TreeListDateTimeColumn FieldName="ResponsibleContractorSubmissionBy" Caption="Submission By" ShowInCustomizationForm="True" Width="110px" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Left" AllowSort="False" >
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True" HorizontalAlign="Center"></HeaderStyle>

                        </dx:TreeListDateTimeColumn>

                        <dx:TreeListDateTimeColumn FieldName="ResponsibleContractorFirstReview" Caption="First Review By" ShowInCustomizationForm="True" Width="130px" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Left" AllowSort="False">
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True" HorizontalAlign="Center"></HeaderStyle>

                        </dx:TreeListDateTimeColumn>

                        <dx:TreeListDateTimeColumn FieldName="ResponsibleContractorSecondReview" Caption="Second Review By" ShowInCustomizationForm="True" Width="130px" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Left" AllowSort="False">
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True" HorizontalAlign="Center"></HeaderStyle>

                        </dx:TreeListDateTimeColumn>

                        <dx:TreeListDateTimeColumn FieldName="ResponsibleContractorThirdReview" Caption="Third Review By" ShowInCustomizationForm="True" Width="130px" HeaderStyle-Font-Bold="true" CellStyle-HorizontalAlign="Left" AllowSort="False">
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True" HorizontalAlign="Center"></HeaderStyle>

                        </dx:TreeListDateTimeColumn>--%>
                        
                        <%-- <dx:TreeListDateTimeColumn FieldName="IssuedDrawing" Caption="Issued Drawing To" ShowInCustomizationForm="True" Width="130px" HeaderStyle-Font-Bold="true">
                            <HeaderStyle Font-Bold="True" CssClass="IncreaseHeight" Wrap="True"></HeaderStyle>
                            <HeaderStyle Font-Bold="True"></HeaderStyle>
                        </dx:TreeListDateTimeColumn>--%>
                    </Columns>

<%--                    <ClientSideEvents Init="OnInit" EndCallback="OnEndCallback" />--%>
                       <ClientSideEvents Init="OnInit"  />
                    <Settings GridLines="Vertical" SuppressOuterGridLines="true" VerticalScrollBarMode="Visible" HorizontalScrollBarMode="Visible" />

                    <SettingsBehavior AllowFocusedNode="true" FocusNodeOnLoad="false" ColumnResizeMode="Control" />
                    <Images>
                        <CollapsedButton Height="15px" Width="15px">
                        </CollapsedButton>
                        <ExpandedButton Height="15px" Width="15px">
                        </ExpandedButton>
                    </Images>
                    <Styles>
                        <FocusedNode BackColor="#C0FFC0" ForeColor="Black"></FocusedNode>
                    </Styles>


                    <ClientSideEvents FocusedNodeChanged="OnFocusedNodeChange" NodeDblClick="showPopupfortreelist"  NodeCollapsing="OnNodeCollapsing" NodeExpanding="OnNodeExpanding" />


                    <%--                    <Border BorderStyle="Solid"></Border>--%>
                </dx:ASPxTreeList>
                <dx:ASPxTreeListExporter ID="treeListExporter" runat="server" TreeListID="treeList" />


                       <asp:SqlDataSource ID="SqlDataSourceForTreeList" runat="server" ConnectionString="<%$ ConnectionStrings:ODOConnectionString2 %>" SelectCommand="[usp_EBSLoad]" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:SessionParameter DefaultValue="0" Name="ProjectID" SessionField="project_id" Type="Int32" />
                                                    <asp:SessionParameter DefaultValue="0" Name="UserID" SessionField="UserID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>


            </dx:PanelContent>
        </PanelCollection>
<%--        <ClientSideEvents EndCallback="callbackResultTreeList" />--%>
          <ClientSideEvents EndCallback="GetcallbackResult" />
    </dx:ASPxCallbackPanel>






    <%--    -------------------------------------------------------------------------------1Part------------------------------------------------------------------------------%>
 

       <div class="container">  <%-------------------------------------------------------------------- Double click PopUP--------------------------------------------------------------------------%>
        <div class="modal fade" id="updateProject" role="dialog">
            <div class="modal-dialog" style="margin-top: 15%; width: 25%">
                <div class="modal-content">
                    <div class="modal-header bg-primary" style="height: 30px">
                        <button id="a1333" type="button" class="close" data-dismiss="modal" style="opacity: .8; margin-top: -12px">&times;</button>
                        <h4 class="modal-title" style="margin-top: -12px">EBS Properties</h4>
                    </div>


                    <div class="modal-body">

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">

                            <li class="active"><a href="#GeneralInformation" role="tab" data-toggle="tab">EBS Properties</a>
                            </li>
                        <%--    <li>
                                <a href="#EngineeringSettings" role="tab" data-toggle="tab" id="LoadWorkFlow">Work Flow</a>
                            </li>--%>
                          
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="GeneralInformation">
                                <div style="height:10px"></div>
                                <table id="Table1Project" class="tabContent">
                                    <tr>

                                        <td>
                                            <label for="txtProjectCodeModelPopup" class="control-label">EBS Name </label>
                                        </td>

                                        <td>
                                            <input type="text" class="form-control" id="textEbsName" maxlength="150" clientidmode="Static" onfocusout="EbsNameFocusOut()"/>

                                        </td>

                                     

                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="txtProjectNameModelPopup" class="control-label">Manager </label>
                                        </td>
                                        <td>
                                          
                                  
                                             <asp:DropDownList ID="ddlResponsibleManager" runat="server" ClientIDMode="Static" CssClass="form-control selectOption">
                                </asp:DropDownList>
                                  
                          
                                        </td>
                                    </tr>                             
                                    <tr>
                                        <td>
                                            <label for="txtdocumentcontroller" runat="server" id="lbldc" class="control-label">Document Controller </label>
                                        </td>
                                        <td>
                                          
                                  
                                             <asp:DropDownList ID="ddldocumentcontroller" runat="server" ClientIDMode="Static" CssClass="form-control selectOption">
                                </asp:DropDownList>
                                  
                          
                                        </td>
                                    </tr>         
                                </table>
                            </div>
                            <div class="tab-pane fade" id="EngineeringSettings" >
                      
                                  <div class="tab-pane fade active in" id="Div1">
                                       <div style="height:10px"></div>
                                <table id="Table1" class="tabContent">
                                    <tr>

                                        <td>
                                            <label for="txtProjectCodeModelPopup" class="control-label">Submission By</label>
                                        </td>

                                        <td>
                                         
                                              <asp:DropDownList ID="DdlSubmissionBY" runat="server" ClientIDMode="Static" CssClass="form-control selectOption">
                                </asp:DropDownList>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="txtProjectNameModelPopup" class="control-label">1st Review By</label>
                                        </td>
                                        <td>
                                          
                                 
                                             <asp:DropDownList ID="Ddl1stReview" runat="server" ClientIDMode="Static" CssClass="form-control selectOption">
                                </asp:DropDownList>
                                  
                          
                                        </td>
                                    </tr>   
                                    
                                      <tr>

                                        <td>
                                            <label for="txtProjectCodeModelPopup" class="control-label">2nd Review By</label>
                                        </td>

                                        <td>
                                         
                                              <asp:DropDownList ID="Ddl2ndReview" runat="server" ClientIDMode="Static" CssClass="form-control selectOption">
                                </asp:DropDownList>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="txtProjectNameModelPopup" class="control-label">3rd Review By</label>
                                        </td>
                                        <td>
                                          
                                 
                                             <asp:DropDownList ID="Ddl3rdReview" runat="server" ClientIDMode="Static" CssClass="form-control selectOption">
                                </asp:DropDownList>
                                  
                          
                                        </td>
                                    </tr>                             

                                </table>
                            </div>
                             

                                   <%--<dx:ASPxCallbackPanel ID="ASPxCallbackPanel8" runat="server" BackColor="White" ClientInstanceName="callbackPanel8" OnCallback="ASPxCallbackPanel8_Callback" ClientIDMode="Static">
                        <PanelCollection>
                            <dx:PanelContent ID="PanelContent81" runat="server">

                                <div style="height: 10px"></div>
                                <table>
                                    <tr>
                                        <td><span>Submission By: &nbsp;&nbsp;&nbsp;&nbsp;</span></td>


                                        <td>
                                            <dx:ASPxComboBox runat="server" ID="DdlSubmissionBY" Width="220px" Height="20px" SelectedIndex="0"
                                                EnableSynchronization="False" ClientInstanceName="DdlSubmissionBY" ClientIDMode="Static">
                                                <ClientSideEvents SelectedIndexChanged="function(s, e) { OnSubmissionByChanged(s,e);}" />
                                            </dx:ASPxComboBox>
                                        </td>

                                    </tr>
                                    <tr style="height: 10px"></tr>

                                    <tr>
                                        <td><span>1st Review By:</span></td>


                                        <td>
                                            <dx:ASPxComboBox runat="server" ID="Ddl1stReview" Width="220px" SelectedIndex="0" DropDownStyle="DropDownList"
                                                EnableSynchronization="False" ClientInstanceName="Ddl1stReview" ClientIDMode="Static">
                                                <ClientSideEvents SelectedIndexChanged="function(s, e) { On1stReviewChanged(s,e); }" />
                                            </dx:ASPxComboBox>
                                        </td>
                                    </tr>

                                    <tr style="height: 10px"></tr>

                                    <tr>
                                        <td><span>2nd Review By:</span></td>



                                        <td>
                                            <dx:ASPxComboBox runat="server" ID="Ddl2ndReview" SelectedIndex="0" Width="220px" DropDownStyle="DropDownList"
                                                ClientInstanceName="Ddl2ndReview" ClientIDMode="Static">
                                                <ClientSideEvents SelectedIndexChanged="function(s, e) { On2ndReviewChanged(s,e); }" />
                                            </dx:ASPxComboBox>
                                        </td>

                                    </tr>

                                    <tr style="height: 10px"></tr>

                                    <tr>
                                        <td><span>3rd Review By:</span></td>



                                        <td>
                                            <dx:ASPxComboBox runat="server" ID="Ddl3rdReview" SelectedIndex="0" Width="220px" DropDownStyle="DropDownList" IncrementalFilteringMode="StartsWith" EnableSynchronization="False"
                                                ClientInstanceName="Ddl3rdReview" ClientIDMode="Static">
                                                <ClientSideEvents SelectedIndexChanged="function(s, e) { On3rdReviewChanged(s); }" />
                                            </dx:ASPxComboBox>
                                        </td>

                                    </tr>
                                  
                                </table>

                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxCallbackPanel>--%>
                            </div>
                          

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
<%--        -------------------------------------------------------------------------------1Part------------------------------------------------------------------------------%>

    <asp:Button ID="BtnDeleteIcon" runat="server" Text="Show Modal Popup" ClientIDMode="Static" CssClass="display" Style="display: none" />

    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupDragHandleControlID="PanelDeleteIcon" PopupControlID="PanelDeleteIcon" TargetControlID="BtnDeleteIcon"
        CancelControlID="Img1" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>

    <asp:Panel ID="PanelDeleteIcon" runat="server" Width="300px" align="left" Style="display: block; border-style: solid; border-width: 1px; border-color: black; background-color: aliceblue; display: none; position: relative; Height: 170px">

        <div style="border-color: ActiveCaption; height: 25px; width: 300px">
            <span><b style="font-size: 14px; font-family: Arial"></b></span>
            <img src="images/closeIcon.png" id="Img1" onmouseover="Close" style="float: right; background-color: black; cursor: pointer" />
        </div>
        <div id="Div3" style="height: 20px"></div>

        <b><span style="font-size: 12px; font-family: Arial; margin-left: 25px">Are You Sure Want to Delete the EBS?</span></b>

        <div style="border-color: ActiveCaption; bottom: 20px; position: absolute; width: 300px; height: auto; margin-left: 25px">
            <table>
                <tr>
                    <td>
                        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="OK" AutoPostBack="False" Height="20px" Width="50px" ClientInstanceName="btnUpdateEbs" UseSubmitBehavior="true" ClientIDMode="Static" CssClass="icq">
                            <HoverStyle CssClass="icqHovered" />
                            <PressedStyle CssClass="icqPressed" />
                            <ClientSideEvents Click="btnDeleteEbsclick" />
                        </dx:ASPxButton>

                    </td>

                    <td>

                        <dx:ASPxButton ID="ASPxButton3" runat="server" Text="Cancel" AutoPostBack="False" Height="20px" Width="50px" ClientInstanceName="btnUpdateEbs" UseSubmitBehavior="true" ClientIDMode="Static" CssClass="icq">
                            <HoverStyle CssClass="icqHovered" />
                            <PressedStyle CssClass="icqPressed" />
                            <ClientSideEvents Click="btnCancelEbsclick" />
                        </dx:ASPxButton>

                    </td>
                </tr>
            </table>

        </div>

    </asp:Panel>

    
      <div class="container"><%-------------------------------------------------------------------- Single click PopUP--------------------------------------------------------------------------%>
          <div class="modal fade" id="dialog-form2" role="dialog">
              <div class="modal-dialog" style="margin-top: 15%; width: 30%">
                  <div class="modal-content">
                      <div class="modal-header bg-primary" style="height: 30px">
                          <button id="456" type="button" class="close" data-dismiss="modal" style="opacity: .8; margin-top: -12px">&times;</button>
                          <h4 class="modal-title" style="margin-top: -12px">Create New EBS</h4>
                      </div>
                      <div class="modal-body">
                          <p class="validateTips" style="color: red; font: bold; font-size: 15px">All form fields are required.</p>

                          <div class="form-group">
                              <label for="name" style="color: black">Parent EBS Name </label>
                              <asp:TextBox ID="txtParentEbs" ReadOnly="true" runat="server"   class="form-control" ClientIDMode="Static"></asp:TextBox>
                          </div>

                           


                          <div class="form-group">
                              <label for="name" style="color: black; font: bold">EBS Name </label>
                              <asp:TextBox ID="txtEbName" runat="server"  class="form-control" MaxLength="150" ClientIDMode="Static"></asp:TextBox>
                          </div>

                          <div class="form-group">
                              <button type="button" id="btnSubmit" class="btn btn-primary">Ok</button>
                              <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                          </div>



                      </div>

                  </div>

              </div>
          </div>
      </div>



      <%--harish 22 dec 2016--%>  <%--<asp:ScriptManagerProxy ID="ScriptManager1" runat="server"  />--%>
    <%--<asp:UpdatePanel runat="server" ID="upd1" UpdateMode="Conditional" ChildrenAsTriggers="true"> <ContentTemplate>  --%>
          <asp:FileUpload ID="fileuploadExcel" runat="server"  ForeColor="Black"  Width="200px" style="display:none" onChange="uploadImage()"  />&nbsp;&nbsp;
    <%--harish 23 dec2016--%>
    <div class="container">
        <div class="modal fade" id="ImportData" role="dialog">
            <div class="modal-dialog" style="margin-top: 15%; width: 30%">
                <div class="modal-content">
                    <div class="modal-header bg-primary" style="height: 30px">
                        <button type="button" class="close" id="btnclose" onclick="closeimport" data-dismiss="modal" style="opacity: .8; margin-top: -12px">&times;</button>
                        <h4 class="modal-title" style="margin-top: -12px"></h4>
                    </div>


                    <div class="modal-body">

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">

                            <li class="active"><a href="#GeneralInformation1" role="tab" data-toggle="tab">Import Data</a>
                            </li>
                            
                          
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="GeneralInformation1">
                                <table id="Table2" class="tabContent">
                                    <tr>

                                        <td colspan="2" >
                                            <asp:LinkButton runat="server" ID="btndownloadsampleexcel" ForeColor="Blue" style="text-decoration:underline;float:right" Text="Download Sample Excel File Format" OnClick="btndownloadsampleexcel_Click" ></asp:LinkButton>

                                        </td>
                                    </tr>
                                    <tr>

                                        <td  colspan="2">
                                            <%--<label for="lblimportfilename" class="control-label">File Name :</label>--%>
                                            <asp:Button ID="btnbrowse" runat="server" Text="Browse"  OnClientClick="selectFile(); return false;"  style="margin-left:20px;color: #fff;background-color: #337ab7;border-color: #2e6da4"  />
                                             <input type="text"  id="txtfilename" clientidmode="Static" readonly="true"  />
                                        </td>

                                        

                                    </tr>
                                    <tr>
                                        <td>
                                           <asp:Button ID="btnImportSubmit" runat="server" Text="Import" class="btn btn-primary" OnClick="btnImport_Click"  style="margin-left:50px"   />
                                        </td>
                                        <td>
                                         
                                        </td>
                                    </tr>                             

                                </table>
                            </div>
                             

                                 
                            </div>
                          

                        </div>

                    </div>
                </div>
            </div>
        </div>
    

    <%--harish 23 dec 2016--%>
<%--   ----------------------------------------------------------------------------------------------harish---------------------------------------------------------%>
     <div class="container">
        <div class="modal fade" id="Div5" role="dialog">
            <div class="modal-dialog" style="margin-top: 2%; width: 50%">
                <div class="modal-content">
                    <div class="modal-header bg-primary" style="height: 30px">
                        <button type="button" class="close" id="btnclose1" onclick="closeimport1(); return false;" data-dismiss="modal" style="opacity: .8; margin-top: -12px">&times;</button>
                        <h4 class="modal-title" style="margin-top: -12px">Select EBS </h4>
                    </div>


                    <div class="modal-body" style="height:500px;overflow:auto;">

                        <!-- Nav tabs -->
                        <asp:GridView runat="server" ID="gvebsselect" AutoGenerateColumns="false" Width="600px"  >
                        <Columns>
                            <asp:TemplateField ItemStyle-Width="10%">
                                <ItemTemplate>

                                    <asp:CheckBox runat="server" ID="chkbxselect"  />
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EBS/Drawing Name">

                                <ItemTemplate>

                                    <asp:Label runat="server" ID="lbldrawingname" Text='<%#Bind("Drawing_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Drawing No.">

                                <ItemTemplate>

                                    <asp:Label runat="server" ID="lbldrawingno" Text='<%#Bind("Drawing_No") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>        
                        <br />
                     
                        <asp:Button runat="server" ID="btnsubmitebs" Text="Submit" OnClick="btnsubmitebs_Click" CssClass="btn btn-primary"   />
                        </div>

                    </div>
                </div>
            </div>
        </div>

<input type="hidden" id="selectedebsid"  runat="server"/>
    <input type="hidden" id="hdfloginusertype"  runat="server"/>
    <input type="hidden" id="hdfloginuserid"  runat="server"/>
    <input type="hidden" id="hdfdcuserid"  runat="server"/>
    




</asp:Content>


