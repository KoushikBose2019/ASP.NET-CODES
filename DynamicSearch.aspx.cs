using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DynamicSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Key = TextBox1.Text;
        string Q = "select * from EmployeeDetails where empid='" + Key + "' or Name like '%" + Key + "%' or Addr='" + Key + "' or Dep='" + Key + "' or cmp='" + Key + "'";
        string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlDataAdapter da = new SqlDataAdapter(Q, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label1.Text = string.Empty;
        }
        else
        {
            Label1.Text = "No Data Found!!";
            GridView1.DataSource = null;
            GridView1.DataBind();
        }
        con.Close();
    }
}