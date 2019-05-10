<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadImage.aspx.cs" Inherits="UploadImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 242px;
        }
        .auto-style3 {
            width: 174px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">Choose Image:</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">Description:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="19px" TextMode="MultiLine" Width="207px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
        <div>
            <center>
                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CellPadding="3" RepeatColumns="3">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="290px" Width="290px" ImageUrl='<%#Eval("Imgpath") %>'></asp:Image><br />
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("ImgDesc") %>'></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
            </center>
        </div>
    </form>
</body>
</html>
