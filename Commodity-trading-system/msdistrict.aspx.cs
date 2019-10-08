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


public partial class msdistrict : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd, cmd1,cmd2,cmd3;
    SqlDataReader dr;
    int i, j, z;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
        if (!Page.IsPostBack == true)
        {
            con.Open();
            cmd1 = new SqlCommand("select distinct(StateID),Name1 from Loc_Mast where Loc_TypeID=1", con);
            dr = cmd1.ExecuteReader();
            ddlStID.Items.Clear();
            ddlStID.Items.Add(" ");
            while (dr.Read())
            {
                ddlStID.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
            }
            dr.Close();
            con.Close();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        // to chk Name already exists or not.
        cmd3 = new SqlCommand("select count(*) from Loc_Mast where Name1 ='" + txtDistName.Text + "'", con);
        z = Convert.ToInt32(cmd3.ExecuteScalar());
        cmd3.Dispose();
        if (z == 1)
        {
            Label2.Visible = true;
            Label2.Text="Name Already Exists , Enter Different Name ";

            return;
        }


        String st3 = ddlStID.SelectedItem.ToString();
        string[] state = st3.Split(new char[] { '-' });
        
        cmd = new SqlCommand("select count(DistID) from Loc_Mast where StateID=" + state.GetValue(0).ToString() + "", con);
        i = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Dispose();
        if (i == 0)
        {
            i = 1;
        }
        else
        {
            cmd = new SqlCommand("select max(DistID)+1 from Loc_Mast where StateID=" + state.GetValue(0).ToString() + "", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
        }
        cmd1 = new SqlCommand("select count(LocID) from Loc_Mast", con);
        j = Convert.ToInt32(cmd1.ExecuteScalar());
        cmd1.Dispose();
        if (j == 0)
        {
            j = 1;
        }
        else
        {
            cmd1 = new SqlCommand("select max(LocID)+1 from Loc_Mast", con);
            j = Convert.ToInt32(cmd1.ExecuteScalar());
            cmd1.Dispose();

        }
        int k;
        k = 2;
        cmd2 = new SqlCommand("insert into Loc_Mast(LocID,Loc_TypeID,StateID,DistID,Name1) values(" + j + "," + k + "," + state.GetValue(0).ToString() + "," + i + ",'" + txtDistName.Text + "')", con);
        cmd2.ExecuteNonQuery();
        Response.Redirect("distres.aspx");
        con.Close();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
      txtDistName.Text = "";
    }
}
