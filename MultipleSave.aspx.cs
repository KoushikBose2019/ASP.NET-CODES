using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MultipleSave : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = Txtnm.Text.Trim();
        string Adr = Txtadr.Text.Trim();
        string Ph = Txtph.Text.Trim();
        int Pin = Convert.ToInt32(Txtpin.Text.Trim());
        string City = DropDownList1.SelectedValue.ToString();
        string Gen = RadioButtonList1.SelectedValue.ToString();
        string Secname = DropDownList2.SelectedValue.ToString();
        string ClassName = DropDownList3.SelectedValue.ToString();
        Random rd = new Random();
        int i = rd.Next(1, 9999);
        string Sid = "S" + i.ToString();
        int j = rd.Next(1, 99999);
        string Secide = "Se" + j.ToString();
        int k = rd.Next(1, 99999);
        string Stdroll = "R" + k.ToString();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\IMG\\" + FileUpload1.FileName));
            string Path = "~\\IMG\\" + FileUpload1.FileName;
            try
            {
                string Query = "insert into StudentDetails values('" + Sid + "','" + Name + "','" + Adr + "','" + Ph + "'," + Pin + ",'" + City + "','" + Gen + "','" + Path + "');";
                Query += "insert into SectionDetails values('" + Secide + "','" + Secname + "','" + ClassName + "','" + Stdroll + "','" + Sid + "')";
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
        else
        {
            Label1.Text = "Choose Image!!";
        }
    }
}