using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _360 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Check_UnCheckAll(object sender, EventArgs e)
    {
        foreach (ListItem item in CheckBoxList1.Items)
        {
            item.Selected = CheckBox1.Checked;
        }
    }
  
    protected void CheckBox_Checked_Unchecked(object sender, EventArgs e)
    {
        bool isAllChecked = true;
        foreach (ListItem item in CheckBoxList1.Items)
        {
            if (!item.Selected)
            {
                isAllChecked = false;
                break;
            }
        }

        CheckBox1.Checked = isAllChecked;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string ch = "";
        for (int i = 0;i<CheckBoxList1.Items.Count; i++)
        { 
        
        if (CheckBoxList1.Items[i].Selected)
         {
        if (ch=="")
         {
        ch=CheckBoxList1.Items[i].Text;
        
        }
        else

        {
        ch+=","+CheckBoxList1.Items[i].Text;
        }
        
        }
        }
        string[]str = ch.Split(',');
      
        string m = str[0].ToString();
        //string n = str[1].ToString();
        //string o = str[2].ToString();
        //string k = str[3].ToString();
        Label1.Text = m;
        CheckBoxList2.Text = m;
    }
}