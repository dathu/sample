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

public partial class mscategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd, cmd1,cmd2,cmd3;
    int i, j, z;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();

        // to chk Name already exists or not.
        cmd3 = new SqlCommand("select count(*) from Comm_Mast where Name1 ='" + txtCatName.Text + "'", con);
        z = Convert.ToInt32(cmd3.ExecuteScalar());
        cmd3.Dispose();
        if (z == 1)
        {
            Label2.Visible = true;
            Label2.Text = "Name Already Exists , Enter Different Name ";

            return;
        }

        cmd = new SqlCommand("select count(*) from Comm_Mast", con);
        i = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Dispose();
        if (i == 0)
        {
            i = 1;
        }
        else
        {
            cmd = new SqlCommand("select max(CatID)+1 from Comm_Mast", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
        }
        cmd1 = new SqlCommand("select count(*) from Comm_Mast", con);
        j = Convert.ToInt32(cmd1.ExecuteScalar());
        cmd1.Dispose();
        if (j == 0)
        {
            j = 1;
        }
        else
        {
            cmd1 = new SqlCommand("select max(CommID)+1 from Comm_Mast", con);
            j = Convert.ToInt32(cmd1.ExecuteScalar());
            cmd1.Dispose();

        }
        int k;
        k = 1;
        cmd2 = new SqlCommand("insert into Comm_Mast(CommID,Comm_Div_TypeID,CatID,Name1) values(" + j + "," + k + "," + i + ",'" + txtCatName.Text + "')", con);
        cmd2.ExecuteNonQuery();
        Response.Redirect("categoryres.aspx");
        con.Close();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
      txtCatName.Text = "";
    }
}
