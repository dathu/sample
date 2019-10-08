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

public partial class Search1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ToString());
   
    SqlCommand cmd, cmd1, cmd8;
    SqlDataReader dr, dr1;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Calendar1.Visible = false;


      
        if (Page.IsPostBack != true)
        {
            txtdate.Text = System.DateTime.Now.ToShortDateString();

            con.Open();
           
            // to fill th market combo box.
            cmd1 = new SqlCommand("select MarketID,name1 from Market_Mast ", con);

            dr1 = cmd1.ExecuteReader();
           Ddlmarket.Items.Clear();
           Ddlmarket.Items.Add("ALL");
            while (dr1.Read())
            {
                Ddlmarket.Items.Add(dr1[0].ToString() + "-" + dr1[1].ToString());
            }
            dr1.Close();

            // to fill the category combo box
            cmd = new SqlCommand("select distinct(CatID),Name1 from Comm_Mast where Comm_Div_TypeID=1", con);
            dr = cmd.ExecuteReader();
            
            Ddlcat.Items.Clear();
            Ddlcat.Items.Add(" ");
            while (dr.Read())
            {
                Ddlcat.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
            }
            dr.Close();
            con.Close();

        }
    }
    protected void Ddlcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        Ddltype.Items.Add(" ");
        con.Open();
        String st3 = Ddlcat.SelectedItem.ToString();
        string[] category = st3.Split(new char[] { '-' });
        cmd1 = new SqlCommand("select distinct(NameID),Name1 from Comm_Mast where Comm_Div_TypeID=2 and CatID=" + category.GetValue(0).ToString() + "", con);
        dr = cmd1.ExecuteReader();
        Ddlname.Items.Clear();
        Ddlname.Items.Add(" ");
        while (dr.Read())
        {
            Ddlname.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
        }
        dr.Close();
        con.Close();
    }
    protected void Ddlname_SelectedIndexChanged(object sender, EventArgs e)
    {
        Ddlgrade.Items.Add(" ");
        con.Open();
        String st3 =Ddlcat.SelectedItem.ToString();
        string[] category = st3.Split(new char[] { '-' });
        
        String st6 = Ddlname.SelectedItem.ToString();
        string[] category6 = st6.Split(new char[] { '-' });

        cmd1 = new SqlCommand("select distinct(TypeID),Name1 from Comm_Mast where Comm_Div_TypeID=3 and CatID=" + category.GetValue(0).ToString() + " and nameID=" + category6.GetValue(0).ToString() + "", con);
        dr = cmd1.ExecuteReader();
        Ddltype.Items.Clear();
        Ddltype.Items.Add(" ");
        while (dr.Read())
        {
            Ddltype.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
        }
        dr.Close();
        con.Close();
    }
    protected void Ddltype_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        String st3 = Ddlcat.SelectedItem.ToString();
        string[] category = st3.Split(new char[] { '-' });

        String st6 = Ddlname.SelectedItem.ToString();
        string[] category6 = st6.Split(new char[] { '-' });

        String st7 = Ddltype.SelectedItem.ToString();
        string[] category7 = st7.Split(new char[] { '-' });

         cmd1 = new SqlCommand("select distinct(GradeID),Name1 from Comm_Mast where Comm_Div_TypeID=4 and CatID=" + category.GetValue(0).ToString() + " and nameID=" + category6.GetValue(0).ToString() + " and TypeID=" + category7.GetValue(0).ToString() + "", con);
        dr = cmd1.ExecuteReader();
        Ddlgrade.Items.Clear();
        Ddlgrade.Items.Add(" ");
        while (dr.Read())
        {
            Ddlgrade.Items.Add(dr[0].ToString() + " - " + dr[1].ToString());
        }
        dr.Close();
        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        String dt;
        dt = Calendar1.SelectedDate.ToShortDateString();
        txtdate.Text = dt.Substring(0, dt.Length);

        Calendar1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // to find out commodity id
        int k=0;
          

        String str5 = Ddlcat.SelectedItem.ToString();
        string[] categ5 = str5.Split(new char[] { '-' });

        String str6 = Ddlname.SelectedItem.ToString();
        string[] categ6 = str6.Split(new char[] { '-' });
       
                        
                
        con.Open();
        // if grade is selected
        if (Ddlgrade.SelectedItem.Text!= " ")          
        {
            String str8 = Ddlgrade.SelectedItem.ToString();
            string[] categ8 = str8.Split(new char[] { '-' });
            String str9 = Ddltype.SelectedItem.ToString();
            string[] categ9 = str9.Split(new char[] { '-' });
       
            cmd8 = new SqlCommand("select commid from Comm_Mast where Comm_Div_TypeID=4 and CatID=" + categ5.GetValue(0).ToString() + " and nameID=" + categ6.GetValue(0).ToString() + " and TypeID=" + categ9.GetValue(0).ToString() + " and gradeid =" + categ8.GetValue(0).ToString() + "", con);
          k = Convert.ToInt32(cmd8.ExecuteScalar());
goto ram;

        }
            // if gradeid is null and typeid is selected
        else if(Ddltype.SelectedItem.Text!=" ")

        {

            String str7 = Ddltype.SelectedItem.ToString();
            string[] categ7 = str7.Split(new char[] { '-' });


            cmd8 = new SqlCommand("select commid from Comm_Mast where Comm_Div_TypeID=3 and CatID=" + categ5.GetValue(0).ToString() + " and NameID=" + categ6.GetValue(0).ToString() + " and TypeID=" + categ7.GetValue(0).ToString() + "", con);
            k = Convert.ToInt32(cmd8.ExecuteScalar());
            goto ram;
        }

          // if gradeid is null and typeid is null and name is selected
        else if (Ddlname.SelectedItem.Text != " ")
        {

            cmd8 = new SqlCommand("select commid from Comm_Mast where Comm_Div_TypeID=2 and CatID=" + categ5.GetValue(0).ToString() + " and NameID=" + categ6.GetValue(0).ToString() + " ", con);
            k = Convert.ToInt32(cmd8.ExecuteScalar());
            goto ram;
        }




        
ram:
        // to find out market id
        if (Ddlmarket.SelectedItem.Text == "ALL")
        {
            SqlDataAdapter da = new SqlDataAdapter("Select name1,catid,typeid,gradeid,UOM,Price,marketid,data_col_date from comm_price where commid= " + k + " and data_col_date = '" + txtdate.Text + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "comm_price");
            GridView1.DataSource = ds.Tables["comm_price"];
            GridView1.DataBind();

        }
        else
        {
            String mrk = Ddlmarket.SelectedItem.Text;
            string[] markt = mrk.Split(new char[] { '-' });
            
            SqlDataAdapter da = new SqlDataAdapter("Select name1,catid,typeid,gradeid,UOM,Price,marketid,data_col_date from comm_price where marketid= " + markt.GetValue(0).ToString()+ " and commid= " + k + " and data_col_date = '" + txtdate.Text + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "comm_price");
            GridView1.DataSource = ds.Tables["comm_price"];
            GridView1.DataBind();


        }
    }
}
