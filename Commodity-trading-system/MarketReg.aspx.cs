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
using System.Text;


public partial class Market : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd, cmd1, cmd2;
    SqlDataReader dr;
    int i,j;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label10.Visible = false;

        if (!Page.IsPostBack==true)
        {
            con.Open();
            cmd = new SqlCommand("select distinct(StateID),Name1 from Loc_Mast where Loc_TypeID=1", con);
            dr = cmd.ExecuteReader();
            ddlState.Items.Add(" "); 
            while (dr.Read())
            {
                ddlState.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
            }
            dr.Close();
            con.Close();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {


        if (ddlState.SelectedItem.ToString() == " ")
        {
            Label10.Visible = true;
            Label10.Text = "Select State";
            return;
        }

        if ( ddlDistrict.SelectedItem.ToString() == " ")
        {
            Label10.Visible = true;
            Label10.Text = "Select District";
            return;
        }

        if (ddlMandal.SelectedItem.ToString() == " ")
        {
            Label10.Visible = true;
            Label10.Text = "Select Mandal";
            return;
        }


        con.Open();
        // to generate max id for marketid
        cmd = new SqlCommand("select count(MarketID) from Market_Mast", con);
        i = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Dispose();
        if (i == 0)
        {
            i = 1;
        }
        else
        {
            cmd = new SqlCommand("select max(MarketID)+1 from Market_Mast", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
        }
        
             
        String st1 = ddlMandal.SelectedItem.ToString();
        string[] mandal = st1.Split(new char[] { '-' });
        String st2 = ddlDistrict.SelectedItem.ToString();
        string[] district = st2.Split(new char[] { '-' });
        String st3 = ddlState.SelectedItem.ToString();
        string[] state = st3.Split(new char[] { '-' });
        con.Close();
        con.Open();
        if (ddlVillage.SelectedItem.ToString()== " ")
        {
            cmd1 = new SqlCommand("select LocID from Loc_Mast where MandID=" + mandal.GetValue(0).ToString() + " and DistID=" + district.GetValue(0).ToString() + " and StateID=" + state.GetValue(0).ToString() + " and Loc_TypeID=3", con);
            j = Convert.ToInt32(cmd1.ExecuteScalar());
        }
        else 
        {
            String st = ddlVillage.SelectedItem.ToString();
            string[] village = st.Split(new char[] { '-' });
            cmd1 = new SqlCommand("select LocID from Loc_Mast where VilID =" + village.GetValue(0).ToString() + " and MandID=" + mandal.GetValue(0).ToString() + " and DistID=" + district.GetValue(0).ToString() + " and StateID=" + state.GetValue(0).ToString() + " and Loc_TypeID=4", con);
            j = Convert.ToInt32(cmd1.ExecuteScalar());
        }
        
        if (ChkAmcYes.Checked == true)
        {
            if (ChkCompYes.Checked == true)
            {
                cmd2 = new SqlCommand("insert into Market_Mast values(" + i + ",'" + txtMarketName.Text + "','" + txtAddress.Text + "','" + txtPincode.Text + "','" + ChkAmcYes.Text + "','" + ChkCompYes.Text + "','" + txtPhone1.Text + "','" + txtPhone2.Text + "','" + txtFax1.Text + "','" + txtFax2.Text + "','" + txtEmail.Text + "','" + j + "')", con);
                cmd2.ExecuteNonQuery();
            }
            else
            {
                cmd2 = new SqlCommand("insert into Market_Mast values(" + i + ",'" + txtMarketName.Text + "','" + txtAddress.Text + "','" + txtPincode.Text + "','" + ChkAmcYes.Text + "','" + ChkCompNo.Text + "','" + txtPhone1.Text + "','" + txtPhone2.Text + "','" + txtFax1.Text + "','" + txtFax2.Text + "','" + txtEmail.Text + "','" + j + "')", con);
                cmd2.ExecuteNonQuery();
            }

        }
        else if (ChkAmcNo.Checked == true)
        {
            if (ChkCompYes.Checked == true)
            {
                cmd2 = new SqlCommand("insert into Market_Mast values(" + i + ",'" + txtMarketName.Text + "','" + txtAddress.Text + "','" + txtPincode.Text + "','" + ChkAmcNo.Text + "','" + ChkCompYes.Text + "','" + txtPhone1.Text + "','" + txtPhone2.Text + "','" + txtFax1.Text + "','" + txtFax2.Text + "','" + txtEmail.Text + "','" + j + "')", con);
                cmd2.ExecuteNonQuery();
            }
            else
            {
                cmd2 = new SqlCommand("insert into Market_Mast values(" + i + ",'" + txtMarketName.Text + "','" + txtAddress.Text + "','" + txtPincode.Text + "','" + ChkAmcNo.Text + "','" + ChkCompNo.Text + "','" + txtPhone1.Text + "','" + txtPhone2.Text + "','" + txtFax1.Text + "','" + txtFax2.Text + "','" + txtEmail.Text + "','" + j + "')", con);
                cmd2.ExecuteNonQuery();
            }
        }
        Response.Redirect("MarketRes.aspx");
        con.Close();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtMarketName.Text = "";
        txtPhone1.Text = "";
        txtPhone2.Text = "";
        txtPincode.Text = "";
        txtFax2.Text = "";
        txtFax1.Text = "";
        txtEmail.Text = "";
        txtAddress.Text = "";
        
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        String st3 = ddlState.SelectedItem.ToString();
        string[] state = st3.Split(new char[] { '-' });
        cmd1 = new SqlCommand("select distinct(DistID),Name1 from Loc_Mast where Loc_TypeID=2 and StateID=" + state.GetValue(0).ToString() + "", con);
        dr = cmd1.ExecuteReader();
        ddlDistrict.Items.Clear();
        ddlDistrict.Items.Add(" "); 
        while (dr.Read())
        {
            ddlDistrict.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
        }
        dr.Close();
        con.Close();
    }

    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        String st3 = ddlDistrict.SelectedItem.ToString();
        string[] dist = st3.Split(new char[] { '-' });
        cmd1 = new SqlCommand("select distinct(MandID),Name1 from Loc_Mast where Loc_TypeID=3 and DistID=" + dist.GetValue(0).ToString() + "", con);
        dr = cmd1.ExecuteReader();
        ddlMandal.Items.Clear();
        ddlMandal.Items.Add(" "); 
        while (dr.Read())
        {
            
            ddlMandal.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
        }
        dr.Close();
        con.Close();
    }
    protected void ddlMandal_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        String st3 = ddlMandal.SelectedItem.ToString();
        string[] mandal = st3.Split(new char[] { '-' });
        String st2 = ddlDistrict.SelectedItem.ToString();
        string[] dist = st2.Split(new char[] { '-' });
        String st1 = ddlState.SelectedItem.ToString();
        string[] state = st1.Split(new char[] { '-' });
        cmd1 = new SqlCommand("select distinct(VilID),Name1 from Loc_Mast where Loc_TypeID=4 and MandID=" + mandal.GetValue(0).ToString() + "and DistID=" + dist.GetValue(0).ToString() + "and StateID=" + state.GetValue(0).ToString() + "", con);
        dr = cmd1.ExecuteReader();
        ddlVillage.Items.Clear();
        ddlVillage.Items.Add(" "); 
        while (dr.Read())
        {
            ddlVillage.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
        }
        dr.Close();
        con.Close();
    }
}
