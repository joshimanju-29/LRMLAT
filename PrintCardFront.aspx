<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintCardFront.aspx.cs" Inherits="PrintCardFront" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/mainCSS.css" rel="stylesheet" />
    <link href="css/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
</head>
<script lang="javascript">
    function Print() {
        var mywindow = window.open('', 'PRINT', 'height=400,width=600');
        //alert("hello1");
        mywindow.document.write('<html><head><title>' + 'Print Card' + '</title>');
        mywindow.document.write('</head><body >');
        //  mywindow.document.write('<h1>' + 'Print Card' + '</h1>');
        //  alert("hello");
        mywindow.document.write(document.getElementById("<%=pnl1.ClientID%>").innerHTML);
        mywindow.document.write('</body></html>');

        mywindow.document.close(); // necessary for IE >= 10
        mywindow.focus(); // necessary for IE >= 10*/

        mywindow.print();
        mywindow.close();

        return true;
    }
</script>
<body style="background-color: none !important">
    <form id="form1" runat="server" style="background-color: none !important">
        <asp:Panel ID="pnl1" runat="server">
            <div id="divFinalDiv" runat="server" style="width: 40%;height:440px; margin: 0 auto; border: solid; page-break-after: always; background-color: lightblue">


                <div class="row" style="">
                    <div class="col-md-12 ">

                        <table style="width: 95%; margin-left: 10px">
                            <tr style="width: 100%">
                                <td style="width: 40%">
                                    <p style="height: 6px; margin: 0 0 5px;"><font style="font-size: 10px">भारत सरकार</font></p>
                                    <p><font style="font-size: 10px">गृह मंत्रालय</font></p>

                                </td>
                              
                                        <td style="width: 10%">
                                            <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" Width="40px" ImageUrl='Content/images/emblem.png' /></td>
                                   
                                <td style="width: 50%; text-align: right">
                                    <p style="height: 6px; margin: 0 0 5px;"><font style="font-size: 10px">GOVERNMENT OF INDIA</font></p>
                                    <font style="font-size: 10px"><p>MINISTRY OF HOME AFFAIRS </font></p>
                                </td>

                            </tr>
                        </table>


                        <%--<p style="margin: 0 0 0px;">--%>
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12" style="text-align: center;">
                        <p style="margin: -0PX 0 -9px;">
                            <asp:Label ID="Label5" runat="server" Text="अशोक चक्र/कीर्ति चक्र/शौर्य चक्र विजेता" Style="font-weight: 700; font-size: large; font-family: Calibri;"></asp:Label></p>
                        <p style="MARGIN-TOP: 5PX;">
                            <asp:Label ID="Label6" runat="server" Text="ASHOK CHAKRA/KIRTI CHAKRA/ SHAURYA CHAKRA AWARDEE" Style="font-weight: 700; font-size: large; font-family: Calibri; margin-top: -5px"></asp:Label>
                        </p>
                    </div>

                </div>
                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12" style="text-align: right; padding-right:15px">
                        <asp:Label ID="lblNo" runat="server" Text="संख्या/No." Style="font-weight: 700; font-size: x-small; font-family: Calibri;"></asp:Label><br />

                    </div>

                </div>
                <div class="clearfix"></div>

                <div class="row">
                   
                      <%--   <table style="width: 100%;height:190px">
                        <tr>
                            <td style="width: 25%">
                                <asp:Image ID="ImageButton2" runat="server" Height="100px" Width="100px" /></td>
                            <td style="">--%>
                                <div id="divnopos" runat="server">

                                   <table style="width: 100%;height:190px">
                        <tr>
                            <td style="width: 25%">
                                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" /></td>
                            <td style="">
                                <p style="margin: 0 0 0px;">
                                    <asp:Label ID="Label3" runat="server" Text="Name of Award : " Style="font-weight: 700; font-size: small; font-family: Calibri;"></asp:Label>

                                    <asp:Label ID="lblName_of_Award" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;"></asp:Label>
                                </p>
                               
                                <p style="margin: 0 0 0px;">
                                    <asp:Label ID="Label1" runat="server" Text="Name of Awardee:" Style="font-weight: 700; font-size: small; font-family: Calibri;"></asp:Label>

                                    <asp:Label ID="lblName_of_awardee" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;"></asp:Label>
                                </p>
                                <p style="margin: 0 0 0px;">
                                    <asp:Label ID="Label8" runat="server" Text="Designation(on date of incident)  :   " Style="font-weight: 700; font-size: small; font-family: Calibri;"></asp:Label>

                                    <asp:Label ID="lblDesignation" runat="server" Text="" Style="font-weight: 700; font-size: small; font-family: Calibri;"></asp:Label>
                                </p>
                                   <p style="margin: 0 0 0px;">
                                       <asp:Label ID="Label10" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;" Text="Date of Birth : "></asp:Label>
                                       <asp:Label ID="lblDOB" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;" Text="  "></asp:Label>
                                       <asp:Label ID="lbl_dob" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;"></asp:Label>
                                </p>
                                <p style="margin: 0 0 0px;">
                                    <asp:Label ID="Label12" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;" Text="Organisation : "></asp:Label>
                                    <asp:Label ID="lblOrganisation" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;" Text="MHA"></asp:Label>
                                </p>
                                <p style="margin: 0 0 0px;">
                                    <asp:Label ID="Label23" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;" Text="Date of Award : "></asp:Label>
                                    <asp:Label ID="lblDOA" runat="server" Style="font-weight: 700; font-size:small; font-family: Calibri;" Text=""></asp:Label>
                                </p>
                                 </td>
                                </tr>
                                </table>
                                     </div>
                                <div id="divyespos" runat="server">

                                 <table style="width: 100%;height:190px">
                        <tr>
                            <td style="width: 25%">
                                 <asp:Image ID="image2" runat="server" Height="100px" Width="100px" /></td>
                                 <td style="">
                                  <p style="margin: 0 0 0px;">
                                    <asp:Label ID="Label4" runat="server" Text="Name of Award : " Style="font-weight: 700; font-size: small; font-family: Calibri;"></asp:Label>
                                      
                                    <asp:Label ID="lbl_award" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;"></asp:Label>
                                </p>

                                   <p style="margin: 0 0 0px;">
                                       <asp:Label ID="Label40" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;" Text="Name of Next of Kin : "></asp:Label>
                                       <asp:Label ID="lblKinName1" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;" Text=""></asp:Label>
                                </p>
                                <p style="margin: 0 0 0px;">
                                    <asp:Label ID="Label41" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;" Text="Name of Awardee:"></asp:Label>
                                    <asp:Label ID="lblName_of_awardee_kin1" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;"></asp:Label>
                                </p>
                                <p style="margin: 0 0 0px;">
                                    <asp:Label ID="Label42" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;" Text="Date of Birth(NOK) : "></asp:Label>
                                    <asp:Label ID="lbldobnok1" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;" Text=""></asp:Label>
                                </p>
                                   <p style="margin: 0 0 0px;">
                                       <asp:Label ID="Label43" runat="server" Style="font-weight: 700; font-size: small; font-family: Calibri;" Text="Date of Award : "></asp:Label>
                                       <asp:Label ID="lblDOAKin0" runat="server" Style="font-weight: 700; font-size:small; font-family: Calibri;" Text=""></asp:Label>
                                </p>
                                      </td>
                                </tr>
                                </table>
                                    </div>
                                                                   <%---------------end-----------%>
                           <%-- </td>
                        </tr>
                    </table>                   --%>


                    <div class="row">
                        <div class="col-md-12" style="text-align: right; margin-top: 55px; padding-right:15px" >
                            <asp:Label ID="Label20" runat="server" Style="font-weight: 700; font-size: x-small; font-family: Calibri;" Text="Under Secretary(Public)"></asp:Label>
                            <br />
                            <asp:Label ID="Label21" runat="server" Style="font-weight: 700; font-size: x-small; font-family: Calibri;" Text="Ministry of Home Affairs"></asp:Label>
                            <br />
                            <asp:Label ID="Label22" runat="server" Style="font-weight: 700; font-size: x-small; font-family: Calibri;" Text="Tel: +911123092421"></asp:Label>
                            <br />
                        </div>

                    </div>
                </div>

            </div>
        </asp:Panel>
        <div>
            <asp:Button ID="btnPrint" runat="server" Text="Print"
                BackColor="#006600" BorderStyle="None"
                Font-Bold="True" ForeColor="White" Width="100px" Height="30px" OnClientClick="Print();" />
            <asp:Button ID="btnBackPrint" runat="server" Text="Print back" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #006600" Width="100px" onclick="btnBackPrint_Click" />
        </div>
    </form>
</body>
</html>
