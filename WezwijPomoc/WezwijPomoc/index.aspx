<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="index.aspx.cs" Inherits="WezwijPomoc.index" %>
<%@ Import Namespace="WezwijPomoc" %>
<%@ Import Namespace="System.Diagnostics" %>
<!DOCTYPE html>

  

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Wezwij Pomoc</title>

  
  
</head>
<body>
    <form id="form1" runat="server">
        <!-- nagłówek -->
        <div >
            <asp:Table ID="Table2" CssClass="tabelka" runat="server" HorizontalAlign="Center">
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
                    <asp:TextBox ID="zakresWsparciaTextBox" TextMode="MultiLine" Rows="10" runat="server"></asp:TextBox>

                 </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="zakresWsparciaRequiredFieldValidator" runat="server" ErrorMessage="* Pole wymagane" ForeColor="Red" Display="Dynamic" ControlToValidate="zakresWsparciaTextBox"></asp:RequiredFieldValidator>
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
                    <asp:TextBox ID="rokTextBox"  runat="server" ></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="rokRequiredFieldValidator" ControlToValidate="rokTextBox" runat="server"  Display="Dynamic" ErrorMessage="*Pole wymagane" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rokRegularExpressionValidator" runat="server" ValidationExpression="^[2][0][2][0-9]$" ControlToValidate="rokTextBox" Display="Dynamic" ErrorMessage="*Zły format" ForeColor="Red"></asp:RegularExpressionValidator>
               </asp:TableCell>
            </asp:TableRow>
           
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="miesiacLabel" runat="server" Text="Miesiąc"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="miesiacDropDownList" runat="server">
                        <asp:ListItem Selected="True" Text="Styczeń"></asp:ListItem>
                        <asp:ListItem Text="Luty"></asp:ListItem>
                        <asp:ListItem Text="Marzec"></asp:ListItem>
                        <asp:ListItem Text="Kwiecień"></asp:ListItem>
                        <asp:ListItem Text="Maj"></asp:ListItem>
                        <asp:ListItem Text="Czerwiec"></asp:ListItem>
                        <asp:ListItem Text="Lipiec"></asp:ListItem>
                        <asp:ListItem Text="Sierpień"></asp:ListItem>
                        <asp:ListItem Text="Wrzesień"></asp:ListItem>
                        <asp:ListItem Text="Październik"></asp:ListItem>
                        <asp:ListItem Text="Listopad"></asp:ListItem>
                        <asp:ListItem Text="Grudzień"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
               
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="dzienLabel" runat="server" Text="Dzień"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="dzienDropDownList" runat="server">
                        <asp:ListItem Selected="True" Text="1"></asp:ListItem>
                        <asp:ListItem Text="2" ></asp:ListItem>
                        <asp:ListItem Text="3" ></asp:ListItem>
                        <asp:ListItem Text="4" ></asp:ListItem>
                        <asp:ListItem Text="5" ></asp:ListItem>
                        <asp:ListItem Text="6" ></asp:ListItem>
                        <asp:ListItem Text="7" ></asp:ListItem>
                        <asp:ListItem Text="8" ></asp:ListItem>
                        <asp:ListItem Text="9" ></asp:ListItem>
                        <asp:ListItem Text="10" ></asp:ListItem>
                        <asp:ListItem Text="11" ></asp:ListItem>
                        <asp:ListItem Text="12" ></asp:ListItem>
                        <asp:ListItem Text="13" ></asp:ListItem>
                        <asp:ListItem Text="14" ></asp:ListItem>
                        <asp:ListItem Text="15" ></asp:ListItem>
                        <asp:ListItem Text="16" ></asp:ListItem>
                        <asp:ListItem Text="17" ></asp:ListItem>
                        <asp:ListItem Text="18" ></asp:ListItem>
                        <asp:ListItem Text="19" ></asp:ListItem>
                        <asp:ListItem Text="20" ></asp:ListItem>
                        <asp:ListItem Text="21" ></asp:ListItem>
                        <asp:ListItem Text="22" ></asp:ListItem>
                        <asp:ListItem Text="23" ></asp:ListItem>
                        <asp:ListItem Text="24" ></asp:ListItem>
                        <asp:ListItem Text="25" ></asp:ListItem>
                        <asp:ListItem Text="26" ></asp:ListItem>
                        <asp:ListItem Text="27" ></asp:ListItem>
                        <asp:ListItem Text="28" ></asp:ListItem>
                        <asp:ListItem Text="29" ></asp:ListItem>
                        <asp:ListItem Text="30" ></asp:ListItem>
                        <asp:ListItem Text="31" ></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
                 
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="godzinaLabel" runat="server" Text="Godzina"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="godzinaTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                      <asp:RequiredFieldValidator ID="godzinaRequiredFieldValidator" ControlToValidate="godzinaTextBox" runat="server" ErrorMessage="*Pole wymagane" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="godzinaRegularExpressionValidator" ValidationExpression="^([01][0-9]|2[0-3]):[0-5][0-9]" runat="server" ErrorMessage="*Zły format" ControlToValidate="godzinaTextBox" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Label ID="priorytetLabel" runat="server" Text="PRIORYTET"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>PILNE - realizacja do 8 h</asp:ListItem>
                        <asp:ListItem>UMIARKOWANE - realizacja 8-16 h</asp:ListItem>
                        <asp:ListItem Selected="True">MOŻE CZEKAĆ - do realizacji 16-48 h</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
           
                 <asp:TableCell>
                        <asp:Label ID="kodPocztowyLabel4" runat="server" Text="Kod pocztowy"></asp:Label>
                     </asp:TableCell>
                 <asp:TableCell>
                        <asp:TextBox ID="kodPocztowyTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                        <asp:RequiredFieldValidator ID="kodPocztowyRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="kodPocztowyTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="kodPocztowyRegularExpressionValidator" runat="server" ValidationExpression="^\d{2}\-\d{3}" ErrorMessage="Wymagany format cc-ccc" ControlToValidate="kodPocztowyTextBox" ForeColor="Red"></asp:RegularExpressionValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="miejscowoscLabel" runat="server" Text="Miejscowość"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="miejscowoscTextBox" runat="server" ></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                        <asp:RequiredFieldValidator ID="miejscowoscRequiredFieldValidator" runat="server" ErrorMessage="*Pole wymagane" ControlToValidate="miejscowoscTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="miejscowoscRegularExpressionValidator" runat="server" ValidationExpression="(([a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32}(\s|-){1}[a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32})|([a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32}))" ErrorMessage="*Max dlugosc 30 znaków" ControlToValidate="miejscowoscTextBox" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="adresLabel" runat="server" Text="Adres"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="adresTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="adresRequiredFieldValidator" runat="server" ErrorMessage="*Pole wymagane" ForeColor="Red" Display="Dynamic" ControlToValidate="adresTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="adresRegularExpressionValidator" ValidationExpression="^[a-zA-Z]([a-zA-Z-]+\s)+\d{1,4}$" runat="server" ErrorMessage="*Zły format (bez znakow specjalnych)" ForeColor="Red" Display="Dynamic" ControlToValidate="adresTextBox"></asp:RegularExpressionValidator>
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
                <asp:TableCell>
                         <asp:RequiredFieldValidator ID="imieRequiredFieldValidator" ControlToValidate="imieTextBox" runat="server" ErrorMessage="*Pole wymagane" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="imieRegularExpressionValidator" ValidationExpression="^[a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ\s]+$" ControlToValidate="imieTextBox" runat="server"  ErrorMessage="*Zły format (tylko litery)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </asp:TableCell>
            </asp:TableRow>
              <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="nazwiskoLabel" runat="server" Text="Nazwisko"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="nazwiskoTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                  <asp:TableCell>
                         <asp:RequiredFieldValidator ID="nazwiskoRequiredFieldValidator" ControlToValidate="nazwiskoTextBox" runat="server" ErrorMessage="*Pole wymagane" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="nazwiskoRegularExpressionValidator" ValidationExpression="^[a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ\s]+$" ControlToValidate="nazwiskoTextBox" runat="server"  ErrorMessage="*Zły format (tylko litery)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
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
                         <asp:RequiredFieldValidator ID="numerTelefonuRequiredFieldValidator" ControlToValidate="numerTelefonuTextBox" runat="server" ErrorMessage="*Pole wymagane" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="numerTelefonuRegularExpressionValidator" ValidationExpression="^\+48 \d{9}" runat="server" ErrorMessage="*Wymagany format +48 ccccccccc" ControlToValidate="numerTelefonuTextBox" ForeColor="Red" Display="Dynamic" ></asp:RegularExpressionValidator>
                </asp:TableCell>
                </asp:TableRow>
             <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="emailLabel" runat="server" Text="e-mail"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                 <asp:TableCell>
                         <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" ControlToValidate="emailTextBox" runat="server" ErrorMessage="*Pole wymagane" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
              <asp:TableRow>
                    <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" VerticalAlign="Middle">
                        <asp:Button ID="wyslijZgloszenieButton"  runat="server" Text="Wyślij zgłoszenie"  />
                        
                    </asp:TableCell>

              </asp:TableRow>
            </asp:Table>
        </div>

       
      

        </form></body></html>