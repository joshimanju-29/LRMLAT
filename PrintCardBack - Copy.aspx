<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintCardBack - Copy.aspx.cs" Inherits="PrintCardBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
<body style="background-color:none !important">
    <form id="form1" runat="server" style="background-color:none !important">
        <asp:Panel ID="pnl1" margin="auto" runat="server">
            <div id="divFinalDiv" runat="server" style="width: 40%; height:440px;margin: 0px auto;border:solid; page-break-after: always;background-color:lightblue">


         
                <div class="clearfix"></div>

                <div class="row" style="margin-top:50px">
                    <div class="col-md-12" style="text-align: left;">
                      <p style="margin: 0 0 25px 5px;">  <asp:Label ID="Label5" runat="server" Text="Notification No.:" Style="font-weight: 700;font-size: small; font-family: Calibri;"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text="" Style="font-weight: 700; font-size: small; font-family: Calibri; margin-top: -5px"></asp:Label>
                         </p> 
                        
                    </div>

                </div>
                <div class="clearfix"></div>
                 <div class="row">
                    <div class="col-md-12" style="text-align: left;">
                      <p style="margin: 0 0 25px 5px;">  <asp:Label ID="Label2" runat="server" Text="Notification Date :" Style="font-weight: 700;font-size:small; font-family: Calibri;"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text="" Style="font-weight: 700; font-size: small; font-family: Calibri; margin-top: -5px"></asp:Label>
                         </p> 
                       
                    </div>

                </div>
                <div class="clearfix"></div>

                 <div class="row">
                    <div class="col-md-12" style="text-align: left;">
                      <p style="margin: 0 0 25px 5px;">  <asp:Label ID="Label3" runat="server" Text="Mark of Identification of Awardee/NoK :" Style="font-weight: 700;font-size: small; font-family: Calibri;"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text="" Style="font-weight: 700; font-size: small; font-family: Calibri; margin-top: -5px"></asp:Label>
                         </p> 
                    </div>

                </div>
                <div class="clearfix"></div>

                 <div class="row">
                    <div class="col-md-12" style="text-align: left;">
                      <p style="margin: 0 0 25px 5px;">  <asp:Label ID="Label9" runat="server" Text="Address of Awardee/NoK :" Style="font-weight: 700;font-size: small; font-family: Calibri;"></asp:Label>
                        <asp:Label ID="Label11" runat="server" Text="" Style="font-weight: 700; font-size: small; font-family: Calibri; margin-top: -5px"></asp:Label>
                         </p> 
                    </div>

                </div>
                <div class="clearfix"></div>

                 <div class="row">
                    <div class="col-md-12" style="text-align: left;">
                      <p style="margin: 0 0 25px 5px;">  <asp:Label ID="Label13" runat="server" Text="Mobile No: " Style="font-weight: 700;font-size: small; font-family: Calibri;"></asp:Label>
                        <asp:Label ID="Label15" runat="server" Text=" " Style="font-weight: 700; font-size: small; font-family: Calibri; margin-top: -5px"></asp:Label>
                         </p> 
                    </div>

                </div>
                <div class="clearfix"></div>

            

                <div class="row">
                    <div class="col-md-12" style="text-align: left;margin-left:20px;margin-right:20px">
                        <asp:Label ID="lblNo" runat="server" Text="Note: This ID is valid till the lifetime of Awardee/NoK. Its loss should be immediately reported to the concerned Police Station and 
                                        Under Secretary, Public Section, MHA, North, New Delhi-110001" Style="font-weight: 700;font-size:large; font-family: Calibri;"></asp:Label><br />

                    </div>

                </div>
                <div class="clearfix"></div>

           

            </div>
        </asp:Panel>
        <div>
            <asp:Button ID="btnPrint" runat="server" Text="Print"
                BackColor="#006600" BorderStyle="None"
                Font-Bold="True" ForeColor="White" Width="100px" Height="30px" OnClientClick="Print();" />
        </div>
    </form>
</body>
</html>
