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

public partial class Info_SupplierRes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnYes_Click(object sender, EventArgs e)
    {
        Response.Redirect("Info_Supplier.aspx");
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        Response.Redirect("InfoSupplierView.aspx");
    }
}
