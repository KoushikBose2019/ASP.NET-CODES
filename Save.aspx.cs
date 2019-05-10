using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Save : System.Web.UI.Page
{
    OfficeEntities ob = new OfficeEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            string Empide = Txtide.Text.Trim();
            string Name = Txtnm.Text.Trim();
            string Adr = Txtadr.Text.Trim();
            string Phno = Txtph.Text.Trim();
            int Sal = Convert.ToInt32(Txtsal.Text.Trim());
            string City = DropDownList1.SelectedValue.ToString();
            string Gen = RadioButtonList1.SelectedValue.ToString();
            string Dept = Txtdep.Text.Trim();
            string Cmp = Txtcmp.Text.Trim();
            ob.EmployeeDetails.Add(new EmployeeDetails { empid = Empide, Name = Name, Addr = Adr, Phno = Phno, Sal = Sal, City = City, Gen = Gen, Dep = Dept, Cmp = Cmp });
            ob.SaveChanges();
            Lblmsg.Text = "Successfull";
        }
        catch (Exception ex)
        {
            Lblmsg.Text = ex.Message;
        }
    }
}