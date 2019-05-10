using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ShowDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        BLL ob = new BLL();
        dt = ob.Show();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}