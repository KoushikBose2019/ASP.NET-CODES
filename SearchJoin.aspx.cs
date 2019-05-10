using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SearchJoin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        if (!Page.IsPostBack)
        {
            string Q = "Select * from StudentDetails";
            string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(Q, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Stdid";
            DropDownList1.DataValueField = "Stdid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "...Select StudentID...");
            con.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string Stdide = DropDownList1.SelectedValue.ToString();
        string Q = "select S.StdName,S.StdAdr,S.Stdphno,S.Stdpin,S.Stdcity,S.StdGen,S.Stdpic,SE.Seccname,SE.Classname,SE.stdroll from StudentDetails S inner join SectionDetails SE ON S.Stdid=SE.Stdid where S.Stdid='" + Stdide + "'";
        string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlDataAdapter da = new SqlDataAdapter(Q, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Lblnm.Text = dt.Rows[0]["StdName"].ToString();
        Lbladr.Text = dt.Rows[0]["StdAdr"].ToString();
        Lblph.Text = dt.Rows[0]["Stdphno"].ToString(); ;
        Lblpin.Text = dt.Rows[0]["Stdpin"].ToString(); ;
        Lblcity.Text = dt.Rows[0]["Stdcity"].ToString();
        Lblgen.Text = dt.Rows[0]["StdGen"].ToString();
        Lblsection.Text = dt.Rows[0]["Seccname"].ToString();
        Lblclass.Text = dt.Rows[0]["Classname"].ToString();
        Lblroll.Text = dt.Rows[0]["stdroll"].ToString();
        Image1.ImageUrl = dt.Rows[0]["Stdpic"].ToString();
        con.Close();
    }
}