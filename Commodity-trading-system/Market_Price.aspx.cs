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

public partial class msPrice : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlDataAdapter da;
    SqlCommand cmd, cmd1;
    SqlDataReader dr,dr1;
    protected void Page_Load(object sender, EventArgs e)
    {
        Calendar1.Visible = false;
        txtDate.Text = System.DateTime.Now.ToShortDateString();
        txtTime.Text = System.DateTime.Now.ToShortTimeString();
        if (Page.IsPostBack != true)
        {         con.Open();
            cmd = new SqlCommand(" select infosup_id from Info_supplier where name1= '" + Session["UserName"].ToString() + "' ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtInfoSupplierID.Text = dr[0].ToString();
            }
            dr.Close();

            // to fill th market combo box.
                cmd1 = new SqlCommand("select MarketID,name1 from Market_Mast ", con);
        
            dr1 = cmd1.ExecuteReader();
            ddlMarket.Items.Clear();
            ddlMarket.Items.Add(" ");
            while (dr1.Read())
            {
                ddlMarket.Items.Add(dr1[0].ToString() + "-" + dr1[1].ToString());
            }
            dr1.Close();
            con.Close();

        }
    }
   
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        int j = 0;
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                string Price, UOM;
                UOM = ((DropDownList)row.FindControl("DropDownList1")).Text;
                Price = ((TextBox)row.FindControl("txt1")).Text;
                String st1 = ddlMarket.SelectedItem.ToString();
                string[] market = st1.Split(new char[] { '-' });
                if (Price != "")
                {

                    string commid = GridView1.Rows[j].Cells[0].Text;
                    string name1 = GridView1.Rows[j].Cells[1].Text;
                    int catid = Convert.ToInt16(GridView1.Rows[j].Cells[2].Text);

                    int nameid = 0;
                   
                        int typeid = 0;
                      
                        int gradeid = 0;



                        if (GridView1.Rows[j].Cells[2].Text == "&nbsp;")
                        {
                            catid = 0;

                        }
                        else
                        {
                            catid = Convert.ToInt16(GridView1.Rows[j].Cells[2].Text);
                        }

                        if (GridView1.Rows[j].Cells[3].Text == "&nbsp;")
                        {
                            nameid = 0;

                        }
                        else
                        {
                            nameid = Convert.ToInt16(GridView1.Rows[j].Cells[3].Text);
                        }



                        if (GridView1.Rows[j].Cells[4].Text == "&nbsp;")
                        {
                            typeid = 0;
                        }

                        else
                        {
                            typeid = Convert.ToInt16(GridView1.Rows[j].Cells[4].Text);

                        }
                        if (GridView1.Rows[j].Cells[5].Text == "&nbsp;")
                        {
                            gradeid = 0;
                        }

                        else
                        {
                            gradeid = Convert.ToInt16(GridView1.Rows[j].Cells[5].Text);
                        }
                    
                    
                    cmd = new SqlCommand("insert into Comm_Price values(" + commid + ",'" + name1 + "'," + catid + "," + nameid + "," + typeid + "," + gradeid + ",'" + UOM + "'," + Price + ",'" + txtInfoSupplierID.Text + "', " + market.GetValue(0) + ", '" + txtDate.Text + "','" + txtTime.Text + "')", con);
                   cmd.ExecuteNonQuery();

                    ////////////cmd = new SqlCommand();
                    ////////////cmd.Connection = con;
                    ////////////cmd.CommandType = CommandType.StoredProcedure;
                    ////////////cmd.CommandText = "proctprice";
                    ////////////cmd.Parameters.AddWithValue("@CommID", GridView1.Rows[j].Cells[0].Text);
                    ////////////cmd.Parameters.AddWithValue("@Name1", GridView1.Rows[j].Cells[1].Text);
                    ////////////cmd.Parameters.AddWithValue("@CatID", GridView1.Rows[j].Cells[2].Text);
                    ////////////cmd.Parameters.AddWithValue("@NameID", GridView1.Rows[j].Cells[3].Text);
                    ////////////cmd.Parameters.AddWithValue("@TypeID", GridView1.Rows[j].Cells[4].Text);
                    ////////////cmd.Parameters.AddWithValue("@GradeID", GridView1.Rows[j].Cells[5].Text);
                    ////////////cmd.Parameters.AddWithValue("@UOM", UOM);
                    ////////////cmd.Parameters.AddWithValue("@Price", Price);
                    ////////////cmd.Parameters.AddWithValue("@Infosup_id", txtInfoSupplierID.Text);
                    ////////////cmd.Parameters.AddWithValue("MarketID", market.GetValue(0));
                    ////////////cmd.Parameters.AddWithValue("Data_Col_Date", txtDate.Text);
                    ////////////cmd.Parameters.AddWithValue("Data_Col_Time", txtTime.Text);
                    ////////////cmd.ExecuteNonQuery();
                }
                j = j + 1;
            }
        }
        Response.Redirect("MarketPriceRes.aspx");
        con.Close();
    }
    protected void ddlMarket_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        String st3 = ddlMarket.SelectedItem.ToString();
        string[] market = st3.Split(new char[] { '-' });
        da = new SqlDataAdapter("select c.CommID, c.Name1, c.CatID, c.NameID, c.TypeID, c.GradeID FROM Comm_Mast c inner join Market_Comm m on c.CommID=m.CommID and MarketID=" + market.GetValue(0) + "", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "tprice");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        String dt;
        dt = Calendar1.SelectedDate.ToShortDateString();
        txtDate.Text = dt.Substring(0, dt.Length);
        Calendar1.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }

    
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtInfoSupplierID.Text = "";
       
        txtDate.Text="";
        txtTime.Text="";
    }
   
}
