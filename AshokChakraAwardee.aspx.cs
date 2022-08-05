using System;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Text;


public partial class AshokChakraAwardee : System.Web.UI.Page
{
    BusinessLayer bl = new BusinessLayer();
    Utility u = new Utility();
    List<string> parameters = new List<string>();
    List<object> paramValues = new List<object>();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (Session["UserCode"] != null)
                {
                    if (Session["Name"] != null)
                        lblName.Text += Session["Name"].ToString();
                   
                    BindGrid();
                    Session["IsNewRecord"] = true;
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }
                GetIPAddress();

            }
          
        }
        catch (Exception ex)
        {

        }
    }
      
       
    private string GetIPAddress()
    {
        StringBuilder sb = new StringBuilder();
        String strHostName = string.Empty;
        strHostName = Dns.GetHostName();
        //sb.Append("The Local Machine Host Name: " + strHostName);
        //sb.AppendLine();
        //IPHostEntry ipHostEntry = Dns.GetHostEntry(strHostName);
        //IPAddress[] address = ipHostEntry.AddressList;
        //string ip = address[1].ToString();
        Session["IPAdd"] = Request.UserHostAddress.ToString();
        //sb.Append("The Local IP Address: " + address[3].ToString());
        //sb.AppendLine();
        return sb.ToString();
    }

    #region Button Events

    

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }

   
    protected void btnSaveAsDraft_Click(object sender, EventArgs e)
    {
        if (FieldValidate1())
        {

            try
            {
               
                if ((fileuploadDocument1.HasFile) || (lblimage.Text != ""))
                {
                    string fileName = Path.GetFileName(fileuploadDocument1.FileName);
                    string folderPath = "~\\Uploads\\";
                    if (!Directory.Exists(Server.MapPath(folderPath)))
                    {
                        Directory.CreateDirectory(Server.MapPath(folderPath));
                    }

                    if (fileuploadDocument1.HasFile)
                    {
                        string ext = System.IO.Path.GetExtension(fileuploadDocument1.FileName).ToString().ToLower();
                        if (ext == ".pdf" || ext == ".png" || ext == ".jpg" || ext == ".jpeg")
                        {
                            //if (fileName.Substring(fileName.LastIndexOf('.'), 4).Equals(".pdf", StringComparison.OrdinalIgnoreCase) || fileName.Substring(fileName.LastIndexOf('.'), 4).Equals(".jpg", StringComparison.OrdinalIgnoreCase) || fileName.Substring(fileName.LastIndexOf('.'), 5).Equals(".jpeg", StringComparison.OrdinalIgnoreCase))
                            //{
                            fileuploadDocument1.SaveAs(Server.MapPath(folderPath) + fileName);
                            Image1.ImageUrl = "~\\Uploads\\" + fileuploadDocument1.PostedFile.FileName;
                            //}
                        }
                        else
                        {
                            u.ShowAlert("Only .pdf, .jpg ,.png file can be uploaded!");
                            return;
                        }
                    }


                }
                else
                {
                    u.ShowAlert("Please upload photo!");
                    return;
                }
                if (Session["IsNewRecord"] != null && Convert.ToBoolean(Session["IsNewRecord"]) == true)
                {
                    int count = 0;
                    object o = bl.GetScalar("USP_GET_MAX_ELECTRONIC_NUMBER", null, null);
                    if (o != null)
                    {
                        count = Convert.ToInt32(o.ToString().Split('/')[2]) + 1;
                    }
                    else
                    {
                        count = 1;
                    }
                    string electronicReferenceNumber = DateTime.Now.Year + "/" + DateTime.Now.Month.ToString("00") + "/" + count.ToString("d3");
                    parameters.Clear(); paramValues.Clear();
                    parameters.Add("@Electronic_Reference_Number"); paramValues.Add(electronicReferenceNumber);
                    parameters.Add("@Award"); paramValues.Add(ddlAwards.SelectedItem.Text);
                    parameters.Add("@AwardHindi"); paramValues.Add(ddlAwards.SelectedValue);
                    parameters.Add("@Awardee_No"); paramValues.Add(txtAwardeeNo.Text.Trim());
                    parameters.Add("@Name"); paramValues.Add(txtName.Text.Trim());
                    parameters.Add("@NameHindi"); paramValues.Add(txtNameHindi.Text.Trim());
                    parameters.Add("@Designation"); paramValues.Add(txtDesignation.Text.Trim());
                    parameters.Add("@Date_of_Birth"); paramValues.Add(txtdateofbirth.Text.Trim() != "" ? Convert.ToDateTime(txtdateofbirth.Text.Trim()).ToString("s") : "");
                    parameters.Add("@Organisation"); paramValues.Add(txtOrganisation.Text.Trim());
                    parameters.Add("@Date_of_Award"); paramValues.Add(txtDateofAward.Text.Trim() != "" ? Convert.ToDateTime(txtDateofAward.Text.Trim()).ToString("s") : "");
                    parameters.Add("@Is_Posthumous"); paramValues.Add(ddlposthu.SelectedItem.Text);
                    parameters.Add("@Name_of_NOK"); paramValues.Add(txtnameofnok.Text.Trim());
                    parameters.Add("@Date_of_BirthNOK"); paramValues.Add(txtdobnok.Text.Trim() != "" ? Convert.ToDateTime(txtdobnok.Text.Trim()).ToString("s") : "");
                    //if (txtdobnok.Text != "")
                    //{
                    //    parameters.Add("@Date_of_BirthNOK"); paramValues.Add(txtdobnok.Text.Trim() != "" ? Convert.ToDateTime(txtdobnok.Text.Trim()).ToString("s") : "");
                    //}
                    //else
                    //{
                    //    parameters.Add("@Date_of_BirthNOK"); paramValues.Add(DBNull.Value);

                    //}
                    parameters.Add("@Notification_No"); paramValues.Add(txtNotificationNo.Text.Trim());
                    parameters.Add("@Notification_Date"); paramValues.Add(txtnotificationdate.Text.Trim() != "" ? Convert.ToDateTime(txtnotificationdate.Text.Trim()).ToString("s") : "");
                    parameters.Add("@Mark_of_Identification"); paramValues.Add(txtMarkofIdentification.Text.Trim());
                    parameters.Add("@Address_of_Awardee"); paramValues.Add(txtAddressofAwardee.Text.Trim());
                    parameters.Add("@MobileNo"); paramValues.Add(txtmobileno.Text.Trim());
                    parameters.Add("@Year"); paramValues.Add(DateTime.Now.Year);
                    if (fileuploadDocument1.HasFile)
                    {
                        parameters.Add("@Document_1"); paramValues.Add("~\\Uploads\\" + fileuploadDocument1.PostedFile.FileName);
                    }
                    else
                    {
                        parameters.Add("@Document_1"); paramValues.Add("");
                        lblimage.Visible = true;
                    }
                    parameters.Add("@Entry_By"); paramValues.Add(Session["Name"].ToString());
                    parameters.Add("@IP"); paramValues.Add(Session["IPAdd"].ToString());
                    parameters.Add("@Is_Final_Submitted"); paramValues.Add(false);
                    parameters.Add("@Is_Sent"); paramValues.Add(false);
                    int i = bl.InsUpdDelRecord("USP_INSERT_AWARDS_ENTRY", parameters.ToArray(), paramValues.ToArray());
                    if (i > 0)
                    {
                        u.ShowAlert("Awardee Details " + electronicReferenceNumber + " is Saved successfully!!");
                    }
                    Image1.ImageUrl = "";
                    lblimage.Text = "";
                    lblimage.Visible = false;
                    ResetControls();

                }

                else
                {
                    if ((fileuploadDocument1.Visible==true)&&(fileuploadDocument1.HasFile==false))
                    {
                        u.ShowAlert("Please upload photo!");
                        return;
                    }
                    parameters.Clear(); paramValues.Clear();
                    parameters.Add("@Electronic_Reference_Number"); paramValues.Add(Session["ElectronicReferenceNumber"].ToString());
                    parameters.Add("@Award"); paramValues.Add(ddlAwards.SelectedItem.Text);
                    parameters.Add("@AwardHindi"); paramValues.Add(ddlAwards.SelectedValue);
                    parameters.Add("@Awardee_No"); paramValues.Add(txtAwardeeNo.Text.Trim());
                    parameters.Add("@Name"); paramValues.Add(txtName.Text.Trim());
                    parameters.Add("@NameHindi"); paramValues.Add(txtNameHindi.Text.Trim());
                    parameters.Add("@Designation"); paramValues.Add(txtDesignation.Text.Trim());
                    parameters.Add("@Date_of_Birth"); paramValues.Add(txtdateofbirth.Text.Trim() != "" ? Convert.ToDateTime(txtdateofbirth.Text.Trim()).ToString("s") : "");
                    parameters.Add("@Organisation"); paramValues.Add(txtOrganisation.Text.Trim());
                    parameters.Add("@Date_of_Award"); paramValues.Add(txtDateofAward.Text.Trim() != "" ? Convert.ToDateTime(txtDateofAward.Text.Trim()).ToString("s") : "");
                    parameters.Add("@Is_Posthumous"); paramValues.Add(ddlposthu.SelectedItem.Text);
                    parameters.Add("@Name_of_NOK"); paramValues.Add(txtnameofnok.Text.Trim());
                    parameters.Add("@Date_of_BirthNOK"); paramValues.Add(txtdobnok.Text.Trim() != "" ? Convert.ToDateTime(txtdobnok.Text.Trim()).ToString("s") : "");
                    //if (txtdobnok.Text != "")
                    //{
                    //    parameters.Add("@Date_of_BirthNOK"); paramValues.Add(txtdobnok.Text.Trim() != "" ? Convert.ToDateTime(txtdobnok.Text.Trim()).ToString("s") : "");
                    //}
                    //else
                    //{
                    //    parameters.Add("@Date_of_BirthNOK"); paramValues.Add(DBNull.Value);

                    //}
                    parameters.Add("@Notification_No"); paramValues.Add(txtNotificationNo.Text.Trim());
                    parameters.Add("@Notification_Date"); paramValues.Add(txtnotificationdate.Text.Trim() != "" ? Convert.ToDateTime(txtnotificationdate.Text.Trim()).ToString("s") : "");
                    parameters.Add("@Mark_of_Identification"); paramValues.Add(txtMarkofIdentification.Text.Trim());
                    parameters.Add("@Address_of_Awardee"); paramValues.Add(txtAddressofAwardee.Text.Trim());
                    parameters.Add("@MobileNo"); paramValues.Add(txtmobileno.Text.Trim());
                    parameters.Add("@Year"); paramValues.Add(DateTime.Now.Year);
                    parameters.Add("@Updated_By"); paramValues.Add(Session["Name"].ToString());
                    parameters.Add("@IP"); paramValues.Add(Session["IPAdd"].ToString());
                    lblimage.Text = Session["Image"].ToString();

                    if (fileuploadDocument1.HasFile)
                    {
                        parameters.Add("@Document_1"); paramValues.Add("~\\Uploads\\" + fileuploadDocument1.PostedFile.FileName);
                    }
                    else
                    {
                        parameters.Add("@Document_1"); paramValues.Add(lblimage.Text);
                        lblimage.Visible = true;
                    }
                    parameters.Add("@Is_Final_Submitted"); paramValues.Add(false);
                    parameters.Add("@Is_Sent"); paramValues.Add(false);
                    int i = bl.InsUpdDelRecord("USP_UPDATE_AWARDS_ENTRY", parameters.ToArray(), paramValues.ToArray());
                    if (i > 0)
                    {
                        u.ShowAlert("Awardee Details " + Session["ElectronicReferenceNumber"].ToString() + " is updated successfully!!");
                       
                    }
                }
                Session["IsNewRecord"] = true;
                BindGrid();
                ResetControls();
                lblimage.Visible = false;
                lblimage.Text = "";
                Image1.ImageUrl = "";
                Button1.Visible = false;
                fileuploadDocument1.Visible = true;
               
            }
            catch (Exception)
            {
                
                throw;
            }

        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        try
        {
            Session["IsNewRecord"] = true;
            ResetControls();
            Image1.Visible = false;
            lblimage.Visible = false;
            fileuploadDocument1.Visible = true;
            Button1.Visible = false;            
            BindGrid();
        }
        catch (Exception ex)
        {

        }
    }

    //protected void btnFinalSubmit_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        if (fileuploadDocument1.HasFile)
    //        {
    //            string fileName = Path.GetFileName(fileuploadDocument1.FileName);
    //            string folderPath = "~\\Uploads\\";
    //            if (!Directory.Exists(Server.MapPath(folderPath)))
    //            {
    //                Directory.CreateDirectory(Server.MapPath(folderPath));
    //            }
    //            if (fileName.Substring(fileName.LastIndexOf('.'), 4).Equals(".pdf", StringComparison.OrdinalIgnoreCase) || fileName.Substring(fileName.LastIndexOf('.'), 4).Equals(".jpg", StringComparison.OrdinalIgnoreCase) || fileName.Substring(fileName.LastIndexOf('.'), 5).Equals(".jpeg", StringComparison.OrdinalIgnoreCase))
    //            {
    //                fileuploadDocument1.SaveAs(Server.MapPath(folderPath) + fileName);
    //            }
    //            else
    //            {
    //                u.ShowAlert("Only pdf or jpeg file can be uploaded!");
    //            }
    //        }
    //        if (Session["IsNewRecord"] != null && Convert.ToBoolean(Session["IsNewRecord"]) == true)
    //        {
    //            int count = 0;
    //            object o = bl.GetScalar("USP_GET_MAX_ELECTRONIC_NUMBER", null, null);
    //            if (o != null)
    //            {
    //                count = Convert.ToInt32(o.ToString().Split('/')[2]) + 1;
    //            }
    //            else
    //            {
    //                count = 1;
    //            }
    //            string electronicReferenceNumber = DateTime.Now.Year + "/" + DateTime.Now.Month.ToString("00") + "/" + count.ToString("d3");
    //            parameters.Clear(); paramValues.Clear();
    //            parameters.Add("@Electronic_Reference_Number"); paramValues.Add(electronicReferenceNumber);
    //            parameters.Add("@Physical_Reference_Number"); paramValues.Add(txtboxPhysicalReferenceNumber.Text.Trim());
    //            parameters.Add("@CIF_Number"); paramValues.Add(txtCIFNumber.Text.Trim());
    //            parameters.Add("@Date_of_Receipt"); paramValues.Add(txtdateofreceipt.Text.Trim() != "" ? Convert.ToDateTime(txtdateofreceipt.Text.Trim()).ToString("s") : "");
    //            parameters.Add("@If_Other_Division"); paramValues.Add(txtotherdivision.Text.Trim());
    //            parameters.Add("@Subject"); paramValues.Add(txtboxSubject.Text.Trim());
    //            parameters.Add("@Details"); paramValues.Add(txtboxDetails.Text.Trim());
    //            parameters.Add("@Year"); paramValues.Add(DateTime.Now.Year);
    //            parameters.Add("@Document_1"); paramValues.Add("~\\Uploads\\" + fileuploadDocument1.PostedFile.FileName);
    //            parameters.Add("@Is_Final_Submitted"); paramValues.Add(true);
    //            parameters.Add("@Is_Sent"); paramValues.Add(false);
    //            int i = bl.InsUpdDelRecord("USP_INSERT_FILE_ENTRY", parameters.ToArray(), paramValues.ToArray());
    //            if (i > 0)
    //            {
    //                u.ShowAlert("File reference " + electronicReferenceNumber + " is created successfully!!");
    //            }
    //        }
    //        else
    //        {
    //            parameters.Clear(); paramValues.Clear();
    //            parameters.Add("@Electronic_Reference_Number"); paramValues.Add(Session["ElectronicReferenceNumber"].ToString());
    //            parameters.Add("@Physical_Reference_Number"); paramValues.Add(txtboxPhysicalReferenceNumber.Text.Trim());
    //            parameters.Add("@CIF_Number"); paramValues.Add(txtCIFNumber.Text.Trim());
    //            parameters.Add("@Date_of_Receipt"); paramValues.Add(txtdateofreceipt.Text.Trim() != "" ? Convert.ToDateTime(txtdateofreceipt.Text.Trim()).ToString("s") : "");
    //            parameters.Add("@If_Other_Division"); paramValues.Add(txtotherdivision.Text.Trim());
    //            parameters.Add("@Subject"); paramValues.Add(txtboxSubject.Text.Trim());
    //            parameters.Add("@Details"); paramValues.Add(txtboxDetails.Text.Trim());
    //            parameters.Add("@Year"); paramValues.Add(DateTime.Now.Year);
    //            parameters.Add("@Document_1"); paramValues.Add("~\\Uploads\\" + fileuploadDocument1.PostedFile.FileName);
    //            parameters.Add("@Is_Final_Submitted"); paramValues.Add(true);
    //            parameters.Add("@Is_Sent"); paramValues.Add(false);
    //            int i = bl.InsUpdDelRecord("USP_UPDATE_FILE_ENTRY", parameters.ToArray(), paramValues.ToArray());
    //            if (i > 0)
    //            {
    //                u.ShowAlert("File reference " + Session["ElectronicReferenceNumber"].ToString() + " is updated successfully!!");
    //            }
    //        }
    //        Session["IsNewRecord"] = true;
    //        BindGrid();
    //        ResetControls();
    //        Response.Redirect("Send_File_Reference.aspx");
    //    }
    //    catch (Exception ex)
    //    {

    //    }
    //}

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        try
        {
            string filename = (sender as Button).CommandArgument;

            if (filename != "")
            {
                Response.ContentType = "Application/pdf";
                Response.AppendHeader("Content-Disposition", "attachment; filename=RajyaSabhaFile4.pdf");
                Response.TransmitFile(filename);
                Response.End();
            }
            else
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('', 'File Not Uploaded', 'error');", true);
            }
            Button btn = sender as Button;
            GridViewRow rowSelected = btn.NamingContainer as GridViewRow;
            Session["ElectronicReferenceNumber"] = ((Label)rowSelected.Cells[1].Controls[1]).Text;
            parameters.Clear(); paramValues.Clear();
            parameters.Add("@ElectronicReferenceNumber"); paramValues.Add(Session["ElectronicReferenceNumber"].ToString());
            SqlDataReader sdr = bl.GetDataReader("USP_GET_AWARD_ENTRIESUPDATE", parameters.ToArray(), paramValues.ToArray());
            if (sdr.Read())
            {
                lblElectronicReferenceNumber.Text = Session["ElectronicReferenceNumber"].ToString();
                //ddlAwards.ClearSelection(); ddlAwards.Items.FindByText(sdr["Awards"].ToString().Trim()).Selected = true;
                ddlAwards.ClearSelection(); ddlAwards.SelectedItem.Text = sdr["Awards"].ToString().Trim();
                ddlAwards.ClearSelection(); ddlAwards.SelectedValue= sdr["AwardsHindi"].ToString().Trim();
                txtAwardeeNo.Text = sdr["Awardee_Number"].ToString(); //((Label)rowSelected.Cells[2].Controls[1]).Text;
                txtName.Text = sdr["Name"].ToString();
                txtNameHindi.Text = sdr["NameHindi"].ToString();
                txtDesignation.Text = sdr["Designation"].ToString();
                txtdateofbirth.Text = Convert.ToDateTime(sdr["Date_of_Birth"]).ToString("yyyy-MM-dd");
                txtOrganisation.Text = sdr["Organisation"].ToString();
                txtDateofAward.Text =  Convert.ToDateTime(sdr["Date_of_Award"]).ToString("yyyy-MM-dd");
                ddlposthu.ClearSelection(); ddlposthu.SelectedItem.Text = sdr["Is_Posthumous"].ToString().Trim();
                Session["is_posthumous"] = ddlposthu.SelectedItem.Text;
                txtnameofnok.Text = sdr["Name_of_NOK"].ToString();
                txtdobnok.Text = Convert.ToDateTime(sdr["Dob_NOK"]).ToString("yyyy-MM-dd");
                ////string date = sdr["Dob_NOK"].ToString();
                ////txtdobnok.Text = DateTime.Parse(date).ToString("yyyy-MM-dd");
                //txtdobnok.Text= sdr["Dob_NOK"].ToString();
                txtNotificationNo.Text = sdr["Notification_No"].ToString();
                txtnotificationdate.Text = Convert.ToDateTime(sdr["Notification_Date"]).ToString("yyyy-MM-dd");
                txtMarkofIdentification.Text = sdr["Mark_of_Identification"].ToString();
                txtAddressofAwardee.Text = sdr["Address"].ToString();
                txtmobileno.Text = sdr["Mobile_No"].ToString();
                string str = sdr["Document_1"].ToString();
                Image1.ImageUrl = sdr["Document_1"].ToString();                 
                Button1.Visible = true;
                Image1.Visible = true;
                string x = sdr["Document_1"].ToString();
                string[] p = x.Split('\\');
                string flname = p[p.Length - 1];
                lblimage.Text = flname;
                lblimage.Visible = true;
                Session["Image"] = sdr["Document_1"].ToString(); ;
                fileuploadDocument1.Visible = false;
              
              
            }
            bl.CloseConnection();
            foreach (GridViewRow row in gridviewFileEntry.Rows)
                row.BackColor = row.RowIndex.Equals(rowSelected.RowIndex) ? Color.Orchid : Color.White;
            Session["IsNewRecord"] = false;
        }
        catch (Exception ex)
        {
            u.ShowAlert("Failed to select record!!");
        }
    }

    protected void DwloadAnnexIV_Click(object sender, EventArgs e)
    {
        try
        {
            string filePath = (sender as LinkButton).CommandArgument;
            if (filePath != null && filePath != "")
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + filePath);
                string abc = filePath;
                Response.TransmitFile(Server.MapPath(abc));
                //Response.TransmitFile(filePath);
                Response.End();
            }
            else
                u.ShowAlert("Document not found!!");
        }
        catch (Exception ex)
        {
            u.ShowAlert("Document not found!!");
        }
    }

    #endregion

    #region Other Methods

    private void BindGrid()
    {
        try
        {
            parameters.Clear(); paramValues.Clear();
            gridviewFileEntry.DataSource = bl.GetDataSet("USP_GET_AWARD_ENTRIES", parameters.ToArray(), paramValues.ToArray()).Tables[0];
            gridviewFileEntry.DataBind();
        }
        catch (Exception ex)
        {
        }
    }

    private void ResetControls()
    {
        lblElectronicReferenceNumber.Text = string.Empty;
        ddlAwards.SelectedIndex = 0;
        txtAwardeeNo.Text = string.Empty;
        txtName.Text = string.Empty;
        txtNameHindi.Text = string.Empty;
        txtDesignation.Text = string.Empty;
        txtdateofbirth.Text = string.Empty;
        txtOrganisation.Text = string.Empty;
        txtDateofAward.Text = string.Empty;
        txtnameofnok.Text = string.Empty;
        txtdobnok.Text = string.Empty;
        txtNotificationNo.Text = string.Empty;
        txtnotificationdate.Text = string.Empty;
        txtMarkofIdentification.Text = string.Empty;
        txtAddressofAwardee.Text = string.Empty;
        txtmobileno.Text = string.Empty;
        ddlAwards.SelectedItem.Text = "--Select Award--";
    }

    Boolean checkFileExtension(FileUpload passfile)
    {
        bool flag = false;
        string file = passfile.PostedFile.FileName;
        if (file.Where(x => x == '.').Skip(1).Any())
            flag = false;
        else
            flag = true;
        return flag;
    }

    #endregion

   
    protected void btnPrint_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.Parent.Parent;

        LinkButton lnkBtn = (LinkButton)row.FindControl("btnPrint");
        Label ispos = (Label)row.FindControl("Label24");        
        //LinkButton lnkbtn = sender as LinkButton;
        //LinkButton lnkBtn = (LinkButton)row.FindControl("btnPrint");
        string EID = lnkBtn.CommandArgument;
        Session["EID"] = EID;
        Session["is_posthumous"] = ispos;
        // Response.Redirect("IDCARD.aspx");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('PrintCardnew.aspx','_newtab');", true);
        //Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('PrintCardFront.aspx','_newtab');", true);
        // Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('IDCARD.aspx','_newtab');", true);

    }

    protected void btnPrintback_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow row = (GridViewRow)lnk.Parent.Parent;

        LinkButton lnkBtn = (LinkButton)row.FindControl("btnPrintback");
        //LinkButton lnkbtn = sender as LinkButton;
        //LinkButton lnkBtn = (LinkButton)row.FindControl("btnPrint");
        string EID = lnkBtn.CommandArgument;
        Session["EID"] = EID;
        //Response.Redirect("PrintCardBack.aspx");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('PrintCardBack.aspx','_newtab');", true);
    }



    protected Boolean FieldValidate1()
    {
        if (ddlAwards.SelectedItem.Text == "--Select Award--")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Select Awards.')", true);
            return false;
        }
        if (txtAwardeeNo.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter ID No.')", true);
            return false;
        }
       
        if (txtName.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter Name.')", true);
            return false;
        }
        if (txtNameHindi.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter name in hindi.')", true);
            return false;
        }
        
        if (txtDesignation.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter Designation.')", true);
            return false;
        }
        
        if (txtdateofbirth.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter date of birth.')", true);
            return false;
        }
        if (txtOrganisation.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter Organisation.')", true);
            return false;
        }
        if (txtDateofAward.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter Date of award')", true);
            return false;
        }
        if (txtnameofnok.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter Name of Next of kin')", true);
            return false;
        }
        if (txtNotificationNo.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter Notification No')", true);
            return false;
        }
        if (txtnotificationdate.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter the Notification date')", true);
            return false;
        }
        if (txtMarkofIdentification.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter Mark of Identification')", true);
            return false;
        }
        if (txtAddressofAwardee.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter Address')", true);
            return false;
        }
        if (txtmobileno.Text == "")
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alert", "alert('Please Enter the Mobile No')", true);
            return false;
        }
             
        return true;
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BindFilteredData();
    }

    private void BindFilteredData()
    {
        try
        {
            parameters.Clear(); paramValues.Clear();
            parameters.Add("@IDNumber"); paramValues.Add(txt_AwardeeNo.Text.Trim());
            parameters.Add("@Name"); paramValues.Add(txt_Name.Text.Trim());
            parameters.Add("@Designation"); paramValues.Add(txt_Designation.Text.Trim());
            parameters.Add("@Organisation"); paramValues.Add(txt_Organisation.Text.Trim());
            gridviewFileEntry.DataSource = bl.GetDataSet("GetAwardFilterData", parameters.ToArray(), paramValues.ToArray()).Tables[0];
            gridviewFileEntry.DataBind();
        }
        catch (Exception ex)
        {

        }
    }

   
    protected void Button1_Click(object sender, EventArgs e)
    {
        fileuploadDocument1.Visible = true;
        Image1.Visible = false;
        lblimage.Visible = false;
        Button1.Visible = false;
    }
   
}