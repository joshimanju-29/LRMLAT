<%@ Page Title="" Language="C#" MasterPageFile= "~/MasterPage.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="AshokChakraAwardee.aspx.cs" Inherits="AshokChakraAwardee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%-- <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    --%>   <%-- <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            debugger;
            var textBox = $('[id*=ContentPlaceHolder1_txtNameHindi]');
            $(textBox).attr('class', 'hindiFont');
        });
        
       
        // Load the Google Transliterate API
        google.load("elements", "1", { packages: "transliteration" });
        google.setOnLoadCallback(onLoad);
        function onLoad() {
            
            var options = {
                
                sourceLanguage: google.elements.transliteration.LanguageCode.ENGLISH,
                destinationLanguage: [google.elements.transliteration.LanguageCode.HINDI],
                transliterationEnabled: true
            };
            // Create an instance on TransliterationControl with the required options.
            var control = new google.elements.transliteration.TransliterationControl(options);
            // Enable transliteration in the text area and textbox with id

            // 'transliterateTextarea'.
            control.makeTransliteratable(['txtName.Text', 'txtNameHindi.Text']);
        }

    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; padding-left:30px; padding-right:30px">
    <tr>
            <td colspan="12">
                <hr />
            </td>
        </tr> 
        <tr>     
                 <td colspan="1" style="text-align:left">
                  
                 </td> 
                <td colspan="9" style="text-align:center">                    
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
               <asp:Label ID="Label2" runat="server" Text="ENTRY FORM" style="font-weight: 700; font-size: x-large; text-decoration: underline; font-family: Calibri;"></asp:Label>
            </td>
        </tr>  
         <tr>
            <td colspan="12">
                <hr />
            </td>
        </tr>  
    </table>
    <table style="width:100%; padding-left:30px; padding-right:30px">
    <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label6" runat="server" Text=" Generated Number" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                 <asp:Label ID="lblElectronicReferenceNumber" runat="server" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
        </tr> 
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label10" runat="server" Text="Awards" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
            <td colspan="2" align="left">
                <asp:DropDownList ID="ddlAwards" runat="server"  style="font-size: large; font-family: Calibri; width:40%">
                    <asp:ListItem Value="--Select Award--">--Select Award--</asp:ListItem>
                    <asp:ListItem Value="अशोक चक्र">Ashoka Chakra</asp:ListItem>
                    <asp:ListItem Value="कीर्ति चक्र">Kirti Chakra</asp:ListItem>
                    <asp:ListItem Value="शौर्य चक्र">Shaurya Chakra</asp:ListItem> 
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlAwards" ErrorMessage="Please select award"></asp:RequiredFieldValidator>
            </td>
        </tr>  
         <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label1" runat="server" Text="ID  Number" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtAwardeeNo" runat="server" PlaceHolder="ID Number" style="font-size: large; font-family: Calibri; width:40%"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAwardeeNo" ErrorMessage="Please enter Alphanumeric only" ValidationExpression="^[a-z A-Z 0-9 _]*$" ValidationGroup="Form1"></asp:RegularExpressionValidator>
                 <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAwardeeNo" ErrorMessage="Please fill Make/Company" ValidationGroup="Form1"></asp:RequiredFieldValidator>--%><%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtboxPhysicalReferenceNumber" ErrorMessage="Please fill File Number" ValidationGroup="File"></asp:RequiredFieldValidator>--%>
            </td>
        </tr> 
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label11" runat="server" Text="Name(in English)" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtName" runat="server" PlaceHolder="Name(in English)" style="font-size: large; font-family: Calibri; width:40%"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter alphabets" ValidationExpression="^[a-z A-Z -]*$" ValidationGroup="Form1"></asp:RegularExpressionValidator>
                  
            </td>
        </tr>
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label8" runat="server" Text="Name(in Hindi)" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtNameHindi" runat="server" PlaceHolder="Name(in Hindi)" style="font-size: large; font-family: Calibri; width:40%"></asp:TextBox>
                  
            </td>
        </tr>   
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label3" runat="server" Text="Designation(on the date of incident)" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtDesignation" runat="server" PlaceHolder="Designation" style="font-size: large; font-family: Calibri; width:40%"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtDesignation" ErrorMessage="Please enter Alphanumeric only" ValidationExpression="^[a-z A-Z 0-9 _]*$" ValidationGroup="Form1"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label13" runat="server" Text="Date of Birth" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtdateofbirth" runat="server" TextMode="Date" style="font-size: large; font-family: Calibri; width:40%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label9" runat="server" Text="Organisation" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
            <td colspan="2" align="left">
                <asp:TextBox ID="txtOrganisation" runat="server" Placeholder="Organisation"  style="font-size: large; font-family: Calibri; width:40%"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtOrganisation" ErrorMessage="Please enter Alphanumeric only" ValidationExpression="^[a-z A-Z 0-9 _]*$" ValidationGroup="Form1"></asp:RegularExpressionValidator>
            </td>
        </tr> 
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label12" runat="server" Text="Date of Award" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtDateofAward" runat="server" TextMode="Date"  style="font-size: large; font-family: Calibri; width:40%"></asp:TextBox>
            </td>
        </tr> 
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label123" runat="server" Text="Is Posthumous" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:DropDownList ID="ddlposthu" runat="server"  style="font-size: large; font-family: Calibri; width:40%">
                    <asp:ListItem Value="--Select--">--Select--</asp:ListItem>
                    <asp:ListItem Value="Yes">Yes</asp:ListItem>
                    <asp:ListItem Value="No">No</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlposthu" ErrorMessage="Please select status"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label17" runat="server" Text="Name of Next of Kin(posthumous award)" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtnameofnok" runat="server" Placeholder="Name of NOK"  style="font-size: large; font-family: Calibri; width:40%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label18" runat="server" Text="Date of Birth of Next of Kin (NOK)" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtdobnok" runat="server" TextMode="Date"  style="font-size: large; font-family: Calibri; width:40%"></asp:TextBox>
            </td>
        </tr>  
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label15" runat="server" Text="Notification Number" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtNotificationNo" runat="server" PlaceHolder="Notification Number"   style="font-size: large; font-family: Calibri; width:40%"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtNotificationNo" ErrorMessage="Please enter Alphanumeric only" ValidationExpression="^[a-z A-Z 0-9 _]*$" ValidationGroup="Form1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label16" runat="server" Text="Notification Date" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtnotificationdate" runat="server" TextMode="Date"   style="font-size: large; font-family: Calibri; width:40%"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label4" runat="server" Text="Mark of Identification of Awardee/NOK" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtMarkofIdentification" runat="server" PlaceHolder="Mark of Identification" style="font-size: large; font-family: Calibri; width:80%"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtMarkofIdentification" ErrorMessage="Please enter alphabets" ValidationExpression="^[a-z A-Z -]*$" ValidationGroup="Form1"></asp:RegularExpressionValidator>
                 
            </td>
        </tr> 
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label5" runat="server" Text="Address of Awardee/NOK" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtAddressofAwardee" runat="server" PlaceHolder="Address of Awardee" TextMode="MultiLine" style="font-size: large; font-family: Calibri; width:80%; height:100px"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtAddressofAwardee" ErrorMessage="Please enter alphabets" ValidationExpression="^[a-z A-Z -]*$" ValidationGroup="Form1"></asp:RegularExpressionValidator>
            </td>
        </tr> 
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="Label14" runat="server" Text="Mobile Number" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtmobileno" runat="server" PlaceHolder="Mobile Number"   style="font-size: large; font-family: Calibri; width:40%" MaxLength="10"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="txtmobileno" ErrorMessage="Please enter Numeric only" ValidationExpression="^[[0-9]{10}]*$" ValidationGroup="Form1"></asp:RegularExpressionValidator>
            </td>
        </tr>        
         
        <tr>
           <td colspan="3" align="left">
                &nbsp;</td>
             <td colspan="2" align="left">
                 <asp:Image ID="Image1" runat="server" />
                 <asp:Label ID="lblimage" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>  
        
        <tr>
           <td colspan="3" align="left">
                <asp:Label ID="Label7" runat="server" Text="Upload Photo of Awardee" style="font-weight: 700; font-size: large;  font-family: Calibri;"></asp:Label>
            </td>
             <td colspan="2" align="left">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Re-Upload" Visible="False" />
                <asp:FileUpload ID="fileuploadDocument1" runat="server" PlaceHolder="PDF" style="font-size: large; font-family: Calibri; width:300px"></asp:FileUpload>
            </td>
        </tr>  
        
        <tr>
            <td colspan="5">
                <hr />
            </td>
        </tr>   
         <tr>
            <td colspan="2">
                <asp:Button ID="btnSaveAsDraft" runat="server" Text="Save" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="150px"  OnClick="btnSaveAsDraft_Click" ValidationGroup="Form1" />
            </td>
              <td colspan="2">
                <asp:Button ID="btnReset" runat="server" Text="Reset" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="150px" OnClick="btnReset_Click" />
            </td>

             <td>
                 
                <asp:Button ID="btnFinalSubmit" runat="server" Text="Final Submit" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="150px" Visible="false"/>
            </td>
        </tr>
         <tr>
            <td colspan="5">
                <br />
            </td>
        </tr> 
         <tr>
            <td colspan="5">
                <hr />
            </td>
        </tr> 
         <tr>
            <td colspan="5">
               
            </td>
        </tr>
           <tr>
            <td style="text-align:left">
                <asp:TextBox ID="txt_AwardeeNo" runat="server" CssClass="txtboxlarge" Placeholder="ID Number"></asp:TextBox>                
            </td>
            <td style="text-align:left">
                <asp:TextBox ID="txt_Name" runat="server" CssClass="txtboxlarge" Placeholder="Name"></asp:TextBox>                
            </td>
                <td style="text-align:left">
                <asp:TextBox ID="txt_Designation" runat="server" CssClass="txtboxlarge" Placeholder="Designation"></asp:TextBox>
            </td>
                <td style="text-align:left">
                <asp:TextBox ID="txt_Organisation" runat="server" CssClass="txtboxlarge" Placeholder="Organisation"></asp:TextBox>
            </td>                          
            <td style="text-align:left">
                <asp:Button ID="btnSearch" runat="server" Text="Search" BorderStyle="None" Height="30px" style="color: #FFFFFF; font-weight: 700; background-color: #3366FF" Width="100px" OnClick="btnSearch_Click"/>
            </td>
         </tr>
         <tr>
            <td colspan="5">
                <hr />
            </td>
        </tr>    
        <tr>
            <td colspan="5">
                <div style="overflow-y:auto; height:335px">
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
                                <asp:Label ID="lblID" runat="server" Text="S.No"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                          <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Generated No"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPhysicalNumber" runat="server" Text='<%# Eval("Electronic_Reference_Number") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="ID Number"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPhysicalNumber1" runat="server" Text='<%# Eval("Awardee_Number") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Name"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblElectronicNumber" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID2" runat="server" Text="Designation"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblreceivedfrom" runat="server" Text='<%# Eval("Designation") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                          <asp:TemplateField ControlStyle-Width="80%">
                                <HeaderTemplate>
                                    <asp:Label ID="Label9" runat="server" Text="Date of Birth"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label122" runat="server" Text='<%# Eval("Date_of_Birth").ToString() != string.Empty ? Convert.ToDateTime(Eval("Date_of_Birth")).ToString("dd-MM-yyyy"): string.Empty%>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="80%"></ControlStyle>
                            </asp:TemplateField>
                      <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Organisation"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblreceivedfrom1" runat="server" Text='<%# Eval("Organisation") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                       <%-- <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID1" runat="server" Text="Name of NOK"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblreceivedfrom2" runat="server" Text='<%# Eval("Name_of_NOK") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>--%>
                        <asp:TemplateField ControlStyle-Width="80%">
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Document"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="linkDownloadDocument" runat="server" Text='<%# Eval("Document_1") != "" ? "View Document" : "" %>' Onclick="DwloadAnnexIV_Click" CommandArgument='<%# Eval("Document_1") %>' />
                            </ItemTemplate>
                            <ControlStyle Width="80%"></ControlStyle>
                        </asp:TemplateField>
                         <asp:TemplateField ControlStyle-Width="80%">
                                <HeaderTemplate>
                                    <asp:Label ID="Label24" runat="server" Text="Edit"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Button ID="btnEdit" OnClick="btnEdit_Click" runat="server" Text="Edit"  BackColor="Transparent" BorderStyle="None" style="font-family: Calibri; font-weight: 700; text-decoration: underline; color: #003399; background-color: transparent"></asp:Button>
                                </ItemTemplate>
                                <ControlStyle Width="80%"></ControlStyle>
                            </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="80%">
                                <HeaderTemplate>
                                    <asp:Label ID="Label24" runat="server" Text="Print"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnPrint" runat="server" OnClick="btnPrint_Click" CommandArgument='<%# Eval("Electronic_Reference_Number")%>' Text="Print"  BackColor="Transparent" BorderStyle="None" style="font-family: Calibri; font-weight: 700; text-decoration: underline; color: #003399; background-color: transparent"></asp:LinkButton>
                                </ItemTemplate>
                                <ControlStyle Width="80%"></ControlStyle>
                            </asp:TemplateField>
                         <asp:TemplateField ControlStyle-Width="80%" Visible="false">
                                <HeaderTemplate>
                                    <asp:Label ID="Label25" runat="server" Text="Back"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnPrintback" runat="server" Onclick="btnPrintback_Click" CommandArgument='<%# Eval("Electronic_Reference_Number")%>' Text="Print"  BackColor="Transparent" BorderStyle="None" style="font-family: Calibri; font-weight: 700; text-decoration: underline; color: #003399; background-color: transparent"></asp:LinkButton>
                                    <asp:Label ID="Label24" runat="server" Visible="false" Text='<%# Eval("Is_Posthumous")%>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="80%"></ControlStyle>
                            </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                    </div>
            </td>
        </tr>     
        <tr>
            <td colspan="5">
                <br />
            </td>
        </tr>       
        </table>
</asp:Content>


