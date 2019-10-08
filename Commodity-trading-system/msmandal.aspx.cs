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

public partial class msmandal : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd, cmd1,cmd2,cmd3;
    SqlDataReader dr;
    int i, j, z;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;

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
        cmd3 = new SqlCommand("select count(*) from Loc_Mast where Name1 ='" +  txtMndlName.Text + "'", con);
        z = Convert.ToInt32(cmd3.ExecuteScalar());
        cmd3.Dispose();
        if (z == 1)
        {
            Label3.Visible = true;
            Label3.Text = "Name Already Exists , Enter Different Name ";

            return;
        }

        String st2 = ddlDistID.SelectedItem.ToString();
        string[] district = st2.Split(new char[] { '-' });
        String st3 = ddlStID.SelectedItem.ToString();
        string[] state = st3.Split(new char[] { '-' });
        cmd = new SqlCommand("select count(MandID) from Loc_Mast where StateID=" + state.GetValue(0).ToString() + " and DistID=" + district.GetValue(0).ToString() + "", con);
        i = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Dispose();
        if (i == 0)
        {
            i = 1;
        }
        else
        {
            cmd = new SqlCommand("select max(MandID)+1 from Loc_Mast where StateID=" + state.GetValue(0).ToString() + " and DistID=" + district.GetValue(0).ToString() + "", con);
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
        k = 3;
        cmd2 = new SqlCommand("insert into Loc_Mast(LocID,Loc_TypeID,StateID,DistID,MandID,Name1) values(" + j + "," + k + "," + state.GetValue(0).ToString() + "," + district.GetValue(0).ToString() + "," + i + ",'" + txtMndlName.Text + "')", con);
        cmd2.ExecuteNonQuery();
        Response.Redirect("mandres.aspx");
        con.Close();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtMndlName.Text = "";
    }
    protected void ddlStID_SelectedIndexChanged(object sender, EventArgs e)
    {
        String st3 = ddlStID.SelectedItem.ToString();
        string[] state = st3.Split(new char[] { '-' });
        con.Open();
        cmd2 = new SqlCommand("select distinct(DistID),Name1 from Loc_Mast where Loc_TypeID=2 and StateID=" + state.GetValue(0).ToString() + "", con);
        dr = cmd2.ExecuteReader();
        ddlDistID.Items.Clear();
        ddlDistID.Items.Add(" ");
        while (dr.Read())
        {
            ddlDistID.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
        }
        dr.Close();
        con.Close();
    }
}
