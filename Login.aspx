<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link type="text/css" rel="stylesheet" href="../Content/css/MasterStyleSheet.css" />
<link type="text/css" rel="stylesheet" href="../Content/css/PageStyleSheet.css" />
</head>
<body>
   <form id="form1" runat="server" defaultbutton="btnLogin">

        <div style="width:80%; height:20%; background-color:rgb(247, 131, 49); margin-left:10%; text-align:center">
            <hr />   
            <table style="width:100%; height:100%">
                <tr>
                    <td colspan="12"></td>
                </tr>
                <tr>
                    <td colspan="1" rowspan="2">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" Width="80px" ImageUrl="~/content/images/emblem.png"/>
                    </td>
                     <td colspan="1" rowspan="2" style="text-align:left">
                         <asp:Label ID="Label4" runat="server" Text="गृह मंत्रालय" style="font-weight: 700; font-size: x-large"></asp:Label><br />
                         <asp:Label ID="Label5" runat="server" Text="Ministry of" style="font-size: x-large"></asp:Label><br />
                         <asp:Label ID="Label6" runat="server" Text="Home Affairs" style="font-size: x-large; font-weight: 700"></asp:Label><br />
                         <asp:Label ID="Label8" runat="server" Text="Govt. of India" style="font-size: x-large; font-weight: 700"></asp:Label>
                    </td>
                    <td colspan="8" rowspan="1">
                        <asp:Label ID="Label7" runat="server" Text="Ashoka Chakra/Kirti Chakra/Shaurya Chakra Awardee" Font-Size="20px" ForeColor="Black" ></asp:Label>
                    </td>
                     <td colspan="2" rowspan="2">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="80px" Width="180px" ImageUrl="~/content/images/sbl.png"/>
                    </td>
                </tr>
                 <tr>
                    <td colspan="12"></td>
                </tr>
            </table>                
        </div>

        <div style="width:80%; height:70%; background-color:rgb(222, 239, 239); margin-left:10%; margin-top:20px; text-align:center">
              <table style="width:100%; padding-left:30px; padding-right:30px;">
        <tr>
            <td colspan="12">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="12">
                <asp:Label ID="Label1" runat="server" Text="Login Form" style="font-weight: 700; font-size: large"></asp:Label>
                 
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
        
         <tr>
            <td colspan="12">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="txtUserName" runat="server" CssClass="txtboxX-Small"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td colspan="12">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="12">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="txtboxX-Small" TextMode="Password"></asp:TextBox>
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
         <tr>
            <td colspan="12">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="12">
                <asp:Button ID="btnLogin" runat="server" Text="Login" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="150px" OnClick="btnLogin_Click" />
            
                 <asp:Button ID="btnForget" runat="server" Text="Forget Password" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="150px" OnClick="btnForget_Click" />
           
                 <%--<asp:Button ID="btnChangePassword" runat="server" Text="Change Password" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="150px" />--%>
            </td>
        </tr>
        <tr>
            <td colspan="12">
                <br />
            </td>
        </tr>
     </table>
        </div>

        <div style="width:80%; height:10%; background-color:rgb(7, 133, 23); margin-left:10%; margin-top:20px; text-align:center">
        <hr />  
                  <br />
            <br />
        </div>



    </form>
</body>

</html>
