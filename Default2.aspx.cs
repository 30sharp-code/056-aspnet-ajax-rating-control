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
using AjaxControlToolkit;
public partial class Default2 : System.Web.UI.Page
{

    private DataTable CreateDataSource()
    {
        DataTable tb = new DataTable("tb");
        DataColumn col = new DataColumn("ProductID", typeof(int));
        tb.Columns.Add(col);
        col = new DataColumn("ProductName", typeof(string));
        tb.Columns.Add(col);
        DataRow r = tb.NewRow();
        r["ProductID"] = 1;
        r["ProductName"] = "Product1";
        tb.Rows.Add(r);
        r = tb.NewRow();
        r["ProductID"] = 2;
        r["ProductName"] = "Product2";
        tb.Rows.Add(r);
        r = tb.NewRow();
        r["ProductID"] = 3;
        r["ProductName"] = "Product3";
        tb.Rows.Add(r);
        return tb;
       
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = CreateDataSource();
            GridView1.DataBind();
        }
    }

    protected void RatingChanged(object sender, RatingEventArgs e)
    {
        int ProductID =int.Parse(e.Tag);
        string Rate = e.Value;
    }
}
