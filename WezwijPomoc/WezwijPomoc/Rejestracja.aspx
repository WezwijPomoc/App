<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rejestracja.aspx.cs" Inherits="WezwijPomoc.Rejestracja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:Label ID="loginLabel" runat="server" Text="Login"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="loginTextBox" runat="server"></asp:TextBox> </asp:TableCell>               
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:Label ID="hasloLabel" runat="server" Text="Haslo"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:TextBox ID="hasloTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:Label ID="emailLabel" runat="server" Text="Email"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Button ID="rejestracjaButton" runat="server" Text="Zarejestruj" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
