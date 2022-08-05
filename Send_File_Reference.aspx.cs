using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Send_File_Reference : System.Web.UI.Page
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
                    tableSend.Visible = false;
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }
            }
        }
        catch (Exception ex)
        {

        }
    }

    #region CheckBox event

    protected void checkboxAll_CheckedChanged(object sender, EventArgs e)
    {
        if (checkboxAll.Checked)
        {
            foreach (ListItem li in checkboxList.Items)
            {
                li.Selected = true;
            }
        }
        else
        {
            foreach (ListItem li in checkboxList.Items)
            {
                li.Selected = false;
            }
        }
    }

    #endregion

    #region Button Events

    protected void btnUserHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User_Home.aspx");
    }

    protected void btnFileEntry_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/File_Entry.aspx");
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }

    protected void btnView_Click(object sender, EventArgs e)
    {
        try
        {
            Button btn = sender as Button;
            GridViewRow rowSelected = btn.NamingContainer as GridViewRow;
            lblPhysicalReferenceNumber.Text = ((Label)rowSelected.Cells[1].Controls[1]).Text;
            Session["ElectronicReferenceNumber"] = ((Label)rowSelected.Cells[2].Controls[1]).Text;
            lblElectronicReferenceNumber.Text = Session["ElectronicReferenceNumber"].ToString();
            lblCIFNumber.Text = ((Label)rowSelected.Cells[3].Controls[1]).Text;
            lbldateofreceipt.Text = String.Format("{0:yyyy-MM-dd}", DateTime.ParseExact(((Label)rowSelected.Cells[4].Controls[1]).Text, "dd-MM-yyyy", CultureInfo.InvariantCulture));
            lblReceivedFrom.Text = ((Label)rowSelected.Cells[5].Controls[1]).Text;
            lblOtherDivision.Text = ((Label)rowSelected.Cells[6].Controls[1]).Text;
            lblcategory.Text = ((Label)rowSelected.Cells[7].Controls[1]).Text;
            lblSubcategory.Text = ((Label)rowSelected.Cells[8].Controls[1]).Text;
            lblSubject.Text = ((Label)rowSelected.Cells[9].Controls[1]).Text;
            lblDetails.Text = ((Label)rowSelected.Cells[10].Controls[1]).Text;
            lblDocument.Text = ((Label)rowSelected.Cells[11].Controls[1]).Text != string.Empty ? ((Label)rowSelected.Cells[11].Controls[1]).Text.Split('\\').LastOrDefault() : "";
            foreach (GridViewRow row in gridviewFileEntry.Rows)
                row.BackColor = row.RowIndex.Equals(rowSelected.RowIndex) ? Color.Orchid : Color.White;
            Session["IsNewRecord"] = false;
            tableSend.Visible = true;
        }
        catch (Exception ex)
        {
            u.ShowAlert("Failed to select record!!");
        }
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            foreach (ListItem li in checkboxList.Items)
            {
                if (li.Selected)
                {
                    parameters.Clear(); paramValues.Clear();
                    parameters.Add("@Electronic_Reference_Number"); paramValues.Add(lblElectronicReferenceNumber.Text);
                    parameters.Add("@Physical_Reference_Number"); paramValues.Add(lblPhysicalReferenceNumber.Text);
                    parameters.Add("@Date_of_Receipt"); paramValues.Add(lbldateofreceipt.Text.Trim() != "" ? Convert.ToDateTime(lbldateofreceipt.Text.Trim()).ToString("s") : "");
                    parameters.Add("@Received_From"); paramValues.Add(lblReceivedFrom.Text.Trim());
                    parameters.Add("@Sent_To"); paramValues.Add(li.Text);
                    parameters.Add("@Reply_Due_Date"); paramValues.Add(txtDueDateofReply.Text.Trim() != "" ? Convert.ToDateTime(txtDueDateofReply.Text.Trim()).ToString("s") : "");
                    parameters.Add("@Category"); paramValues.Add(lblcategory.Text);
                    parameters.Add("@Sub_Category"); paramValues.Add(lblSubcategory.Text);
                    parameters.Add("@Subject"); paramValues.Add(lblSubject.Text);
                    parameters.Add("@Details"); paramValues.Add(lblDetails.Text);
                    parameters.Add("@Year"); paramValues.Add(DateTime.Now.Year);
                    parameters.Add("@Document_1"); paramValues.Add("~\\Uploads\\" + lblDocument.Text);
                    int i = bl.InsUpdDelRecord("USP_INSERT_SENT_ITEM", parameters.ToArray(), paramValues.ToArray());
                    if (i > 0)
                    {
                        u.ShowAlert("File reference " + lblElectronicReferenceNumber.Text + " is sent successfully to " + li.Text + "!!");
                    }
                }
            }
            Response.Redirect("~/Sent_Items.aspx");
        }
        catch (Exception ex)
        {

        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ResetControls();
        BindGrid();
        tableSend.Visible = false;
    }

    #endregion

    #region Other Methods

    private void BindGrid()
    {
        try
        {
            parameters.Clear(); paramValues.Clear();
            parameters.Add("@Is_Final_Submitted"); paramValues.Add(true);
            gridviewFileEntry.DataSource = bl.GetDataSet("USP_GET_FILE_ENTRIES", parameters.ToArray(), paramValues.ToArray()).Tables[0];
            gridviewFileEntry.DataBind();
        }
        catch (Exception ex)
        {
        }
    }

    private void ResetControls()
    {
        lblElectronicReferenceNumber.Text = "";
        lblSubject.Text = "";
        lblPhysicalReferenceNumber.Text = "";
        lblDetails.Text = "";
    }

    #endregion

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BindFilteredData();
    }

    private void BindFilteredData()
    {
        try
        {
            parameters.Clear(); paramValues.Clear();
            parameters.Add("@Physical_Reference_Number"); paramValues.Add(txt_Reference.Text.Trim());
            parameters.Add("@Electronic_Reference_Number"); paramValues.Add(txtElectronicno.Text.Trim());
            parameters.Add("@Subject"); paramValues.Add(txtsubject.Text.Trim());
            parameters.Add("@date_from"); paramValues.Add(txt_date_from.Text);
            parameters.Add("@date_to"); paramValues.Add(txt_date_to.Text);
            gridviewFileEntry.DataSource = bl.GetDataSet("GetSendReferenceQuery", parameters.ToArray(), paramValues.ToArray()).Tables[0];
            gridviewFileEntry.DataBind();
        }
        catch (Exception ex)
        {

        }
    }
}