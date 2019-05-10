using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Mailid = Txtmailid.Text;
        string Pwd = Txtpwd.Text;
        string Q = "Select * from UserRegistration where UserMailid='" + Mailid + "' and UserPwd='"+Pwd+"'";
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
            Session["ID"] = Mailid;
            Response.Redirect("UserProfile.aspx");
        }
        else
        {
            Label1.Text = "Enter Correct Mailid Or Password!!";
        }
    }
}