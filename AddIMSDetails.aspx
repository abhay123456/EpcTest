<%@ Page Language="C#" Title="Issue Details" AutoEventWireup="true" CodeFile="AddIMSDetails.aspx.cs" EnableEventValidation="false" Inherits="AddIMSDetails" MasterPageFile="~/MasterPage.master" %>

Toadys code commited
Step 2....

step6565656
=======

step4 by rajiv
Step100000
step22222222222222


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <link href="css/AddIMSDetails.css?ver<%=DateTime.Now.Ticks.ToString()%>" rel="stylesheet" />
    <script src="js/AddIMSDetails.js?ver<%=DateTime.Now.Ticks.ToString()%>" type="text/javascript"></script>
     <link rel="stylesheet" href="css/Popup.css">

    <%--    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>--%>

    <div class="divTop" style="overflow-y: auto; height: 83%; width: 96%;font-size:12px">
        <div style="width: 100%; height: 35px; margin-top: 8px">
             <div style="height:25px;width:50px;float:left;margin-top:5px">
               <button type="button" class="btn" id="btn_back" clientidmode="Static" autocomplete="off">Back</button>
             </div>
            <div style="height: 25px; width: 50px; float: left; margin-top: 5px; margin-left:10px">
                <button type="button" class="btn" id="btn_Task" clientidmode="Static" autocomplete="off">My Tasks</button>
            </div>
        </div>
        <asp:UpdatePanel ID="upForReply" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div>
                    <input type="hidden" id="sessionprojectid" runat="server" />
                    <input type="hidden" id="session" value="<%=Session["project_id"]%>" />
                    <input type="hidden" id="sessionUser" value="<%=Session["userID"]%>" />
                    <input type="hidden" id="sessionCompID" value="<%=Session["CompanyID"]%>" />
                    <table width="80%" cellpadding="0" border="0" style="margin-left: 120px; background-color: gray">
                        <tr>
                            <td align="left" style="width: 80%">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 15%">
                                            <label style="font-size: 12px; font-family: Cambria; background-color: gray; color: white">Issue ID: </label>
                                            <asp:Label ID="lblIssueID" runat="server" Style="font-size: 12px; color: white; font-family: Cambria; margin-left: 0px; background-color: gray;"></asp:Label>

                                        </td>
                                        <td style="width: 5%"></td>
                                        <td style="width: 50%">
                                            <label style="font-size: 12px; color: white; font-family: Cambria; background-color: gray">Title: </label>
                                            <asp:Label ID="lblIssueTitle" runat="server" Style="font-size: 12px; color: white; font-family: Cambria; margin-left: 0px; background-color: gray;"></asp:Label>
                                        </td>
                                        <td style="width: 5%"></td>
                                        <td style="width: 21%">
                                            <label style="font-size: 12px; color: white; font-family: Cambria; background-color: gray">Priority: </label>
                                            <%--<asp:Label ID="lblpriority" runat="server" Style="font-size: 16px; color: white; font-family: Cambria; margin-left: 0px; background-color: gray;"></asp:Label>--%>
                                            <asp:DropDownList ID="ddlPrio" OnSelectedIndexChanged="ddlPrio_SelectedIndexChanged" AutoPostBack="true" runat="server" ClientIDMode="Static" Height="22px" Style="font-size: 12px; font-family: Cambria; text-align: left" Width="100px">
                                                <%-- <asp:ListItem Value="Select" Selected="True">--Select--</asp:ListItem>--%>
                                                <asp:ListItem Value="High">High</asp:ListItem>
                                                <asp:ListItem Value="Medium">Medium</asp:ListItem>
                                                <asp:ListItem Value="Low">Low</asp:ListItem>
                                            </asp:DropDownList>


                                        </td>
                                        <td style="width: 4%"></td>

                                    </tr>

                                </table>

                            </td>

                            <td align="left" style="width: 20%">

                                <asp:CheckBox ID="chkIssueClosed" AutoPostBack="true" runat="server" OnCheckedChanged="chkIssueClosed_CheckedChanged" Text="Issue Closed" Style="font-size: 12px; color: white; font-family: Cambria; margin-left: 0px; background-color: gray;" />
                                <asp:Label ID="lblOn" runat="server" Style="font-size: 12px; color: white; font-family: Cambria;"></asp:Label>
                                <asp:Label ID="lblClosedDate" runat="server" Style="font-size: 12px; color: white; font-family: Cambria;"></asp:Label>
                            </td>

                        </tr>
                        <tr>
                            <td align="left" style="width: 80%"></td>

                            <td align="left" style="width: 20%">
                                <%--<label style="font-size: 12px; color: white; font-family: Cambria; float: left; text-align: center;">Closed Date : </label>&nbsp;
                        <asp:Label ID="lblClosedDate" runat="server" Style="font-size: 12px; color:white; font-family: Cambria;"></asp:Label>--%>
                            </td>


                        </tr>
                    </table>
                    <%--<table cellpadding="0" border="0" style="background-color: lightgray; display: inline; float: right;">
                <tr>
                    <td>
                       
                        <asp:DropDownList ID="ddlStatus" runat="server" AutoPostBack="true" BackColor="White" Width="150px" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">

                            <asp:ListItem Text="Issue Open" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Issue Closed" Value="1"></asp:ListItem>
                        </asp:DropDownList>
                     
                    </td>
                </tr>
                <tr>

                    <td>
                        <label style="font-size: 12px; font-family: Arial; float: left; text-align: center;">Closed Date : </label>
                        <asp:Label ID="lblClosedDate" runat="server" Style="font-size: 12px; font-family: Arial;"></asp:Label>
                    </td>
                </tr>
            </table>--%>
                </div>
                <div style="height: 10px"></div>
                <div id="divTop1" runat="server">
                </div>


                <%--    </div>--%>
                <%--</ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlUserTo" EventName="SelectedIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="ddlStatus" EventName="SelectedIndexChanged" />
        </Triggers>

    </asp:UpdatePanel>--%>

                <%--   <asp:UpdatePanel ID="upForReply" runat="server">
            <ContentTemplate>--%>
                <div id="dvBottom" runat="server" style="margin-left: 120px; width: 91%">

                    <table width="87.8%" cellpadding="0" border="0" style="background-color: #ff6a00">
                        <tr style="width: 100%; height: 30px">
                            <td style="width: 100%;" align="center">

                                <label style="height: 100%; color: white; font-size: 12px; margin-left: -1px;"><b>Response</b></label></td>

                        </tr>
                    </table>
                    <%--  <asp:UpdatePanel ID="upForReply" runat="server">
                <ContentTemplate>--%>

                    <table width="87.8%" cellpadding="0" cellspacing="1" border="0">

                        <%-- <asp:UpdatePanel ID="upForReply" runat="server" >
                <ContentTemplate>--%>
                        <tr style="display: none">
                            <td class="labelStyle">
                                <label>Company </label>
                            </td>
                            <td style="width: 80%">
                                <asp:DropDownList ID="ddlCompany" Width="100%" runat="server" AutoPostBack="true" ClientIDMode="Static" OnSelectedIndexChanged="ddlCompany_SelectedIndexChanged" BackColor="White" CssClass="textbox">
                                </asp:DropDownList>
                                <%-- <asp:RequiredFieldValidator ID="rfvddlCompany" runat="server" Font-Size="10" Font-Names="Arial" ForeColor="Red" Display="Dynamic" ValidationGroup="Response" InitialValue="0" ControlToValidate="ddlCompany" ErrorMessage="Required!"></asp:RequiredFieldValidator>--%>

                            </td>
                        </tr>
                        <tr>

                            <td class="labelStyle" style="font-size:12px">
                                <label>To </label>
                            </td>
                            <td style="width: 80%">

                                <asp:DropDownList ID="ddlUserTo" Width="100%" runat="server" AutoPostBack="true" ClientIDMode="Static" OnSelectedIndexChanged="ddlUserTo_SelectedIndexChanged" BackColor="White" CssClass="textbox">
                                </asp:DropDownList>
                                <%--<asp:RequiredFieldValidator ID="rfvUserTo" runat="server" Font-Size="10" Font-Names="Arial" ForeColor="Red" Display="Dynamic" ValidationGroup="Response" InitialValue="0" ControlToValidate="ddlUserTo" ErrorMessage="Required!"></asp:RequiredFieldValidator>--%>

                            </td>


                        </tr>
                        <%-- </ContentTemplate>
                 <Triggers>
                        <asp:AsyncPostBackTrigger  ControlID="ddlUserTo" EventName="SelectedIndexChanged"  />
                       <asp:AsyncPostBackTrigger ControlID="ddlCompany" EventName="SelectedIndexChanged"  />
                    </Triggers>
            </asp:UpdatePanel>--%>
                        <tr>
                            <td class="labelStyle" style="font-size:12px">
                                <label>Attachments </label>
                            </td>
                            <td style="width: 100%">
                                <asp:FileUpload ID="fupload" AllowMultiple="true" onchange='prvimg1.UpdatePreview1(this)' Width="100%" CssClass="textbox" runat="server" ClientIDMode="Static" Font-Size="13px" />
                            </td>


                        </tr>

                        <tr>
                            <td class="labelStyle" style="font-size:12px"></td>
                            <td>

                                <table id="tblUpload" border="1" cellpadding="2" cellspacing="0" clientidmode="Static" style="font-family: Arial; font-size: 10pt;">
                                </table>


                            </td>

                        </tr>

                        <tr>
                            <td class="labelStyle" style="font-size:12px">
                                <label>Response </label>
                            </td>
                            <td style="width: 80%">
                                <asp:TextBox ID="txtDescriptionReply" Width="100%" runat="server" CssClass="textbox" TextMode="MultiLine" Style="resize: none" ClientIDMode="Static" BackColor="White" Height="150px"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="rfvDescriptionReply" runat="server" Font-Size="10" Font-Names="Arial" ForeColor="Red" Display="Dynamic" ValidationGroup="Response" ControlToValidate="txtDescriptionReply" ErrorMessage="Required!"></asp:RequiredFieldValidator>--%>
                            </td>


                        </tr>
                        <tr id="trButton" runat="server">
                            <td></td>

                            <td style="float: right">
                                <asp:Button ID="btnSubmit" CssClass="button" runat="server" Text="Submit" OnClick="btnSubmit_Click" ClientIDMode="Static" OnClientClick="javascript:addIssueDetails();" />
                                <%-- <input type="button" value="Submit" id="btnSubmit" runat="server"  clientidmode="Static" />--%>
                                <input type="hidden" id="myhiddenField" runat="server" clientidmode="Static" />
                            </td>
                        </tr>

                    </table>
                    <%--  </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddlUserTo" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>--%>
                </div>


                </div>
                 <input type="hidden" id="hdfdattachfiles" runat="server" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="ddlUserTo" EventName="SelectedIndexChanged" />
                <asp:AsyncPostBackTrigger ControlID="ddlCompany" EventName="SelectedIndexChanged" />
                <asp:AsyncPostBackTrigger ControlID="chkIssueClosed" EventName="CheckedChanged" />
                <asp:AsyncPostBackTrigger ControlID="ddlPrio" EventName="SelectedIndexChanged" />
                <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
                <%--                <asp:PostBackTrigger ControlID="btnSubmit" /> --%>
            </Triggers>
        </asp:UpdatePanel>



        <%-- </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlUserTo" EventName="SelectedIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="ddlStatus" EventName="SelectedIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
             
        </Triggers>

    </asp:UpdatePanel>--%>
        <%--<asp:Button ID="btnSubmit" CssClass="button" runat="server" Text="Submit"  />--%>
        <%--   <div style="position:static">
        <table id="abcd" style="width: 100%">
            <tr id="tr1" runat="server">
                <td style="width: 50%"></td>

                <td >
                    
                    <input type="button" value="Submit" id="btnSubmit" runat="server" clientidmode="Static" />
                    <input type="hidden"  id="Hidden1" runat="server" clientidmode="Static"  />
                </td>
            </tr>


        </table>
    </div>--%>
    </div>

    <%-- <input type="hidden" id="session"  value="<%=Session["project_id"]%>"/>
    <input type="hidden" id="sessionUser" value="<%=Session["userID"]%>"/>
    <input type="hidden" id="sessionCompID" value="<%=Session["CompanyID"]%>"/>--%>
</asp:Content>


