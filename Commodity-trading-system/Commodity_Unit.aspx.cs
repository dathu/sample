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

public partial class Commodity_Unit : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd1, cmd2;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack == true)
        {
            con.Open();
            cmd1 = new SqlCommand("select MSR_ID,MSR_Name from UOM_Mast", con);
            dr = cmd1.ExecuteReader();
            ddlMsr_ID.Items.Clear();
            ddlMsr_ID.Items.Add(" ");
            while (dr.Read())
            {
                ddlMsr_ID.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
            }
            dr.Close();
            cmd2 = new SqlCommand("select CatID,Name1 from Comm_Mast where Comm_Div_TypeID=1", con);
            dr = cmd2.ExecuteReader();
            ddlCATID.Items.Clear();
            ddlCATID.Items.Add(" ");
            while (dr.Read())
            {
                ddlCATID.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
            }
            dr.Close();
            con.Close();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        con.Open();
        String st1 = ddlMsr_ID.SelectedItem.ToString();
        string[] measure = st1.Split(new char[] { '-' });
        String st2 = ddlCATID.SelectedItem.ToString();
        string[] category = st2.Split(new char[] { '-' });
        cmd1 = new SqlCommand("insert into COMM_UNIT values(" + measure.GetValue(0).ToString() + "," + category.GetValue(0).ToString() + ")", con);
        cmd1.ExecuteNonQuery();
        Response.Redirect("Comm_UnitRes.aspx");
        con.Close();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        
    }
}
