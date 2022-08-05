<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintCardnew.aspx.cs" Inherits="PrintCardnew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>print pass</title>
      
    <script type="text/javascript">
        function print_page() 
        {
            var ButtonControl = document.getElementById("btnprint");
            var bt2 = document.getElementById("gbck");
            ButtonControl.style.visibility = "hidden";
            bt2.style.visibility = "hidden";
            window.print();
           bt2.style.visibility = "visible";
        }
    </script>

    <script language="javascript" type="text/javascript">
        window.document.title=":: IDCARD ADMIN ::";

        window.status = ".....IDCARD ADMIN  ....."; function imgpass2_onclick() {

        }

    </script>
    <style type="text/css">
       
        #result_box{vertical-align:top;margin-bottom:5px}.short_text{font-size:19px;line-height:1.35em}
        #tb2
        {
            height: 27px;
            width: 104%;
        }
        #tts_button{float:left;margin:2px 6px 0 0;}
        #tb3
        {
            height: 27px;
            width: 104%;
        }
        #subpass5
        {
            height: 69px;
        }
        #tb4
        {
            height: 27px;
            width: 104%;
        }
        #subpass6
        {
            height: 71px;
        }
        #tb3
        {
            height: 27px;
            width: 104%;
        }
        #subpass6
        {
            height: 52px;
        }
        #tb4
        {
            height: 27px;
            width: 104%;
        }
        #subpass8
        {
            height: 52px;
        }
        #tb5
        {
            height: 27px;
            width: 104%;
        }
        #subpass10
        {
            height: 52px;
        }
        #tb6
        {
            height: 27px;
            width: 104%;
        }
        #subpass12
        {
            height: 52px;
        }
        #tb7
        {
            height: 27px;
            width: 104%;
        }
        #subpass14
        {
            height: 52px;
        }
        #tb3
        {
            height: 27px;
            width: 104%;
        }
        #subpass6
        {
            height: 89px;
        }
        .style66
        {
            width: 49%;
        }
        .style29
        {
            width: 25px;
        }
        .style30
        {
            width: 54px;
        }
        .style48
        {
        }
         .style67
        {
            width: 31px;
        }
        .style70
        {
            width: 472px;
        }
        #imgpass2
        {
            width: 60px;
        }
        .style73
        {
            height: 18px;
        }
        .style74
        {
            height: 37px;
        }
        .style75
        {
            height: 20px;
        }
        .style77
        {
            width: 100%;
        }
         .style107
        {
            width: 80%;
        }
        .style79
        {
            width: 140px;
        }
        </style>
      <%--for hindi font size  issue in ie11--%>
        <style> 
        @media all and (-ms-high-contrast:none)
        {
        .foo { font-size:10px} /* IE10 */
        *::-ms-backdrop, .foo { font-size:13px } /* IE11 */
        }
        </style>
        <style> 
        @media all and (-ms-high-contrast:none)
        {
        .fooo { font-size:11px} /* IE10 */
        *::-ms-backdrop, .fooo { font-size:16px } /* IE11 */
        }
            .auto-style3 {
                height: 15px;
            }
        </style>
        
        </head>
<body style="margin: 0px; top: 0px; left: 0px" >
    <form id="form1" runat="server" 
    style="top: 0px; left: 0px; width: 100%; height: 100%;">
    
     <table id="Table1" width ="100%" runat="server" align="left" 
            style="top: 0px; left: 0px">
            <tr align="left">
                <td class="style70" >
                    <table id="Pass1" style="font-size: 7px; width: 89.77mm; background-color:aliceblue; height: auto;margin-left:17px" 
                        cellpadding="0" cellspacing="0" runat="server">
                        <tr runat="server">
                            <td width="30%" style="height:auto">
                                
                                <table id="subpass5" runat="server" style="font-size: 7px; background-color:aliceblue; width: 111px;" cellpadding="0" 
                                    cellspacing="0">
                                    <tr>
                                        <td style="font-size: 11px" class="style73" align="center">
                                            <asp:Label ID="Label39" CssClass="foo" runat="server" Text="भारत सरकार" 
                                                Font-Bold="True"></asp:Label>
                                                        &nbsp;<br />
                                            <asp:Label ID="Label40" CssClass="foo" runat="server" Text="गृह मंत्रालय" 
                                                Font-Bold="True"></asp:Label>
                                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-size: 10px; font-weight: bold" id="pass5td1">
                                        </td>
                                    </tr>
                                    <tr>
                                        <%-- <td align="left" style="font-size: 10px; font-weight: bold">
                                            &nbsp;<asp:Label ID="Label15" CssClass="foo" runat="server" Font-Bold="True" 
                                                ForeColor="Red"></asp:Label>
                                        </td>--%>
                                        <td align="left" style="font-size: 10px; font-weight: bold" >
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-size: 10px; font-weight: bold" >
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                
                            </td>
                            <td valign="top" class="style67">                              
                                <img style="margin-right: 1px; width: 34px;" id="imgpass1" 
                                    src="images/EmblemSmall1.png" />                                </td>
                            <td valign="top" style="height:auto">
                                <table id="subpass2" align="left" 
                                    style="font-size: 7px;  margin-left: 5px; " cellpadding="0" 
                                    cellspacing="0">
                                    <tr>
                                        <td colspan="2" align="left" style="font-size: 11px" class="style43">
                                           <b> GOVERNMENT OF INDIA</b><br />
                                            <b>MINISTRY OF HOME AFFAIRS</b></td>
                                    </tr>
                                    <tr align="left" runat="server">
                                        <td style="font-size: 10px; font-weight: bold" width="45%">
                                            &nbsp;</td>
                                        <td width="55%" align="left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr align="left">
                                        <td style="font-weight: bold" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server" id="divnopos">
                            <td  align="left" colspan="3">
                                <table style="height: 132px; width: 100%; margin-top: 0px; background-color:aliceblue" border="0" cellpadding="0" 
                                    cellspacing="0">
                                    <tr>
                                        <td align="left"  rowspan="9" valign="top" class="style29">
                                            <table style="height: 112px; width: 55px;" cellpadding="0" align="left"  >
                                                <tr align="left">
                                                    <td class="style30" align="left">
                                                        <asp:Image ID="Image3" runat="server" AlternateText="Image Not Available" 
                    BorderColor="#000099" BorderStyle="Solid" BorderWidth="0px" Height="105px" 
                    ImageAlign="Left" ImageUrl="~/photo1.aspx" Width="78px" />                                                      
                                                    </td>
                                                </tr>
                                                </table>
                                        </td>
                                    </tr>                                   
                                    <tr>
                                        <td style="font-size: 10px; margin-left:10px" colspan="3"   >
                                            <b>
                                            <asp:Label ID="lblName_of_Award" runat="server" Text="Label"></asp:Label>                                      
                                            AWARDEE </b>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 10px; width:20%" >
                                                        <br />
                                            Name :</td>
                                        <td style="font-size: 10px; margin-left:15px; font-weight: bold" width="70%" >
                                            <br />
                                            <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 10px; width:20%" >
                                            Designation:</td>
                                        <td style="font-size: 10px;margin-left:15px; font-weight: bold" >
                                            <asp:Label ID="lbldesig" runat="server" Text="Label"></asp:Label>
                                            
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 10px;width:20%"  >
                                            DOB:</td>
                                        <td style="font-size: 10px; margin-left:15px;font-weight: bold">
                                            <asp:Label ID="lbldob" CssClass="foo" runat="server" Text="Label" 
                                                Font-Bold="True"></asp:Label>
                                            
                                            
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 10px;width:20%">
                                            Organisation:</td>
                                        <td style="font-size: 10px;margin-left:15px; font-weight: bold">
                                            <asp:Label ID="lblorg" runat="server" Text="Label"></asp:Label>
                                            
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 10px;width:20%"  >
                                            DOA:</td>
                                        <td style="font-size: 10px;margin-left:15px; font-weight: bold">
                                            <asp:Label ID="lbldoa" runat="server" Text="Label"></asp:Label>
                                            
                                            </td>
                                    </tr>
                                    <tr><td  align="left" class="style48" style="font-size: 10px" colspan="2">  
                                        <table class="style77">
                                            <tr>
                                                <td class="style79">
                                                    &nbsp;</td>
                                                        <td rowspan="2" align="center" style="font-size: 9px;margin-left:-50px;margin-bottom:10px">
                                                      <%-- <img  id="imgpass2" 
                                    src="images/1234_sig_black.png" onclick="return imgpass2_onclick()" style="height: 22px;margin-left:-30px;margin-bottom:10px" /><br />--%>
                                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="margin-left: -30px; margin-bottom: 50px">Under Secretary Public</asp:Label>
                                                            <br />
                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="margin-left: -30px; margin-bottom: 50px">Ministry of Home Affairs</asp:Label>

                                                            <%--<p>Under Secretary(Public)</p>
                                                            <p>Ministry of Home Affairs</p>--%>
                                                             </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style79" style="font-weight: bold; font-size: 13px;">
                                                            <asp:Label ID="lblNo" runat="server" Font-Bold="True" Width="83%"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        </td>
                                        </tr>
                                    </table>
                            </td>
                        </tr>
                        //second div

                        <tr runat="server" id="divyespos">
                            <td  align="left" colspan="3">                             
                                <table style="height: 132px; width: 100%; margin-top: 0px; background-color:aliceblue" border="0" cellpadding="0" 
                                    cellspacing="0">
                                    <tr>
                                        <td align="left"  rowspan="9" valign="top" class="style29">
                                            <table style="height: 112px; width: 55px;" cellpadding="0" align="left"  >
                                                <tr align="left">
                                                    <td class="style30" align="left">
                                                        <asp:Image ID="Image1" runat="server" AlternateText="Image Not Available" 
                    BorderColor="#000099" BorderStyle="Solid" BorderWidth="0px" Height="105px" 
                    ImageAlign="Left" ImageUrl="~/photo1.aspx" Width="78px" />                                                      
                                                    </td>
                                                </tr>
                                                </table>
                                        </td>
                                    </tr>                                   
                                    <tr>
                                        <td style="font-size: 10px; margin-left:10px" colspan="3"   >
                                            <b>
                                            <asp:Label ID="lblName_of_Award0" runat="server" Text="Label"></asp:Label>                                      
                                            AWARDEE </b>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 10px; width:25%"  >
                                                        <br />
                                            Name of Kin:</td>
                                        <td style="font-size: 10px; font-weight: bold" width="70%" >
                                            <br />
                                             <asp:Label ID="lblkin" runat="server" Text="Label"></asp:Label>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 10px;width:25%" >
                                            Awardee Name:</td>
                                        <td style="font-size: 10px; font-weight: bold" >
                                            <asp:Label ID="lblawardee" runat="server" Text="Label"></asp:Label>
                                            
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 10px; width:25%"  >
                                            DOB:</td>
                                        <td style="font-size: 10px; font-weight: bold">
                                            <asp:Label ID="lbldobnok" CssClass="foo" runat="server" Text="Label" 
                                                Font-Bold="True"></asp:Label>
                                            
                                            
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 10px; width:25%"  >
                                            Notification No:</td>
                                        <td style="font-size: 10px; font-weight: bold">
                                           <asp:Label ID="lblnoti" runat="server" Text="Label"></asp:Label>
                                            
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 10px; width:25%"  >
                                            DOA:</td>
                                        <td style="font-size: 10px; font-weight: bold">
                                        <asp:Label ID="lblkindoa" runat="server" Text="Label"></asp:Label>

                                            
                                            </td>
                                    </tr>
                                    <tr><td  align="left" class="style48" style="font-size: 10px" colspan="2">  
                                        <table class="style77">
                                            <tr>
                                                <td class="style79">
                                                    &nbsp;</td>
                                                        <td rowspan="2" align="center" style="font-size: 9px;margin-left:-50px;margin-bottom:10px">
                                                      <%-- <img  id="imgpass2" 
                                    src="images/1234_sig_black.png" onclick="return imgpass2_onclick()" style="height: 22px;margin-left:-30px;margin-bottom:10px" /><br />--%>
                                                          <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="margin-left: -30px; margin-bottom: 50px">Under Secretary Public</asp:Label>
                                                            <br />
                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Style="margin-left: -30px; margin-bottom: 50px">Ministry of Home Affairs</asp:Label>
                                                           <%-- <p>Under Secretary(Public)</p>
                                                            <p>Ministry of Home Affairs</p>--%>
                                                             </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style79" style="font-weight: bold; font-size: 13px;">
                                                           <asp:Label ID="lblNo2" runat="server" Font-Bold="True" Width="83%"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        </td>
                                        </tr>
                                    </table>

                            </td>
                        </tr>
                       
                    </table>
                </td>
                <td class="style66">
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td height="50px" align="left" >
                    <br />
                    <table id="Pass2" style="height: 36mm; width: 89.7mm;margin-left:20px; background-color:aliceblue" 
                        cellpadding="0" cellspacing="0" runat="server" align="left" >
                        <tr runat="server" align="center">
                            <td>
                                
                                &nbsp;</td>
                            <td align="center"  style="font-size: 10px;">                              
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr runat="server" align="center">
                            <td>                                
                                </td>                          
                            <td align="center" style="font-size: 10px;">                              
                                <table class="style77">
                                    <tr>
                                        <td style="width:25%">                                            
                                            Address: <br />
                                            Mark of Identification:<br />
                                            Phone No:

                                        </td>
                                        <td align="left" style="width:50%">
                                            <asp:Label ID="lbl_address" runat="server"></asp:Label> 
                                            <br />
                                            <asp:Label ID="lblidentification" runat="server"></asp:Label> 
                                            <br />
                                            <asp:Label ID="lbl_mobile" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                     &nbsp;</td>
                        </tr>
                        <tr runat="server" align="center">
                            <td>
                                
                                </td>
                            <td align="center"  >                              
                                <asp:Label ID="Label1" runat="server" Text="INSTRUCTIONS" Font-Size="Small"></asp:Label>                                
                                </td>
                            <td class="style75">
                                &nbsp;</td>
                        </tr>
                        <tr runat="server">
                            <td rowspan="3">
                                
                                </td>
                          <%--  <td valign="top" align="left" 
                                style="font-size: 13px; font-weight:bold;">                              
                                <br />
                            </td>
                            <td class="style74" rowspan="3">
                            </td>--%>
                        </tr>
                        
                        <tr runat="server">
                            <td valign="top" align="left" 
                                style="font-size: 10px; font-weight: bold;  font-family: Arial;">                              
                                  Note: This ID is valid till the lifetime of Awardee/NoK. Its loss should be immediately reported to the concerned Police Station and Under Secretary,
                                Public Section, MHA, North Block, New Delhi-110001 </td>
                        </tr>
                        <tr runat="server">
                            <td>
                                
                                &nbsp;</td>
                            <td valign="top" align="left" 
                                style="font-size: 10px; font-weight: bold; font-family: Arial;">                              
                            </td>
                        </tr>
                                               
                        <tr runat="server">
                            <td>
                                
                                &nbsp;</td>
                            <td valign="top" align="right" 
                                style="font-size: 10px; font-weight: bold; font-family: Arial;">                              
                                <asp:Label ID="Label34" runat="server" Text="Date of issue :  "></asp:Label>
                                <asp:Label ID="lbl_date_issue" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                                               
                    </table>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="button" id="btnprint" value="Print" onclick="print_page()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="gbck" runat="server" 
                                    NavigateUrl="~/AshokChakraAwardee.aspx" Target="_parent" >Goback</asp:HyperLink>
                </td>
               
            </tr>
           
            </table>
    </form>
</body>
</html>
