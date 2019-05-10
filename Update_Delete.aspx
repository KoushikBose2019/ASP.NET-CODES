<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update_Delete.aspx.cs" Inherits="Update_Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 180px;
        }
        .auto-style3 {
            width: 127px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            width: 127px;
            height: 30px;
        }
        .auto-style6 {
            width: 180px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True" DataKeyNames="empid" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="3">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="Check">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="empid" HeaderText="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Addr" HeaderText="Address" />
                <asp:BoundField DataField="Phno" HeaderText="Contact Number" />
                <asp:BoundField DataField="Sal" HeaderText="Salary" />
                <asp:BoundField DataField="City" HeaderText="City" />
                <asp:BoundField DataField="Gen" HeaderText="Gender" />
                <asp:BoundField DataField="Dep" HeaderText="Department" />
                <asp:BoundField DataField="Cmp" HeaderText="Company" />
                <asp:TemplateField HeaderText="Action">
                   <ItemTemplate>
                       <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click"></asp:Button>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
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
        <div>
            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid">
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Name:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="Txtnm" runat="server" Height="20px" Width="158px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Address:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="Txtadr" runat="server" Height="20px" Width="158px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Contact No:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="Txtph" runat="server" Height="20px" Width="158px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Salary:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtsal" runat="server" Height="20px" Width="158px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">City:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="Txtcity" runat="server" Height="20px" Width="158px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Gender:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="Txtgen" runat="server" Height="20px" Width="158px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Department:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="Txtdep" runat="server" Height="20px" Width="158px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style5">Company:</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="Txtcmp" runat="server" Height="20px" Width="158px"></asp:TextBox>
                        </td>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="#000066" Height="30px" OnClick="Button3_Click" Text="Update" Width="74px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
