<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body style="background-color: #EFEFF2">
    <form id="form1" runat="server">
        <div style="margin-left:10%;width:80%;height:100px;background-color:rgba(147, 241, 209, 0.27)">
            <table style="width:100%">
            <tr>
                <td colspan="12">
                    <br />
                </td>
            </tr>                
                <tr>
                <td colspan="12" style="text-align:center; color: #0033CC; font-family: Calibri; font-size: x-large">
                    <asp:Label ID="Label7" runat="server" Text="Please Contact Administrator" style="font-weight: 700; font-size: xx-large; text-decoration: underline;"></asp:Label>
                </td>
            </tr>
                <tr>
                <td colspan="12">
                    <br />
                </td>
            </tr>
                <tr>
                <td colspan="12">
                    <hr />
                </td>
            </tr>
                </table>
            </div>
    
        
        <div style="margin-left:10%;width:80%;height:auto;margin-top:10px;background-color:rgba(147, 241, 209, 0.27)"">
        <table style="width:100%">
            <tr>
                <td colspan="12">
                    <br />
                </td>
            </tr>
              <tr>
                    <td colspan="12" style=" text-align:center;">
              
                       <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" style="font-weight: 700; font-family: Calibri; font-size: large">Click here to go to Login page</asp:LinkButton>

                   </td>
            </tr>
            <tr>
                <td colspan="12">
                    <br />
                </td>
            </tr>
           <%-- <tr>
                   <td colspan="12">
              
                       <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" style="font-size: large; font-family: Calibri; font-weight: 700">Update Entries</asp:LinkButton>

                   </td>
            </tr>
            <tr>
                <td colspan="12">
                    <br />
                </td>
            </tr>
            <tr>
                   <td colspan="12">
              
                       <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" style="font-size: large; font-family: Calibri; font-weight: 700">Generate Report</asp:LinkButton>

                   </td>
            </tr>
                <tr>
                <td colspan="12">
                    <hr />
                </td>
            </tr>--%>
        </table>
  
    </div>


        <div style="margin-left:10%;margin-top:10px; width:80%;height:100px;background-color:rgba(147, 241, 209, 0.27)">
            <table style="width:100%">
            
                <tr>
                <td colspan="12" style="text-align:center; color: #0033CC; font-family: Calibri; font-size: medium;">
                    <%--<asp:Label ID="Label8" runat="server" Text="Developed by Ministry of Home Affairs" style="font-size: large"></asp:Label>
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="All rights reserved!!" style="font-size: medium"></asp:Label>--%>
                    <div class="copyrights">
                           <p>&copy; Copyright 2019 Powered by  <a href="http://www.mha.gov.in/"> Ministry of Home Affairs (Govt. of India).</a></p>
                    </div>
                </td>
            </tr>
                <tr>
                <td colspan="12">
                    <br />
                </td>
            </tr>
                <tr>
                <td colspan="12">
                    <hr />
                </td>
            </tr>
                </table>
            </div>
    

    </form>
</body>
</html>