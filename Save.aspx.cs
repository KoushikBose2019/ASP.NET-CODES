using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Save : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Empide = Txtide.Text.Trim();
        string Name = Txtnm.Text.Trim();
        string Addr = Txtadr.Text.Trim();
        string Ph = Txtph.Text.Trim();
        int Salary =Convert.ToInt32(Txtsal.Text.Trim());
        string City = DropDownList1.SelectedValue.ToString();
        string Gender = RadioButtonList1.SelectedValue.ToString();
        string Dept = Txtdep.Text.Trim();
        string Company = Txtcmp.Text.Trim();
        BLL ob = new BLL();
        ob.SaveData(Empide, Name, Addr, Ph, Salary, City, Gender, Dept, Company);
        Label1.Text = "Successfull";
    }
}