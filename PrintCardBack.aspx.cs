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
public partial class PrintCardBack : System.Web.UI.Page
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
        filldetails(Session["EID"].ToString());
    }

    //protected string getCard(ArrayList cardnumbers,int i)
    //{
    //    parameters.Clear(); paramValues.Clear();
    //    parameters.Add("@uid"); paramValues.Add(cardnumbers[i].ToString());
    //    dtPMDetails = bl.GetDataSet("GetweddingEntries", parameters.ToArray(), paramValues.ToArray()).Tables[0];

    //    string str = "";
    //    str = str + "<div style='width:85%;margin-left:70px;height:auto;page-break-after:always'>";
    //    str = str + "<div id='divheader" + i + "' runat='server' style='height: 100px'>";
    //    str = str + "</div>";
    //    str = str + "<div id='div3"+i+"' runat='server' style='height: auto;text-align:right'>";
    //    str = str + "</div>";
    //    str = str + "<div id='DivMatter" + i + "' runat='server' style='height:auto;margin-top:50px'>";
    //    str = str + "<div id='divName" + i + "' runat='server' style='height: auto;margin-left:50px'>";
    //    str = str + "<Label ID='lblName" + i + "' runat='server' style='font-weight: 700; font-family: Calibri; font-size: larger;'>" + dtPMDetails.Rows[0]["NameInAddress"].ToString() + "  जी,</Label>";
    //    str = str + "</div>";
    //    str = str + "<div id='divReply" + i + "' runat='server' style='height: auto;margin-top:10px;text-align:center'>";

    //    if (dtPMDetails.Rows[0]["type"].ToString() == "Groom weds Bride")
    //        str = str + "<Label ID='lblFirstLine" + i + "' runat='server' Text='' style=' font-family: Calibri; font-size: larger;text-align:center'>" + "चि. " + dtPMDetails.Rows[0]["GroomName"].ToString() + " का  सौ. " + dtPMDetails.Rows[0]["BrideName"].ToString() + " संग" + "</Label>";
    //    else
    //        str = str + "<Label ID='lblFirstLine" + i + "' runat='server' style=' font-family: Calibri; font-size: larger;text-align:center'>" + "सौ. " + dtPMDetails.Rows[0]["BrideName"].ToString() + " का  चि. " + dtPMDetails.Rows[0]["GroomName"].ToString() + " संग" + "</Label>";
    //        //lblFirstLine.Text = "सौ. " + dtPMDetails.Rows[0]["BrideName"].ToString() + " का  चि. " + dtPMDetails.Rows[0]["GroomName"].ToString() + " संग";

    //    str = str + "<div style='margin-top:5px;font-family: Calibri; font-size: larger;'></div>";
    //    str = str + "<Label ID='lblFirstLine" + i + "' runat='server' style=' font-family: Calibri; font-size: larger;text-align:center'>विवाह का स्नेहपूर्ण निमंत्रण मिला।<div style='margin-top:5px'></div>शाश्वत धर्म के अनुसार ........<div style='margin-top:5px'></div>विवाह पूर्णता की ओर एक प्रयाण है।<div style='margin-top:5px'></div>अपूर्णता से पूर्णता की ओर के इस प्रसंग में<div style='margin-top:5px'></div>उपस्थित रहने की ........<div style='margin-top:5px'></div>अदम्य इच्छा होने के बावजूद इस शुभ अवसर पर ........<div style='margin-top:5px'></div>मेरी अनुपस्थिति के लिए<div style='margin-top:5px'></div>मैं क्षमा प्रार्थी हूँ।<div style='margin-top:5px'></div>नव दाम्पत्य जीवन में प्रवेश कर रहे ........<div style='margin-top:5px'></div>नव दंपत्ति के सुखी वैवाहिक जीवन के लिए<div style='margin-top:5px'></div> मेरी शुभकामनाएँ ........<div style='margin-top:5px'></div></Label>";
    //    str = str + "</div>";
    //    str = str + "<div id='div1" + i + " runat='server' style='height: auto;text-align:center;margin-top:20px'>";
    //    str = str + "<Label ID='Label1" + i + "' runat='server' Text='' style='font-weight: 700; font-family: Calibri; font-size: larger;'>आपका</Label>";
    //    str = str + "<br />                    <br />                     <br />";
    //    str = str + "<Label ID='Label2" + i + "' runat='server' Text='' style='font-weight: 700; font-family: Calibri; font-size: larger;'>(अमित शाह)</Label>";
    //    str = str + "</div>";
    //    str = str + "<div id='div2'" + i + "' runat='server' style='height: auto;text-align:left;margin-top:50px;margin-left:50px'>";
    //    str = str + "<Label ID='Label4" + i + "' runat='server' Text='' style='font-weight: 700; font-family: Calibri; font-size: larger;'>प्रति,</Label>";
    //    str = str + "<br />";
    //    str = str + "<Label ID='lblName1" + i + "' runat='server' Text='' style='font-weight: 700; font-family: Calibri; font-size: larger;'>" + dtPMDetails.Rows[0]["WhomToAddress"].ToString() + " जी," + "</Label>";
    //    str = str + "<br /></div>";
    //    str = str + "<div id='div3'" + i + "' runat='server' style='height: auto;text-align:left;width:200px;margin-left:50px'>";
    //    str = str + "<Label ID='lblAddress" + i + "' runat='server' Text='' style=' font-family: Calibri; font-size: larger;'>" + dtPMDetails.Rows[0]["Address"].ToString() + "</Label>";
    //    str = str + "</div>";
    //    str = str + "</div>";
    //    str = str + "</div>";
    //    return str;
    //}

    public void filldetails(string EID)
    {
        EID = Session["EID"].ToString();
        parameters.Clear(); paramValues.Clear();
        parameters.Add("@ElectronicReferenceNumber"); paramValues.Add(EID);
        SqlDataReader sdr = bl.GetDataReader("USP_GET_AWARD_ENTRIESUPDATE", parameters.ToArray(), paramValues.ToArray());
        if (sdr.Read())
        {
            lbl_address.Text= sdr["Address"].ToString();
            lblidentification.Text= sdr["Mark_of_Identification"].ToString(); ;
            lbl_mobile.Text= sdr["Mobile_No"].ToString();
            //lblElectronicReferenceNumber.Text = Session["ElectronicReferenceNumber"].ToString();
            //lblNo.Text = "संख्या/No" + ":" + sdr["Awardee_Number"].ToString(); //((Label)rowSelected.Cells[2].Controls[1]).Text;
            //lblName1.Text = sdr["Name"].ToString();
            //lblNameHindi.Text = sdr["NameHindi"].ToString();
            //lblDesignation.Text = sdr["Designation"].ToString();
            //lblDOB.Text = Convert.ToDateTime(sdr["Date_of_Birth"]).ToString("dd-MM-yyyy");
            //lblOrganisation.Text = sdr["Organisation"].ToString();
            //lblDOA.Text = Convert.ToDateTime(sdr["Date_of_Award"]).ToString("dd-MM-yyyy");
            //lblKinName.Text = sdr["Name_of_NOK"].ToString();
            //lbldobnok.Text = Convert.ToDateTime(sdr["Dob_NOK"]).ToString("dd-MM-yyyy");
            //ImageButton2.ImageUrl = sdr["Document_1"].ToString();
            // ImageButton3.ImageUrl = sdr["Document_1"].ToString();
            //Label6.Text = sdr["Notification_No"].ToString();
            //Label1.Text = Convert.ToDateTime(sdr["Notification_Date"]).ToString("dd-MM-yyyy");
            //Label4.Text = sdr["Mark_of_Identification"].ToString();
            //Label11.Text = sdr["Address"].ToString();
            //Label15.Text = sdr["Mobile_No"].ToString();
        }
        bl.CloseConnection();
    }
}


