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

public partial class index : System.Web.UI.Page
{
    BusinessLayer bl = new BusinessLayer();
    List<string> parameters = new List<string>();
    List<string> paramValues = new List<string>();
    Utility u = new Utility();
    DataTable dtPMDetails = new DataTable();
    ArrayList cardnumbers = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        //string finalString = "";
        //cardnumbers = (ArrayList)Session["cardnumbers"];
        //for (int i = 0; i < cardnumbers.Count; i++)
        //{
        //  finalString +=  getCard(cardnumbers,i);
        //}

        //divFinalDiv.InnerHtml = finalString;
        //filldetails(Session["EID"].ToString());
        if (!IsPostBack)
        {
            if (Session["EID"] !="")
            {
                //Session["EID"] = "2020/01/001";
                filldetails(Session["EID"].ToString());
            }
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
            //lblElectronicReferenceNumber.Text = Session["ElectronicReferenceNumber"].ToString();
           // Label5.Text = sdr["AwardsHindi"].ToString();
            Label6.Text = sdr["Awards"].ToString();
            //lblNo.Text = "संख्या/No" + ":" + sdr["Awardee_Number"].ToString(); //((Label)rowSelected.Cells[2].Controls[1]).Text;
            lblName1.Text = sdr["Name"].ToString();
            lblNameHindi.Text = sdr["NameHindi"].ToString();
            lblDesignation.Text = sdr["Designation"].ToString();
            lblDOB.Text = Convert.ToDateTime(sdr["Date_of_Birth"]).ToString("dd-MM-yyyy");
            lblOrganisation.Text = sdr["Organisation"].ToString();
            //Label2.Text = sdr["Organisation"].ToString();
            lblDOA.Text =Convert.ToDateTime(sdr["Date_of_Award"]).ToString("dd-MM-yyyy");
           // lblDOAHindi.Text = Convert.ToDateTime(sdr["Date_of_Award"]).ToString("dd-MM-yyyy");
            lblKinName.Text = sdr["Name_of_NOK"].ToString();
            lbldobnok.Text = Convert.ToDateTime(sdr["Dob_NOK"]).ToString("dd-MM-yyyy");
            ImageButton2.ImageUrl = sdr["Document_1"].ToString();
           // ImageButton3.ImageUrl = sdr["Document_1"].ToString();
            Label6.Text = sdr["Notification_No"].ToString();
            //txtNotificationNo.Text = sdr["Notification_No"].ToString();
            Label1.Text = Convert.ToDateTime(sdr["Notification_Date"]).ToString("dd-MM-yyyy");
           // txtnotificationdate.Text = Convert.ToDateTime(sdr["Notification_Date"]).ToString("yyyy-MM-dd");
            Label4.Text = sdr["Mark_of_Identification"].ToString();
           // txtMarkofIdentification.Text = sdr["Mark_of_Identification"].ToString();
            Label11.Text=sdr["Address"].ToString();
           // txtAddressofAwardee.Text = sdr["Address"].ToString();
            Label12.Text = sdr["Mobile_No"].ToString();
            //txtmobileno.Text = sdr["Mobile_No"].ToString();
        }
        bl.CloseConnection();
    }

   
    protected void btnBackPrint_Click(object sender, EventArgs e)
    {
        Response.Redirect("PrintCardBack.aspx");
    }
}