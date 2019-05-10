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
        Enter Key: <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="295px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BorderStyle="Inset" Font-Bold="True" ForeColor="#000066" Height="31px" Text="Search" Width="87px" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </center>
    </div>
        <div>
            <center>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </center>
        </div>
    </form>
</body>
</html>
