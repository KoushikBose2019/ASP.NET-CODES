using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PalelSearch : System.Web.UI.Page
{
    OfficeEntities ob = new OfficeEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Ide=TextBox1.Text;
        var Q = (from test in ob.EmployeeDetails where test.empid == Ide select test).FirstOrDefault();
        if (Q != null)
        {
            Panel1.Visible = true;
            Lblnm.Text = Q.Name;
            Lbladr.Text = Q.Addr;
            Lblph.Text = Q.Phno;
            Lblsal.Text = Q.Sal.ToString();
            Lblcity.Text = Q.City;
            Lblgen.Text = Q.Gen;
            Lbldep.Text = Q.Dep;
            Lblcmp.Text = Q.Cmp;
            Lblmsg.Text = string.Empty;
        }
        else
        {
            Lblmsg.Text = "No Search Found!!";
            Panel1.Visible = false;
        }
    }
}