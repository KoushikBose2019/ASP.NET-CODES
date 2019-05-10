using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PanelSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string Ide = TextBox1.Text;
        string Q = "select * from EmployeeDetails where empid='" + Ide + "'";
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
            Panel1.Visible = true;
            Lblnm.Text = dt.Rows[0]["Name"].ToString();
            Lbladr.Text = dt.Rows[0]["Addr"].ToString();
            Lblph.Text = dt.Rows[0]["Phno"].ToString();
            Lblsal.Text = dt.Rows[0]["Sal"].ToString();
            Lblcity.Text = dt.Rows[0]["City"].ToString();
            Lblgen.Text = dt.Rows[0]["Gen"].ToString();
            Lbldep.Text = dt.Rows[0]["Dep"].ToString();
            Lblcmp.Text = dt.Rows[0]["Cmp"].ToString();
            Label1.Text = string.Empty;
        }
        else
        {
            Label1.Text = "No Data Found!!";
        }
        con.Close();
    }
}