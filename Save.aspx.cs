using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Save : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Txtid0_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string Empide = Txtid.Text.Trim();
            string Name = Txtnm.Text.Trim();
            string Adr = Txtadr.Text.Trim();
            string Phno = Txtph.Text.Trim();
            int Salary = Convert.ToInt32(Txtsal.Text.Trim());
            string City = DropDownList1.SelectedValue.ToString();
            string Gender = RadioButtonList1.SelectedValue.ToString();
            string Dep = Txtdep.Text.Trim();
            string Cmp = Txtcmp.Text.Trim();
            string Query = "insert into EmployeeDetails values('" + Empide + "','" + Name + "','" + Adr + "','" + Phno + "'," + Salary + ",'" + City + "','" + Gender + "','" + Dep + "','" + Cmp + "')";
            string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Insert Successfull";
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}