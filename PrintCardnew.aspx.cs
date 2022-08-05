using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class PrintCardnew : System.Web.UI.Page
{
    BusinessLayer bl = new BusinessLayer();
    List<string> parameters = new List<string>();
    List<string> paramValues = new List<string>();
    Utility u = new Utility();
    DataTable dtPMDetails = new DataTable();
    ArrayList cardnumbers = new ArrayList();
    //Masterclass mst = new Masterclass();
    public SqlConnection strsql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["EID"] != "" && Session["EID"]!=null)
        {
            //Session["EID"] = "2020/01/001";
            filldetails(Session["EID"].ToString());
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

        public void filldetails(string EID)
    {
        EID = Session["EID"].ToString();
        parameters.Clear(); paramValues.Clear();
        parameters.Add("@ElectronicReferenceNumber"); paramValues.Add(EID);
        SqlDataReader sdr = bl.GetDataReader("USP_GET_AWARD_ENTRIESUPDATE", parameters.ToArray(), paramValues.ToArray());
        if (sdr.Read())
        {
            string ispos = sdr["Is_Posthumous"].ToString();
            if (ispos == "No")          
            {
              
                divnopos.Visible = true;                
                divyespos.Visible = false;
                string name= sdr["Awards"].ToString();
                lblName_of_Award.Text = name.ToUpper();
                lblname.Text = sdr["Name"].ToString();
                lbldesig.Text = sdr["Designation"].ToString();
                lbldob.Text = Convert.ToDateTime(sdr["Date_of_Birth"]).ToString("dd-MM-yyyy");
                lblorg.Text = sdr["Organisation"].ToString();
                lbldoa.Text = Convert.ToDateTime(sdr["Date_of_Award"]).ToString("dd-MM-yyyy");
                Image3.ImageUrl = sdr["Document_1"].ToString();
                lblNo.Text = "ID No" + ":" + sdr["Awardee_Number"].ToString();
            }
            else
            {
                divyespos.Visible = true;
                divnopos.Visible = false;
                lblkin.Visible = true;
                lblawardee.Visible = true;
                lblkindoa.Visible = true;
                lbldobnok.Visible = true;
                string name = sdr["Awards"].ToString();
                lblName_of_Award0.Text = name.ToUpper();              
                lblawardee.Text = sdr["Name"].ToString();
                lblkin.Text = sdr["Name_of_NOK"].ToString();
                lblnoti.Text= sdr["Notification_No"].ToString();
                lbldobnok.Text = Convert.ToDateTime(sdr["Dob_NOK"]).ToString("dd-MM-yyyy");
                lblkindoa.Text = Convert.ToDateTime(sdr["Date_of_Award"]).ToString("dd-MM-yyyy");
                Image1.ImageUrl = sdr["Document_1"].ToString();
                lblNo2.Text = "ID No" + ":" + sdr["Awardee_Number"].ToString();
            }
            lbl_address.Text = sdr["Address"].ToString();
            lblidentification.Text = sdr["Mark_of_Identification"].ToString(); ;
            lbl_mobile.Text = sdr["Mobile_No"].ToString();
            lbl_date_issue.Text = DateTime.Now.ToShortDateString();
        }
        bl.CloseConnection();
    }
    protected void gbck_Click(object sender, EventArgs e)
    {
        Response.Redirect("AshokChakraAwardee.aspx");
    }
}
