<%@ Page Language="C#" AutoEventWireup="true" CodeFile="360.aspx.cs" Inherits="_360" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS only -->
   
<%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"  integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" type="text/css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.10/css/bootstrap-multiselect.css" integrity="sha512-OHshaM9AIV6bjWvySuN7LZ8NCLs6NJIpbMTEO5O1EssOPCJGjuiB3fD8eutT3V/ENgo0+cS+2WUAHL2NdGsyZg==" crossorigin="anonymous" referrerpolicy="no-referrer" type="text/css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/1.1.1/css/bootstrap-multiselect.min.css" integrity="sha512-jpey1PaBfFBeEAsKxmkM1Yh7fkH09t/XDVjAgYGrq1s2L9qPD/kKdXC/2I6t2Va8xdd9SanwPYHIAnyBRdPmig==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous" type="text/javascript"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.10/js/bootstrap-multiselect.js" integrity="sha512-s0VCuriWT4mPGBCj40RRj2np9tC8DZzn1csx9SBgpQ0kD5O7JDh40UhMmSe55WcCO1XVxY9dhskbEtwqBI+8mw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/1.1.1/js/bootstrap-multiselect.min.js" integrity="sha512-fp+kGodOXYBIPyIXInWgdH2vTMiOfbLC9YqwEHslkUxc8JLI7eBL2UQ8/HbB5YehvynU3gA3klc84rAQcTQvXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   
    <script type="text/javascript">
        $(function () {
            $('#ListBox1').multiselect({
                includeSelectAllOption:true
            });
        });
    </script>--%>
    <link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.css"/>
    <link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/css/bootstrap-select.min.css"/>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.js"></script>
    <script  type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/js/bootstrap-select.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td>Educational Qualification</td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
             
        </tr>
        <tr>
            <td>Native State</td>
            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td>State where working</td>
            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
              
        </tr>
        <tr>
            <td>Mobile No.</td>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
             
        </tr>
        <tr>
            <td>Landline No.</td>
            <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
             
        </tr>
        <tr>
            <td>Email</td>
            <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
              
        </tr>
        <tr>
            <td>Postal Address</td>
            <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
              
        </tr>
        <tr>
            <td>Worked At</td>
            <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td>Person/Merits</td>
            <td>
                &nbsp;
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="Check_UnCheckAll" Text="--Select All--" />
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBox_Checked_Unchecked">
                    
                    <asp:ListItem Value="10">Professional Skill</asp:ListItem>
                    <asp:ListItem Value="10">Academic Skill</asp:ListItem>
                    <asp:ListItem Value="10">Administrative Knowledge</asp:ListItem>
                    <asp:ListItem Value="10">Integrity</asp:ListItem>
                    <asp:ListItem Value="10">Loyalty for Profession</asp:ListItem>
                    <asp:ListItem Value="10">Overall Maturity</asp:ListItem>
                    <asp:ListItem Value="10">Political Affiliation </asp:ListItem>
                    <asp:ListItem>Ideological Inclination</asp:ListItem>
                    <asp:ListItem Value="20">Experience</asp:ListItem>
                </asp:CheckBoxList>
            </td>
             </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
             </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                </asp:CheckBoxList>
            </td>
             </tr>
        <tr>
            <td colspan="2" style="align-items:center; text-align:center">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
             </tr>
        <tr>
            <td colspan="2" style="align-items:center; text-align:center">
                <asp:ListBox ID="ListBox1" SelectionMode="Multiple" runat="server">
                    <asp:ListItem Value="10">Professional Skill</asp:ListItem>
                    <asp:ListItem Value="10">Academic Skill</asp:ListItem>
                    <asp:ListItem Value="10">Administrative Knowledge</asp:ListItem>
                    <asp:ListItem Value="10">Integrity</asp:ListItem>
                    <asp:ListItem Value="10">Loyalty for Profession</asp:ListItem>
                    <asp:ListItem Value="10">Overall Maturity</asp:ListItem>
                    <asp:ListItem Value="10">Political Affiliation </asp:ListItem>
                    <asp:ListItem>Ideological Inclination</asp:ListItem>
                    <asp:ListItem Value="20">Experience</asp:ListItem>
                </asp:ListBox>
            </td>
             </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1"  runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
             </tr>
    </table>
    </div>
    </form>
</body>
</html>
