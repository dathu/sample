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

public partial class msname : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd, cmd1, cmd2, cmd3;
    SqlDataReader dr;
    int i, j, z;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;

        if (!Page.IsPostBack == true)
        {
            con.Open();
            cmd1 = new SqlCommand("select distinct(CatID),Name1 from Comm_Mast where Comm_Div_TypeID=1", con);
            dr = cmd1.ExecuteReader();
            ddlCatID.Items.Clear();
            ddlCatID.Items.Add(" ");
            while (dr.Read())
            {
                ddlCatID.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
            }
            dr.Close();
            con.Close();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();

        // to chk Name already exists or not.
        cmd3 = new SqlCommand("select count(*) from Comm_Mast where Name1 ='" + txtName.Text + "'", con);
        z = Convert.ToInt32(cmd3.ExecuteScalar());
        cmd3.Dispose();
        if (z == 1)
        {
            Label2.Visible = true;
            Label2.Text = "Name Already Exists , Enter Different Name ";

            return;
        }

        String st3 = ddlCatID.SelectedItem.ToString();
        string[] category = st3.Split(new char[] { '-' });
        cmd = new SqlCommand("select count(NameID) from Comm_Mast where CatID=" + category.GetValue(0).ToString() + "", con);
        i = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Dispose();
        if (i == 0)
        {
            i = 1;
        }
        else
        {

            cmd = new SqlCommand("select max(NameID)+1 from Comm_Mast where CatID=" + category.GetValue(0).ToString() + "", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
        }
        cmd1 = new SqlCommand("select count(CommID) from Comm_Mast", con);
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
        k = 2;
        cmd2 = new SqlCommand("insert into Comm_Mast(CommID,Comm_Div_TypeID,CatID,NameID,Name1) values(" + j + "," + k + "," + category.GetValue(0).ToString() + "," + i + ",'" + txtName.Text + "')", con);
        cmd2.ExecuteNonQuery();
        Response.Redirect("nameres.aspx");
        con.Close();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
       txtName.Text = "";
    }


}
