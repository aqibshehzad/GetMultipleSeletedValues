<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Get Multiple selected Text</title>
</head>
<body>
    <form id="form1" runat="server" style="color: ">
        <div>
            <asp:CheckBoxList ID="chklistcolors" runat="server">
                <asp:ListItem Text="White">White</asp:ListItem>
                <asp:ListItem Text="Black">Black</asp:ListItem>
                <asp:ListItem Text="Green">Green</asp:ListItem>
                <asp:ListItem Text="Yellow">Yellow</asp:ListItem>
                <asp:ListItem Text="Red">Red</asp:ListItem>
                <asp:ListItem Text="Pink">Pink</asp:ListItem>
                <asp:ListItem Text="Orange">Orange</asp:ListItem>
                <asp:ListItem Text="Gray">Gray</asp:ListItem>
                <asp:ListItem Text="Blue">Blue</asp:ListItem>
                <asp:ListItem Text="Purple">Purple</asp:ListItem>
            </asp:CheckBoxList>

            <asp:Button ID="btnget" runat="server" Text="Get Normal Values" OnClick="btnget_Click" />
            <asp:Button ID="btngetsplittedvalues" runat="server" Text="Get Comma Splitted Values" OnClick="btngetsplittedvalues_Click" /><br />
            <asp:Label ID="lblvalues" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
