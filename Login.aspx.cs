using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Login : System.Web.UI.Page
{
    BusinessLayer bl = new BusinessLayer();
    Utility u = new Utility();
    SqlDataReader sdr;
    List<string> parameters = new List<string>();
    List<object> paramValues = new List<object>();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session.Clear();
        }
    }

    #region Button Methods
    
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtUserName.Text.Trim() != string.Empty && txtUserName.Text.Trim() != "")
            {
                if (txtPassword.Text.Trim() != string.Empty && txtPassword.Text.Trim() != "")
                {
                    parameters.Add("@Username"); paramValues.Add(txtUserName.Text.Trim());
                    parameters.Add("@Password"); paramValues.Add(txtPassword.Text.Trim());
                    sdr = bl.GetDataReader("USP_LOGIN_USER", parameters.ToArray(), paramValues.ToArray());
                    if (sdr.Read())
                    {
                        Session["UserCode"] = sdr["Username"].ToString();
                        Session["Name"] = sdr["name"].ToString();
                        Session["Role"] = sdr["Role"].ToString();
                        bl.CloseConnection();
                        Response.Redirect("AshokChakraAwardee.aspx", true);
                    }
                    else
                    {
                        u.ShowAlert("Wrong username or password!!");
                    }
                }
                else
                {
                    u.ShowAlert("Please enter Password!!");
                    txtPassword.Focus();
                }
            }
            else
            {
                u.ShowAlert("Please enter Username!!");
                txtUserName.Focus();
            }
        }
        catch (Exception ex)
        {

        }
    }

    #endregion

    protected void btnForget_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ForgetPassword.aspx");
    }
}