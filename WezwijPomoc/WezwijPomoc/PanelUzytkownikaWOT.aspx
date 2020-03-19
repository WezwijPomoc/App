<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelUzytkownikaWOT.aspx.cs" Inherits="WezwijPomoc.PanelUzytkownikaWOT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" >
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Zmiana statusu" ShowHeader="True" Text="Zmiana statusu" />
                </Columns>
                <EmptyDataRowStyle BorderStyle="None" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
