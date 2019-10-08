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

public partial class Market_Commodity : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd,cmd1,cmd2;
    SqlDataReader dr;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack == true)
        {

            con.Open();
            cmd = new SqlCommand("select distinct(Name1) from Market_Mast", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ddlMarketName.Items.Add(dr[0].ToString());
            }
            dr.Close();
            cmd1 = new SqlCommand("select distinct(Name1) from Comm_Mast where comm_Div_Typeid >= 2 ", con);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                lbCommOld.Items.Add(dr[0].ToString());
            }
            dr.Close();
            con.Close();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        con.Open();
        int  i, j ;
        cmd = new SqlCommand("select marketid from Market_Mast where Name1='" + ddlMarketName.SelectedItem.ToString() + "'", con);
        i = Convert.ToInt32(cmd.ExecuteScalar());
       

        for (int x = 0; x != lbCommNew.Items.Count; x++)

        {
            cmd1 = new SqlCommand("select commid from Comm_Mast where Name1='" + lbCommNew.Items[x].ToString() + "'", con);
            j = Convert.ToInt32(cmd1.ExecuteScalar());
            cmd2 = new SqlCommand("insert into Market_Comm values(" + j + "," + i + ",'" + txtMrkCommMsr.Text + "')", con);
            cmd2.ExecuteNonQuery();

        }
        
        Response.Redirect("MrkCommRes.aspx");
        con.Close();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        
        if (lbCommOld.SelectedIndex >= 0)
        {
            for (int i = 0; i != lbCommOld.Items.Count; i++)
            {
                if(lbCommOld.Items[i].Selected)
                {
                    if (!lbCommNew.Items.Contains(lbCommOld.Items[i]))
                    {
                        lbCommNew.Items.Add(lbCommOld.Items[i]);
                    }
                }
            }

        } 
  
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
       for (int i = 0; i < lbCommNew.Items.Count; i++)
        {
            if (lbCommNew.Items[i].Selected)
            {
                if (lbCommOld.Items.Contains(lbCommNew.Items[i]))
                {
                    lbCommNew.Items.Remove(lbCommNew.Items[i]);
                }
            }
       }
     
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Market_Commodity.aspx");
    }
}
