using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for Utility
/// </summary>
public class Utility
{

    public Utility()
    {

    }

    public void ShowAlert(string msg)
    {
        msg = msg.Replace("'", "\\'");
        string script = "<script type=\"text/javascript\">alert('" + msg + "');</script>";
        Page page = HttpContext.Current.CurrentHandler as Page;
        if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
            page.ClientScript.RegisterClientScriptBlock(typeof(Page), "alert", script);
    }

    public void ShowPopupBox()
    {
        string strPopup = "<script language='javascript' ID='scriptPopup'> window.open('popup.aspx','new window','top=90, left=200, width=400, height=200, dependant=no, location=0, alwaysRaised=no, menubar=no, resizeable=no, scrollbars=no, toolbar=no, status=no, center=yes') </script>";
        ScriptManager.RegisterStartupScript((Page)HttpContext.Current.Handler, typeof(Page), "scriptPopup", strPopup, false);
    }

    public string EnglishToHindi(string englishText)
    {
        return englishText;// Translator.Translate(englishText, Language.English, Language.Hindi);        
    }

}