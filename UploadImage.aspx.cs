using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class UploadImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void ViewImage()
    {
        string Query = "select * from img";
        string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlDataAdapter da = new SqlDataAdapter(Query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ImgDesc = TextBox1.Text.Trim();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Pic\\" + FileUpload1.FileName));
            string Imgpath = "~\\Pic\\" + FileUpload1.FileName;
            try
            {
                string Query = "insert into img values('" + Imgpath + "','" + ImgDesc + "')";
                string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(str);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(Query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                ViewImage();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}