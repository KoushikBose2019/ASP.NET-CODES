<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SEarchByName.aspx.cs" Inherits="SEarchByName" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        Enter Name:<asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="290px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BorderStyle="Inset" Font-Bold="True" ForeColor="#000066" Height="31px" Text="Search" Width="91px" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </center>
    </div>
        <div>
            <center>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </center>
        </div>
    </form>
</body>
</html>
