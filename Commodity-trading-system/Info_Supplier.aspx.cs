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
public partial class Info_Supplier : System.Web.UI.Page
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
    protected void btnCal2_Click(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
        
    }

    protected void btnCal1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void btnCal3_Click(object sender, EventArgs e)
    {
        Calendar3.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
       String dt;
        dt = Calendar1.SelectedDate.ToShortDateString();
        txtDOB.Text = dt.Substring(0,dt.Length);
        Calendar1.Visible = false;
    }
   protected void  Calendar3_SelectionChanged(object sender, EventArgs e)
   {
       String dt;
       dt = Calendar3.SelectedDate.ToShortDateString();
       txtEndDate.Text = dt.Substring(0,dt.Length);
       Calendar3.Visible=false;
   }
  protected void  Calendar2_SelectionChanged(object sender, EventArgs e)
   {
      String dt;
       dt = Calendar2.SelectedDate.ToShortDateString();
       txtJoinDate.Text = dt.Substring(0,dt.Length);
       Calendar2.Visible = false;
   }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtInfoSupName.Text = "";
        txtJoinDate.Text = "";
        txtMotherTongue.Text = "";
        txtOccupation.Text = "";
        txtPayment.Text = "";
        txtPhone.Text = "";
        txtPincode.Text = "";
        txtQualification.Text = "";
        txtFax.Text = "";
        txtEndDate.Text = "";
        txtEmail.Text = "";
        txtDOB.Text = "";
        txtCellPhone.Text = "";
        txtAge.Text = "";
        txtAddress.Text = "";
        
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select count(Infosup_id) from Info_Supplier", con);
        i = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Dispose();
        if (i == 0)
        {
            i = 1;
        }
        else
        {
            cmd = new SqlCommand("select max(Infosup_id)+1 from Info_Supplier", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
        }
        if (chkBroker.Checked == true)
        {
            cmd1 = new SqlCommand("insert into Info_Supplier values(" + i + ",'" + txtInfoSupName.Text + "','" + txtDOB.Text + "','" + txtAddress.Text + "','" + ddlCity.SelectedItem.ToString() + "','" + txtPincode.Text + "','" + txtPhone.Text + "','" + txtCellPhone.Text + "','" + txtFax.Text + "','" + txtEmail.Text + "'," + txtAge.Text + ",'" + txtMotherTongue.Text + "','" + txtOccupation.Text + "','" + chkBroker.Text + "','" + txtJoinDate.Text + "','" + txtQualification.Text + "'," + txtPayment.Text + ",'" + txtEndDate.Text + "')", con);
            cmd1.ExecuteNonQuery();
          
        }
        else if (chkCustomer.Checked == true)
        {
            cmd1 = new SqlCommand("insert into Info_Supplier values(" + i + ",'" + txtInfoSupName.Text + "','" + txtDOB.Text + "','" + txtAddress.Text + "','" + ddlCity.SelectedItem.ToString() + "','" + txtPincode.Text + "','" + txtPhone.Text + "','" + txtCellPhone.Text + "','" + txtFax.Text + "','" + txtEmail.Text + "'," + txtAge.Text + ",'" + txtMotherTongue.Text + "','" + txtOccupation.Text + "','" + chkCustomer.Text + "','" + txtJoinDate.Text + "','" + txtQualification.Text + "'," + txtPayment.Text + ",'" + txtEndDate.Text + "')", con);
            cmd1.ExecuteNonQuery();
         
        }
        else if (chkRetailer.Checked == true)
        {
            cmd1 = new SqlCommand("insert into Info_Supplier values(" + i + ",'" + txtInfoSupName.Text + "','" + txtDOB.Text + "','" + txtAddress.Text + "','" + ddlCity.SelectedItem.ToString() + "','" + txtPincode.Text + "','" + txtPhone.Text + "','" + txtCellPhone.Text + "','" + txtFax.Text + "','" + txtEmail.Text + "'," + txtAge.Text + ",'" + txtMotherTongue.Text + "','" + txtOccupation.Text + "','" + chkRetailer.Text + "','" + txtJoinDate.Text + "','" + txtQualification.Text + "'," + txtPayment.Text + ",'" + txtEndDate.Text + "')", con);
            cmd1.ExecuteNonQuery();
            
        }
        else if (chkWholesaler.Checked == true)
        {
            cmd1 = new SqlCommand("insert into Info_Supplier values(" + i + ",'" + txtInfoSupName.Text + "','" + txtDOB.Text + "','" + txtAddress.Text + "','" + ddlCity.SelectedItem.ToString() + "','" + txtPincode.Text + "','" + txtPhone.Text + "','" + txtCellPhone.Text + "','" + txtFax.Text + "','" + txtEmail.Text + "'," + txtAge.Text + ",'" + txtMotherTongue.Text + "','" + txtOccupation.Text + "','" + chkWholesaler.Text + "','" + txtJoinDate.Text + "','" + txtQualification.Text + "'," + txtPayment.Text + ",'" + txtEndDate.Text + "')", con);
            cmd1.ExecuteNonQuery();
            
        }
        cmd2 = new SqlCommand("insert into Login_Form(Username,Password1,CnfrmPassword,Status1,Flag) values('" + txtInfoSupName.Text + "','" + txtPassword.Text + "','" + txtCnfrmPwd.Text + "','InfoSupplier','Yes')", con);
        cmd2.ExecuteNonQuery();
        Response.Redirect("Info_SupplierRes.aspx");
        con.Close();
    }
}
