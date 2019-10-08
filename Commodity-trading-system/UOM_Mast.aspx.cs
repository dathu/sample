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

public partial class UOM_Mast : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd, cmd2;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtMsrName.Text = "";
        txtMsrStan.Text = "";
        txtMsrValue.Text = "";
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select count(*) from UOM_Mast", con);
        i = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Dispose();
        if (i == 0)
        {
            i = 1;
        }
        else
        {
            cmd = new SqlCommand("select max(MSR_ID)+1 from UOM_Mast", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
        }

        cmd2 = new SqlCommand("insert into UOM_Mast values(" + i + ",'" + txtMsrName.Text + "','" + txtMsrStan.Text + "'," + txtMsrValue.Text + ")", con);
        cmd2.ExecuteNonQuery();
        Response.Redirect("UOMRes.aspx");
        con.Close();
    }
}
