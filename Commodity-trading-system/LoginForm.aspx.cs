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
using System.Data.SqlClient;

public partial class LoginForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd;
    SqlDataReader dr;
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from Login_Form where Status1='" + ddlStatus.SelectedItem.ToString() + "' and flag='Yes'", con);
        dr=cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["UserName"] = txtUserName.Text;
            Session["Pwd"] = txtPassword.Text;
            if (ddlStatus.Text == "Customer")
            {
                if ("" + Session["UserName"]+"" == dr[0].ToString() && ""+ Session["Pwd"] +"" == dr[1].ToString())

                    Response.Redirect("CustomerHome.aspx");
                else
                    Response.Write("Please give valid Username and Password");
            }
            if (ddlStatus.Text == "InfoSupplier")
            {
                if (""+ Session["UserName"] + "" == dr[0].ToString() && ""+ Session["Pwd"] + "" == dr[1].ToString())

                    Response.Redirect("InfoSupplierHome.aspx");
                else
                    Response.Write("Please give valid Username and Password");
            }
            if (ddlStatus.Text == "Administrator")
            {
                if ("" + Session["UserName"] + "" == dr[0].ToString() && ""+ Session["Pwd"]+ "" == dr[1].ToString())

                    Response.Redirect("AdminHome.aspx");
                else
                    Response.Write("Please give valid Username and Password");
            }

        }
        dr.Close();
        con.Close();

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtUserName.Text = "";
        txtPassword.Text = "";
        ddlStatus.Text  = "";
    }
}
