using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Update_Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        if (!Page.IsPostBack)
        {
            Bind();
        }
    }
    private void Bind()
    {
        string Query = "select * from EmployeeDetails";
        string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlDataAdapter da = new SqlDataAdapter(Query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow vrow in GridView1.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("CheckBox1");
            if (checkbox1.Checked == true)
            {
                Button button1 = (Button)vrow.FindControl("Button1");
                Button button2 = (Button)vrow.FindControl("Button2");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        foreach (GridViewRow vrow in GridView1.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("CheckBox1");
            if (checkbox1.Checked == true)
            {
                string Ide = GridView1.DataKeys[vrow.RowIndex].Value.ToString();
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
                Txtnm.Text = dt.Rows[0]["Name"].ToString();
                Txtadr.Text = dt.Rows[0]["Addr"].ToString();
                Txtph.Text = dt.Rows[0]["Phno"].ToString();
                txtsal.Text = dt.Rows[0]["Sal"].ToString();
                Txtcity.Text = dt.Rows[0]["City"].ToString();
                Txtgen.Text = dt.Rows[0]["Gen"].ToString();
                Txtdep.Text = dt.Rows[0]["Dep"].ToString();
                Txtcmp.Text = dt.Rows[0]["Cmp"].ToString();
                con.Close();
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string Nm = Txtnm.Text.Trim();
        string Adr = Txtadr.Text.Trim();
        string Ph = Txtph.Text.Trim();
        int Sal = Convert.ToInt32(txtsal.Text.Trim());
        string City = Txtcity.Text.Trim();
        string Gen = Txtgen.Text.Trim();
        string Dep = Txtdep.Text.Trim();
        string Company = Txtcmp.Text.Trim();
        foreach (GridViewRow vrow in GridView1.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("CheckBox1");
            if (checkbox1.Checked == true)
            {
                string Ide = GridView1.DataKeys[vrow.RowIndex].Value.ToString();
                string Q = "update EmployeeDetails set Name='" + Nm + "',Addr='" + Adr + "',Phno='" + Ph + "',Sal=" + Sal + ",City='" + City + "',Gen='" + Gen + "',Dep='" + Dep + "',Cmp='" + Company + "' where empid='" + Ide + "'";
                string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(str);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(Q, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        Bind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow vrow in GridView1.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("CheckBox1");
            if (checkbox1.Checked == true)
            {
                string Ide = GridView1.DataKeys[vrow.RowIndex].Value.ToString();
                string Q = "delete from EmployeeDetails where empid='" + Ide + "'";
                string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(str);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(Q, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        Bind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Bind();
    }
}