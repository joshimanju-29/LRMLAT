<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Send_File_Reference.aspx.cs" Inherits="Send_File_Reference" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <div class="row">
    <table style="width:100%; padding-left:30px; padding-right:30px; height:100%">
    <tr>
            <td colspan="12">
                <hr />
            </td>
        </tr> 
        <tr>     
                 <td colspan="3" style="text-align:left">
                     <asp:Button ID="btnUserHome" runat="server" Text="Home" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="100px" OnClick="btnUserHome_Click" />
                    <asp:Button ID="btnFileEntry" runat="server" Text="Create Reference" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="180px" OnClick="btnFileEntry_Click" />
                    </td>     
                    <td colspan="8" style="text-align:center">                    
                    </td>                
                  <td colspan="1" style="text-align:right">
                     <asp:Button ID="btnLogout" runat="server" Text="Logout" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="100px" OnClick="btnLogout_Click" />
                 </td>
        </tr>        
    <tr>
            <td colspan="12">
                <hr />
            </td>
        </tr>      
            
     <tr>
            <td colspan="12">
                <asp:Label ID="lblName" runat="server" Text="Welcome To " CssClass="labelBig"></asp:Label>
            </td>
        </tr>      
    <tr>
            <td colspan="12">
                <hr />
            </td>
        </tr>  
        <tr>
            <td colspan="12">
               <asp:Label ID="Label2" runat="server" Text="Send Reference" style="font-weight: 700; font-size: x-large; text-decoration: underline; font-family: Calibri;"></asp:Label>
            </td>
        </tr>  
         <tr>
            <td colspan="12">
                <hr />
            </td>
        </tr>
         <tr>
            <td colspan="2" style="text-align:left">
                <asp:Label ID="Label11" runat="server" Text="File No" style="font-weight: 700; font-family: Calibri;"></asp:Label>                 
            </td>
             <td colspan="2" style="text-align:left">
                <asp:Label ID="Label20" runat="server" Text="Electronic No" style="font-weight: 700; font-family: Calibri;"></asp:Label>  
            </td> 
              <td colspan="2" style="text-align:left">
                <asp:Label ID="Label18" runat="server" Text="Subject" style="font-weight: 700; font-family: Calibri;"></asp:Label>  
            </td> 
            <td colspan="2" style="text-align:left">
                <asp:Label ID="Label13" runat="server" Text="Date From" style="font-weight: 700; font-family: Calibri;"></asp:Label>  
            </td> 
              <td colspan="2" style="text-align:left">
                <asp:Label ID="Label15" runat="server" Text="Date To" style="font-weight: 700; font-family: Calibri;"></asp:Label>  
           </td>                       
            <td colspan="2" style="text-align:left">   
            </td>
         </tr>  
         <tr>
            <td colspan="12">
               
            </td>
        </tr>
           <tr>
            <td colspan="2" style="text-align:left">
                <asp:TextBox ID="txt_Reference" runat="server" CssClass="txtboxlarge"></asp:TextBox>                
            </td>
                <td colspan="2" style="text-align:left">
                <asp:TextBox ID="txtElectronicno" runat="server" CssClass="txtboxlarge"></asp:TextBox>
            </td>
                <td colspan="2" style="text-align:left">
                <asp:TextBox ID="txtsubject" runat="server" CssClass="txtboxlarge"></asp:TextBox>
            </td> 
            <td colspan="2" style="text-align:left">
                <asp:TextBox ID="txt_date_from" runat="server" CssClass="txtboxlarge" TextMode="Date"></asp:TextBox>
            </td> 
              <td colspan="2" style="text-align:left">
                <asp:TextBox ID="txt_date_to" runat="server" CssClass="txtboxlarge" TextMode="Date"></asp:TextBox>
            </td>                         
            <td colspan="2" style="text-align:left">
                <asp:Button ID="btnSearch" runat="server" Text="Search" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="100px" OnClick="btnSearch_Click"/>
            </td>
         </tr>
         <tr>
            <td colspan="12">
                <hr />
            </td>
        </tr>  
          
        </table>
        </div></div>
    <table style="width:100%; padding-left:30px; padding-right:30px;">
             <tr>
            <td colspan="12">
                <div style="overflow-y:auto; height:200px">
                <asp:GridView runat="server" ID="gridviewFileEntry" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    <Columns>
                        <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="ID"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="File Number"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPhysicalNumber" runat="server" Text='<%# Eval("Physical_Reference_Number") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Electronic Reference Number"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblElectronicNumber" runat="server" Text='<%# Eval("Electronic_Reference_Number") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                         <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID2" runat="server" Text="CIF Number"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblreceivedfrom" runat="server" Text='<%# Eval("CIF_Number") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                         <asp:TemplateField ControlStyle-Width="80%">
                                <HeaderTemplate>
                                    <asp:Label ID="Label9" runat="server" Text="Date of Receipt"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label122" runat="server" Text='<%# Eval("Date_of_Receipt").ToString() != string.Empty ? Convert.ToDateTime(Eval("Date_of_Receipt")).ToString("dd-MM-yyyy"): string.Empty%>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="80%"></ControlStyle>
                            </asp:TemplateField>
                       <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Received From"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblreceivedfrom1" runat="server" Text='<%# Eval("ReceivedFrom") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID1" runat="server" Text="Other Division"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblreceivedfrom2" runat="server" Text='<%# Eval("If_Other_Division") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Category"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Sub Category"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblSUbCategory" runat="server" Text='<%# Eval("Sub_Category") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Subject"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblSubject" runat="server" Text='<%# Eval("Subject") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%" Visible="false">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Details"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDetail" runat="server" Text='<%# Eval("Details") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%" Visible="false">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Document"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDocument1" runat="server" Text='<%# Eval("Document_1") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                         <asp:TemplateField ControlStyle-Width="80%">
                                <HeaderTemplate>
                                    <asp:Label ID="Label24" runat="server" Text="View"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" BackColor="Transparent" BorderStyle="None" style="font-family: Calibri; font-weight: 700; text-decoration: underline; color: #003399; background-color: transparent"></asp:Button>
                                </ItemTemplate>
                                <ControlStyle Width="80%"></ControlStyle>
                            </asp:TemplateField>
                    </Columns>
                </asp:GridView>
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
                <table style="width:100%" runat="server" id="tableSend" >
        <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label6" runat="server" Text="Electronic Reference Number" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                 <asp:Label ID="lblElectronicReferenceNumber" runat="server" style="font-weight: 700; font-size: large; font-family: Calibri;"></asp:Label>
            </td>
            <td colspan="4" rowspan="13" style="vertical-align:top; text-anchor:start">
                <table style="width:100%; background-color:rgba(138, 129, 116, 0.21)">
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="Label3" runat="server" Text="Send To" CssClass="labelBig"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                       <td colspan="4">
                            <hr />
                        </td>
                     </tr>  
                      <tr>
                            <td colspan="2" align="left">
                            <asp:CheckBox ID="checkboxAll" runat="server" style="font-size: large; font-family: Calibri; width:40%" Text="All" OnCheckedChanged="checkboxAll_CheckedChanged" AutoPostBack="True"/>
                                <br />
                            <asp:CheckBoxList ID="checkboxList" runat="server" style="font-size: large; font-family: Calibri; width:40%" RepeatLayout="Flow" CellSpacing="0">
                                <asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
                                <asp:ListItem Text="DelhiPolice" Value="DelhiPolice"></asp:ListItem>
                                <asp:ListItem Text="Chandigarh" Value="Chandigarh"></asp:ListItem>
                                <asp:ListItem Text="Daman&Diu" Value="Daman&Diu"></asp:ListItem>
                                <asp:ListItem Text="Dadar&Nagar" Value="Dadar&Nagar"></asp:ListItem>
                                <asp:ListItem Text="Pudduchery" Value="Pudduchery"></asp:ListItem>
                                <asp:ListItem Text="Andaman & Nicobar" Value="Andaman & Nicobar"></asp:ListItem>
                                <asp:ListItem Text="Lakshadweep" Value="Lakshadweep"></asp:ListItem>
                                <asp:ListItem Text="US(DP)" Value="US(DP)"></asp:ListItem>
                                <asp:ListItem Text="US(utp&planning)" Value="US(utp&planning)"></asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>  
                    <tr>   
                    <td colspan="2">
                        <asp:Button ID="btnSend" runat="server" Text="Send" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="150px" OnClick="btnSend_Click"/>
                    </td>
                        <td colspan="2">
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="150px" OnClick="btnCancel_Click"/>
                    </td>
                </tr>
                </table>
            </td>
        </tr>  
         <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label1" runat="server" Text="File Number" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                <asp:Label ID="lblPhysicalReferenceNumber" runat="server" style="font-size: large; font-family: Calibri; width:40%"></asp:Label>
            </td>
        </tr>  
     <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label17" runat="server" Text="CIF Number" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                <asp:Label ID="lblCIFNumber" runat="server" style="font-size: large; font-family: Calibri; width:40%"></asp:Label>
            </td>
        </tr>  
         <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label10" runat="server" Text="Date of Receipt" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                <asp:Label ID="lbldateofreceipt" runat="server" style="font-size: large; font-family: Calibri; width:80%"></asp:Label>
            </td>
        </tr> 
        <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label19" runat="server" Text="If Other Division" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                <asp:Label ID="lblOtherDivision" runat="server" style="font-size: large; font-family: Calibri; width:80%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label12" runat="server" Text="Received From" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                <asp:Label ID="lblReceivedFrom" runat="server" style="font-size: large; font-family: Calibri; width:80%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label14" runat="server" Text="Category of Sender" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                <asp:Label ID="lblcategory" runat="server" style="font-size: large; font-family: Calibri; width:80%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label8" runat="server" Text="Sub Category" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                <asp:Label ID="lblSubcategory" runat="server" style="font-size: large; font-family: Calibri; width:80%"></asp:Label>
            </td>
        </tr>
         <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label4" runat="server" Text="Subject" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                <asp:Label ID="lblSubject" runat="server" style="font-size: large; font-family: Calibri; width:80%"></asp:Label>
            </td>
        </tr> 
        <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label5" runat="server" Text="Details" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                <asp:Label ID="lblDetails" runat="server" style="font-size: large; font-family: Calibri; width:80%; height:100px"></asp:Label>
            </td>
        </tr>
         <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label16" runat="server" Text="Document" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                <asp:Label ID="lblDocument" runat="server" style="font-size: large; font-family: Calibri; width:80%; height:100px"></asp:Label>
            </td>
        </tr>
         <tr>
            <td colspan="4" align="left">
                <asp:CheckBox ID="CheckBoxIsReplyRequired" runat="server" Text="Reply Required" style="font-weight: 700; font-size: large;  font-family: Calibri;"/>
            </td>
             <td colspan="4" align="left">
            </td>
        </tr>
           <tr>
            <td colspan="4" align="left">
                <asp:Label ID="Label7" runat="server" Text="Reply Due Date" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="4" align="left">
                <asp:TextBox ID="txtDueDateofReply" runat="server" TextMode="Date" style="font-size: large; font-family: Calibri; width:70%"></asp:TextBox>
            </td>
        </tr>
     </table>
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
        </table>
</asp:Content>

