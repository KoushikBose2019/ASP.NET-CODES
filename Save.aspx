﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Save.aspx.cs" Inherits="Save" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 136px;
        }
        .auto-style2 {
            width: 193px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">Enter EmployeeID:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtide" runat="server" Height="21px" Width="168px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">Name:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtnm" runat="server" Height="21px" Width="168px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">Address:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtadr" runat="server" Height="21px" Width="168px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">Contact Number:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtph" runat="server" Height="21px" Width="168px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">Salary:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtsal" runat="server" Height="21px" Width="168px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">City:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>...Select City...</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                        <asp:ListItem>Durgapur</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">Gender:</td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">Department:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtdep" runat="server" Height="21px" Width="168px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">Company:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtcmp" runat="server" Height="21px" Width="168px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#000066" Height="34px" OnClick="Button1_Click" Text="Submit" Width="80px" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
