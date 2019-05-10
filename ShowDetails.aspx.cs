using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowDetails : System.Web.UI.Page
{
    OfficeEntities ob = new OfficeEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        var Q = (from test in ob.EmployeeDetails select new { test.empid,test.Name,test.Addr,test.Phno,test.Sal}).ToList();
        GridView1.DataSource = Q;
        GridView1.DataBind();
    }
}