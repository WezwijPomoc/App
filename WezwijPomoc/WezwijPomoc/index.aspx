<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="index.aspx.cs" Inherits="WezwijPomoc.index" %>
<%@ Import Namespace="WezwijPomoc" %>
<%@ Import Namespace="System.Diagnostics" %>
<!DOCTYPE html>

  

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Wezwij Pomoc</title>

    <!-- skrypt - na ten moment useless -->
    <script runat="server">
        protected void RadioButton_CheckedChanged(object sender,System.EventArgs e) {
            if (RadioButton2.Checked == true)
            {
                peselLabel.Visible = false;
                peselTextBox.Visible = false;
                peselRequiredFieldValidator.Enabled = false;
                peselRegularExpressionValidator.Enabled = false;
                regonLabel.Visible = true;
                regonTextBox.Visible = true;
                regonRequiredFieldValidator.Enabled = true;
            }
            else {
                peselTextBox.Visible = true;
                peselLabel.Visible = true;
                 peselRequiredFieldValidator.Enabled = true;
                peselRegularExpressionValidator.Enabled = true;
                regonLabel.Visible = false;
                regonTextBox.Visible = false;
                regonRequiredFieldValidator.Enabled = false;
            }
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
                        <asp:Image ID="helpImage"  Visible="false" runat="server" ImageUrl="~/img/help.gif"/>
                    </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="naglowekLabel" runat="server" Text="FORMULARZ UŻYTKOWNIKA" Font-Size="Large" Font-Bold="True"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>

        <!-- Nowy formularz -->
        <div>
        <asp:Table ID="Table3" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Label ID="zakresWsparciaLabel" runat="server" Text="CO? - ZAKRES WSPARCIA"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:TextBox ID="zakresWsparciaTextBox" runat="server" Height="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Label ID="odKiedyLabel" runat="server" Text="OD KIEDY"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="rokLabel" runat="server" Text="Rok"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="rokTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="miesiacLabel" runat="server" Text="Miesiąc"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="miesiacTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="dzienLabel" runat="server" Text="Dzień"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="dzienTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="godzinaLabel" runat="server" Text="Godzina"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="godzinaTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Label ID="priorytetLabel" runat="server" Text="Priorytet"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>PILNE* - realizacja do 8 h</asp:ListItem>
                        <asp:ListItem>UMIARKOWANE* - realizacja 8-16 h</asp:ListItem>
                        <asp:ListItem Selected="True">MOŻE CZEKAĆ* - do realizacji 16-48 h</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" ColumnSpan="2" >
                    <asp:Label ID="rejonDzialaniaLabel" runat="server" Text="GDZIE ? - REJON DZIAŁANIA"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center"  ColumnSpan="2" >
                    <asp:TextBox ID="rejonDzialaniaTextBox" runat="server" Rows="4" Height="100"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2"  HorizontalAlign="Center" >
                    <asp:Label ID="osobaDoKontaktowLabel" runat="server" Text="OSOBA DO KONTAKTÓW"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="imieLabel" runat="server" Text="Imię"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
            </asp:TableRow>
              <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="nazwiskoLabel" runat="server" Text="Nazwisko"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="nazwiskoTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="numerTelefonuLabel" runat="server" Text="Numer telefonu"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="numerTelefonuTextBox" runat="server" Text="+48 "></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
             <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="emailLabel" runat="server" Text="e-mail"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
            </asp:TableRow>
              <asp:TableRow>
                    <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" VerticalAlign="Middle">
                        <asp:Button ID="wyslijZgloszenieButton"  runat="server" Text="Wyślij zgłoszenie" OnClick="Send"/>
                        <asp:Label ID="test" runat="server" />
                    </asp:TableCell>
                    
                </asp:TableRow>
        </asp:Table>
        </div>
        
        <br />
        <br />
        <!-- Formularz wypełniany przez użytkownika -->
        <div>
            <script runat="server">
                

             
            </script>
            <asp:Table ID="Table1" runat="server" Width="382px" HorizontalAlign="Center">
                <asp:TableRow>
                    
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="imieRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="imieTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                              <asp:RadioButton 
                ID="RadioButton1" 
                runat="server" 
                Text="Pesel"
                GroupName="Software" 
                AutoPostBack="true" 
                OnCheckedChanged="RadioButton_CheckedChanged"
                Checked="true"

                />

                        </asp:TableCell>
                         <asp:TableCell>
                              <asp:RadioButton 
                ID="RadioButton2" 
                runat="server" 
                Text="Regon"
                GroupName="Software" 
                AutoPostBack="true" 
                OnCheckedChanged="RadioButton_CheckedChanged"

                />

                        </asp:TableCell>
                    </asp:TableRow>


               
                <asp:TableRow>
                    <asp:TableCell>
                          <asp:Label ID="peselLabel" runat="server" Text="Pesel"></asp:Label>
                        <asp:Label ID="regonLabel" runat="server" Text="Regon" Visible="false"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="regonTextBox" runat="server" Visible="false"></asp:TextBox>
                        <asp:TextBox ID="peselTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="regonRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="regonTextBox" ForeColor="Red" Enabled="false" Display="Dynamic"></asp:RequiredFieldValidator>
                       <asp:RequiredFieldValidator ID="peselRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="peselTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="peselRegularExpressionValidator" ValidationExpression="^\d{11}" runat="server" ErrorMessage="Wymagany format ccccccccccc" ControlToValidate="peselTextBox" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                   
                        </asp:TableCell>
                </asp:TableRow>
                   <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="Numer telefonu"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox1" runat="server" Text="+48 "></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="numerTelefonuTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^\+48 \d{9}" runat="server" ErrorMessage="Wymagany format +48 ccccccccc" ControlToValidate="numerTelefonuTextBox" ForeColor="Red"></asp:RegularExpressionValidator>
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
                        <asp:RegularExpressionValidator ID="miejscowoscRegularExpressionValidator" runat="server" ValidationExpression="(([a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32}(\s|-){1}[a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32})|([a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32}))" ErrorMessage="Max dlugosc 30 znaków" ControlToValidate="miejscowoscTextBox" ForeColor="Red"></asp:RegularExpressionValidator>
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
              
            </asp:Table>
        </div> 


    </form>
</body>

  
    
</html>
