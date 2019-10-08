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

public partial class mscity : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd, cmd3;
    int z;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();

        // to chk Name already exists or not.
        cmd3 = new SqlCommand("select count(*) from City_Mast where cityid =" + txtCityID.Text + "", con);
        z = Convert.ToInt32(cmd3.ExecuteScalar());
        cmd3.Dispose();
        if (z == 1)
        {
            Label3.Visible = true;
            Label3.Text = "City Id Already Exists , Enter Different City Id ";

            return;
        }


        cmd = new SqlCommand("insert into City_Mast values(" + txtCityID.Text  + ",'" + txtCityName.Text + "')", con);
        cmd.ExecuteNonQuery();
        Response.Redirect("cityres.aspx");
        con.Close();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtCityID.Text = "";
        txtCityName.Text = "";
    }
}
