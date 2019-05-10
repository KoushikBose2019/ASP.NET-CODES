<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchByID.aspx.cs" Inherits="SearchByID" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        Enter EmployeeID: <asp:TextBox ID="Txtide" runat="server" Height="22px" Width="260px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="29px" Text="Search" Width="101px" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </center>
    </div>
        <div>
            <center>
<asp:DetailsView ID="DetailsView1" runat="server" Width="125px" Height="50px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
    <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                </asp:DetailsView>
            </center>
        </div>
    </form>
</body>
</html>
