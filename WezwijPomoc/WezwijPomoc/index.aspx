<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WezwijPomoc.index" %>

<!DOCTYPE html>

  

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Wezwij Pomoc</title>

    <!-- poniższy skrypt nie działa jeszcze -->
    <script language="C#" runat="server">   

        void zmianaKimJestesRadioButtonList(object Source, EventArgs e)
        {
            kimJesteslLabel.Text = "wychwycilem zmiane";
        }

  </script>
        
</head>
<body>
    <form id="form1" runat="server">
        <!-- nagłówek -->
        <div>
            <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Image ID="helpImage" runat="server" ImageUrl="~/img/help.gif"/>
                    </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="naglowekLabel" runat="server" Text="FORMULARZ UŻYTKOWNIKA" Font-Size="Large" Font-Bold="True"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        

        <!-- Formularz wypełniany przez użytkownika -->
        <div>
            <asp:Table ID="Table1" runat="server" Width="382px" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="imieLabel" runat="server" Text="Imię"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="imieRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="imieTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="kimJesteslLabel" runat="server" Text="Kim jesteś"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="kimJestesRadioButtonList" runat="server" OnSelectedIndexChanged="zmianaKimJestesRadioButtonList" >
                            <asp:ListItem>Pesel</asp:ListItem>
                            <asp:ListItem>Regon</asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="peselLabel" runat="server" Text="Pesel/Regon"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="peselTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="peselRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="peselTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="peselRegularExpressionValidator" ValidationExpression="^\d{11}" runat="server" ErrorMessage="Wymagany format ccccccccccc" ControlToValidate="peselTextBox" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="numerTelefonuLabel" runat="server" Text="Numer telefonu"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="numerTelefonuTextBox" runat="server" Text="+48 "></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="numerTelefonuRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="numerTelefonuTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="numerTelefonuRegularExpressionValidator" ValidationExpression="^\+48 \d{9}" runat="server" ErrorMessage="Wymagany format +48 ccccccccc" ControlToValidate="numerTelefonuTextBox" ForeColor="Red"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="kategoriaPomocyLabel" runat="server" Text="Kategoria pomocy"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="kategoriaPomocyDropDownList" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="kodPocztowyLabel" runat="server" Text="Kod pocztowy"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="kodPocztowyTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="kodPocztowyRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="kodPocztowyTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="kodPocztowyRegularExpressionValidator" runat="server" ValidationExpression="^\d{2}\-\d{3}" ErrorMessage="Wymagany format cc-ccc" ControlToValidate="kodPocztowyTextBox" ForeColor="Red"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="miejscowoscLabel" runat="server" Text="Miejscowość"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="miejscowoscTextBox" runat="server" ></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="miejscowoscRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="miejscowoscTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="miejscowoscRegularExpressionValidator" runat="server" ValidationExpression="(([a-zA-Z]{3,32}(\s|-){1}[a-zA-Z]{3,32})|([a-zA-Z]{3,32}))" ErrorMessage="Max dlugosc 30 znaków" ControlToValidate="miejscowoscTextBox" ForeColor="Red"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="adresLabel" runat="server" Text="Adres"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="adresTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" VerticalAlign="Middle">
                        <asp:Button ID="wyslijZgloszenieButton" runat="server" Text="Wyślij zgłoszenie" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div> 


    </form>
</body>

  
    
</html>
