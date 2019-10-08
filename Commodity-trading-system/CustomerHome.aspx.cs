using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CustomerHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       if (DropDownList1.SelectedItem.Text == "Commodity List")
        {
            Session["repname"] = "Commodity List";
            Response.Redirect("Reposhowinfo.aspx");
        }


        if (DropDownList1.SelectedItem.Text == "Location List")
        {
            Session["repname"] = "Location List";
            Response.Redirect("Reposhowinfo.aspx");
        }
        
        if (DropDownList1.SelectedItem.Text == "Market List")
        {
            Session["repname"] = "Market List";
            Response.Redirect("Reposhowinfo.aspx");
        }
    }
}
