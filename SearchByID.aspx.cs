using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchByID : System.Web.UI.Page
{
    OfficeEntities ob = new OfficeEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Empide = TextBox1.Text;
        var Q = (from test in ob.EmployeeDetails where test.empid == Empide select test).ToList();
        if (Q.Count > 0)
        {
            DetailsView1.DataSource = Q;
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
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}