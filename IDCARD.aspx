<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IDCARD.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/style.css" rel="stylesheet" />
    <title>Id Card</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                 <%--Front View Start--%>
            <div class="card_outer">
                <div class="uperLogo">
                  <table style="width: 100%; ">
                            <tr style="width: 100%">
                               <td style="width: 40%; text-align: center">
                                    <p style="height: 6px; margin: 0 0 5px;"><font style="font-size: 8px ">भारत सरकार</font></p>
                                    <p><font style="font-size: 8px">गृह मंत्रालय</font></p>

                                </td>
                              
                                        <td style="width: 10%">
                                           <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" Width="40px" ImageUrl='Content/images/emblem.png' />
                                   
                                <td style="width: 60%; text-align: left">
                                    <p style="height: 4px; margin: 0 0 5px;"><font style="font-size: 7px">GOVERNMENT OF INDIA</font></p>
                                    <font style="font-size: 7px"><p>MINISTRY OF HOME AFFAIRS </font></p>
                                </td>

                            </tr>
                        </table>
                </div>

                <div class="hindifontTitl">
                    <asp:Label runat="server" Text="अशोक चक्र/कीर्ति चक्र/शौर्य चक्र विजेता"></asp:Label>
                    <%--<asp:Label runat="server" Text="Label">भारत सरकार, गृह मंत्रालय</asp:Label>--%>
                </div>

                <div class="engfontTitl">
                    <asp:Label runat="server" Text="ASHOKA CHAKRA/KIRTI CHAKRA/ SHAURYA CHAKRA AWARDEE"></asp:Label>
                    <%--<asp:Label runat="server" Text="Label">Government of India , ministry of home affairs</asp:Label>--%>
                </div>

                <div class="dpImg">
                    <%--<img src="images/img_avatar.png" />--%>
                     <asp:Image ID="ImageButton2" runat="server" Height="80px" Width="80px" />
                    
                   <%-- <asp:Label ID="lblNo"  runat="server" ></asp:Label><br />--%>
                </div>

                <div class="nameDetal">
                    <table>
                        <tr>
                            <td><asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label></td>
                            <td> <asp:Label ID="lblName1" runat="server"></asp:Label></td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="Label5" runat="server" Text="नाम:"></asp:Label></td>
                            <td> <asp:Label ID="lblNameHindi" runat="server"></asp:Label></td>
                        </tr>
                         <tr>
                                <td> <asp:Label ID="Label8" runat="server" Text="Designation:"></asp:Label></td>
                                <td><asp:Label ID="lblDesignation" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                                                 
                              
                                  <td> <asp:Label ID="Label2" runat="server" Text="DOB:"></asp:Label></td>
                                   <td> <asp:Label ID="lblDOB" runat="server"></asp:Label></td>  
                            </tr>                  
                          <tr>
                                <td> <asp:Label ID="Label7" runat="server" Text="Organisation:"></asp:Label></td>
                                <td> <asp:Label ID="lblOrganisation" runat="server"></asp:Label>  </td>  
                            </tr>  
                          <tr>
                                  <td> <asp:Label ID="Label13" runat="server" Text="DOA:"></asp:Label></td> 
                                <td> <asp:Label ID="lblDOA" runat="server"></asp:Label>  </td> 
                          
                            </tr>
                    </table>
                 
                                        
                </div>

                <div class="signAuthOtr">
                    <div class="detailAvtar">
                        <table>
                             
                              
                            <%-- <tr>
                                                                 
                              
                                  <td> <asp:Label ID="Label2" runat="server" Text="DOB:"></asp:Label></td>
                                   <td> <asp:Label ID="lblDOB" runat="server"></asp:Label></td>  
                            </tr> --%>       
                       
                               <%--   <tr>
                                <td> <asp:Label ID="Label7" runat="server" Text="Organisation:"></asp:Label></td>
                                <td> <asp:Label ID="lblOrganisation" runat="server"></asp:Label>  </td>  
                            </tr>  --%>
                      <%--  <tr>
                                  <td> <asp:Label ID="Label13" runat="server" Text="DOA:"></asp:Label></td> 
                                <td> <asp:Label ID="lblDOA" runat="server"></asp:Label>  </td> 
                          
                            </tr>--%>
                            </table>
                </div>
                     <div class="signAuth">
                   <%--  <img src="images/sign.png" />--%>
                      <p>Under Secretary(Public)</p>
                         <p>Ministry of Home Affairs</p>
                </div>
            </div>   
                <div>


                </div>     
            </div>

              <%--Front View End--%>
            <br/>

            

            <%--Back View Start--%>
           <div class="cardBackouter">
               
                 <div class="listDetail">
                <div class="listDetailInner">
                <p>Name of Next of Kin:</p>
                </div>
                     <div class="listDetailInner">
                <asp:Label ID="lblKinName" runat="server" Text="Label"></asp:Label>
                </div>
                </div>
                <div class="listDetail">
                <div class="listDetailInner">
                <p>Date of Birth(NOK):</p>
                </div>
                     <div class="listDetailInner">
                <asp:Label ID="lbldobnok" runat="server" Text="Label"></asp:Label>
                </div>
                </div>

                   <div class="listDetail">
                <div class="listDetailInner">
                <p>Notification No:</p>
                </div>
                        <div class="listDetailInner">
                <asp:Label ID="Label6" runat="server"></asp:Label>
                </div>
                </div>

                   <div class="listDetail">
                <div class="listDetailInner">
                <p>Notification Date:</p>
                </div>
             <div class="listDetailInner">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
                </div>

                   <div class="listDetail">
                <div class="listDetailInner">
                <p>Mark of Identification of Awardee/NoK:</p>
                </div>
                        <div class="listDetailInner">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </div>             
                 <div class="listDetail">
                <div class="listDetailInner">
                <p>Address of Awardee/NoK:</p>
                </div>

             <div class="listDetailInner">
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </div>
                </div>


                   <div class="listDetail">
                <div class="listDetailInner">
                <p>Mobile No:</p>
                </div>

             <div class="listDetailInner">
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </div>
                </div>

                  <div class="fixText">
                    <p>Note: This ID is valid till the lifetime of Awardee/NoK. Its loss should be immediately reported to the concerned Police Station and Under Secretary, Public Section, MHA, North Block, New Delhi-110001</p>
                </div>
            </div>
        

            <%--Back View End--%>

        </div>
    </form>
</body>
</html>
