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

public partial class Reposhowinfo : System.Web.UI.Page
{

    protected void Page_init(object sender, EventArgs e)
    {
        CrystalReportViewer1.DataBind();
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["repname"].ToString() == "infosupplier")
        {
            CrystalReportViewer1.ReportSource = Server.MapPath("./Repoinfolist.rpt");

        }

        if (Session["repname"].ToString() == "Customer List")
        {
            CrystalReportViewer1.ReportSource = Server.MapPath("./RPTCustlist.rpt");

        }

        if (Session["repname"].ToString() == "Market List")
        {
            CrystalReportViewer1.ReportSource = Server.MapPath("./RPTMarktlist.rpt");

        }

        if (Session["repname"].ToString() == "Commodity List")
        {
            CrystalReportViewer1.ReportSource = Server.MapPath("./RPTCommlist.rpt");

        }

        if (Session["repname"].ToString() == "Location List")
        {
            CrystalReportViewer1.ReportSource = Server.MapPath("./RPTLocat.rpt");

        }

        
        
    }
}
