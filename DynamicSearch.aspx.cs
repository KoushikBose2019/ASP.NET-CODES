﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DynamicSearch : System.Web.UI.Page
{
    OfficeEntities obj = new OfficeEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Key = TextBox1.Text;
        var Q = (from test in obj.EmployeeDetails where test.empid == Key || test.Name.Contains(Key) || test.Addr == Key select test).ToList();
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