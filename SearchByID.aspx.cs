using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class SearchByID : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Empide = TextBox1.Text;
        DataTable dt = new DataTable();
        BLL ob = new BLL();
        dt = ob.SearchID(Empide);
        if (dt.Rows.Count > 0)
        {
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
            Label1.Text = string.Empty;
        }
        else
        {
            DetailsView1.DataSource = null;
            DetailsView1.DataBind();
            Label1.Text = "No Data Found!!";
        }
    }
}