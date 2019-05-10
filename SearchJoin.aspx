<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchJoin.aspx.cs" Inherits="SearchJoin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 187px;
        }
        .auto-style3 {
            width: 129px;
        }
        .auto-style4 {
            width: 202px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        Select StudentID: <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
    </center>
    </div>
        <div>
            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">Name:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblnm" runat="server"></asp:Label>
                        </td>
                        <td rowspan="9">
                            <asp:Image ID="Image1" runat="server" Height="204px" Width="203px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">Address:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lbladr" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">Contact Number:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblph" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">Pincode:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblpin" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">City:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblcity" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">Gender:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblgen" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">SectionName:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblsection" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">ClassName:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblclass" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">RollNumber:</td>
                        <td class="auto-style2">
                            <asp:Label ID="Lblroll" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
