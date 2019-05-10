using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SEarchByName : System.Web.UI.Page
{
    OfficeEntities ob = new OfficeEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = TextBox1.Text;
        var Q = (from test in ob.EmployeeDetails where test.Name.StartsWith(Name) select test).ToList();
        if (Q.Count > 0)
        {
            GridView1.DataSource = Q;
            GridView1.DataBind();
            Label1.Text = string.Empty;
        }
        else
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
            Label1.Text = "No Data Found!!";
        }
    }
}