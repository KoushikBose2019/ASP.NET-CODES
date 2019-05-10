<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DynamicSearch.aspx.cs" Inherits="DynamicSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        Enter Key: <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="312px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="30px" Text="Search" Width="101px" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </center>
    </div>
        <div>
            <center>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Enabled="False" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </center>
        </div>
    </form>
</body>
</html>
