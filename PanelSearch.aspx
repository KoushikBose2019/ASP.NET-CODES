<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PanelSearch.aspx.cs" Inherits="PanelSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 206px;
        }
        .auto-style2 {
            width: 204px;
        }
        .auto-style3 {
            width: 148px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        Enter EmployeeID: <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="231px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="28px" Text="Search" Width="89px" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </center>
    </div>
        <div>
            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid">
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Name:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblnm" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Address:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lbladr" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Contact Number:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblph" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Salary:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblsal" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">City:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblcity" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Gender:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblgen" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Department:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lbldep" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">Company:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblcmp" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
