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

public partial class CustomerReg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd, cmd1,cmd2;
    SqlDataReader dr;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack == true)
        {
            con.Open();
            cmd = new SqlCommand("select Distinct(Name1) from City_Mast", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ddlCity.Items.Add(dr[0].ToString());
            }
            con.Close();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select count(Cust_id) from Cust_Mast", con);
        i = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Dispose();
        if (i == 0)
        {
            i = 1;
        }
        else
        {
            cmd = new SqlCommand("select max(Cust_id)+1 from Cust_Mast", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
        }

        cmd1 = new SqlCommand("insert into Cust_Mast values(" + i + ",'" + txtCustName.Text + "','" + txtAddress.Text + "','" + ddlCity.SelectedItem.ToString() + "','" + txtPincode.Text + "','" + txtPhone.Text + "','" + txtCellPhone.Text + "','" + txtFax.Text + "','" + txtEmail.Text + "','" + txtMotherTongue.Text + "','" + txtDOB.Text + "'," + txtAge.Text + ",'" + txtOccupation.Text + "','" + txtQualification.Text + "','" + txtJoinDate.Text + "','" + ddlBizCategory.SelectedItem.ToString() + "')", con);
        cmd1.ExecuteNonQuery();
        cmd2 = new SqlCommand("insert into Login_Form(Username,Password1,CnfrmPassword,Status1,Flag) values('" + txtCustName.Text + "','" + txtPassword.Text + "','" + txtCnfrmPwd.Text + "','Customer','Yes')", con);
        cmd2.ExecuteNonQuery();
        Response.Redirect("CustomerRes.aspx");
        con.Close();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtCustName.Text = "";
        txtCellPhone.Text = "";
        txtAddress.Text = "";
        txtAge.Text = "";
        txtDOB.Text = "";
        txtEmail.Text = "";
        txtFax.Text = "";
        txtJoinDate.Text = "";
        txtMotherTongue.Text = "";
        txtOccupation.Text = "";
        txtPhone.Text = "";
        txtPincode.Text = "";
        txtQualification.Text = "";
        
    }
    protected void btnCal1_Click(object sender, EventArgs e)
    {
        Calendar3.Visible = true;
    }
    protected void btnCal2_Click(object sender, EventArgs e)
    {
        Calendar4.Visible = true;
    }
    protected void Calendar4_SelectionChanged(object sender, EventArgs e)
    {
        //String dt;
        //dt = Calendar4.SelectedDate.ToShortDateString();
        //txtJoinDate.Text = dt.Substring(0, dt.Length);
        txtJoinDate.Text = Calendar4.SelectedDate.ToShortDateString();
        Calendar4.Visible = false;
    }
    protected void Calendar3_SelectionChanged(object sender, EventArgs e)
    {
        String dt;
        dt = Calendar3.SelectedDate.ToShortDateString();
        txtDOB.Text = dt.Substring(0, dt.Length);
        Calendar3.Visible = false;
    }
}
