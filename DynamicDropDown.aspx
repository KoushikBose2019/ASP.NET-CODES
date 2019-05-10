<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DynamicDropDown.aspx.cs" Inherits="DynamicDropDown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        Select Country: <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
    &nbsp;Select State:
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
    </center>
    </div>
    </form>
</body>
</html>
