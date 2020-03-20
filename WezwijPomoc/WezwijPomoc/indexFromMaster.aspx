<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="indexFromMaster.aspx.cs" Inherits="WezwijPomoc.indexFromMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" runat="server">

    <!-- nagłówek -->
    <div>
        <asp:Table ID="Table2" CssClass="tabelka" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Image ID="helpImage" Visible="false" runat="server" ImageUrl="~/img/help.gif" />
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
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center">
                    <asp:Label ID="zakresWsparciaLabel" runat="server" Text="CO? - ZAKRES WSPARCIA"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center">
                    <asp:TextBox ID="zakresWsparciaTextBox" CssClass="pola-teksty" TextMode="MultiLine" Rows="10" runat="server"></asp:TextBox>

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
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="rokTextBox" CssClass="pola-teksty" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="rokRequiredFieldValidator" ControlToValidate="rokTextBox" runat="server" Display="Dynamic" ErrorMessage="*Pole wymagane" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rokRegularExpressionValidator" runat="server" ValidationExpression="^[2][0][2][0-9]$" ControlToValidate="rokTextBox" Display="Dynamic" ErrorMessage="*Zły format" ForeColor="Red"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="miesiacLabel" runat="server" Text="Miesiąc"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                     <asp:DropDownList CssClass="pola-teksty" ID="miesiacDropDownList" runat="server">
                        <asp:ListItem Selected="True" Text="Styczeń" Value="01"></asp:ListItem>
                        <asp:ListItem Text="Luty" Value="02"></asp:ListItem>
                        <asp:ListItem Text="Marzec" Value="03"></asp:ListItem>
                        <asp:ListItem Text="Kwiecień" Value="04"></asp:ListItem>
                        <asp:ListItem Text="Maj" Value="05"></asp:ListItem>
                        <asp:ListItem Text="Czerwiec" Value="06"></asp:ListItem>
                        <asp:ListItem Text="Lipiec" Value="07"></asp:ListItem>
                        <asp:ListItem Text="Sierpień" Value="08"></asp:ListItem>
                        <asp:ListItem Text="Wrzesień" Value="09"></asp:ListItem>
                        <asp:ListItem Text="Październik" Value="10"></asp:ListItem>
                        <asp:ListItem Text="Listopad" Value="11"></asp:ListItem>
                        <asp:ListItem Text="Grudzień" Value="12"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="dzienLabel" runat="server" Text="Dzień"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:DropDownList CssClass="pola-teksty" ID="dzienDropDownList" runat="server">

                       <asp:ListItem Selected="True" Text="01" Value ="01"></asp:ListItem>
                        <asp:ListItem Text="02" Value ="02"></asp:ListItem>
                        <asp:ListItem Text="03" Value ="03"></asp:ListItem>
                        <asp:ListItem Text="04" Value ="04"></asp:ListItem>
                        <asp:ListItem Text="05" Value ="05"></asp:ListItem>
                        <asp:ListItem Text="06" Value ="06"></asp:ListItem>
                        <asp:ListItem Text="07" Value ="07"></asp:ListItem>
                        <asp:ListItem Text="08" Value ="08"></asp:ListItem>
                        <asp:ListItem Text="09" Value ="09"></asp:ListItem>
                        <asp:ListItem Text="10" Value ="10"></asp:ListItem>
                        <asp:ListItem Text="11" Value ="11"></asp:ListItem>
                        <asp:ListItem Text="12" Value ="12"></asp:ListItem>
                        <asp:ListItem Text="13" Value ="13"></asp:ListItem>
                        <asp:ListItem Text="14" Value ="14"></asp:ListItem>
                        <asp:ListItem Text="15" Value ="15"></asp:ListItem>
                        <asp:ListItem Text="16" Value ="16"></asp:ListItem>
                        <asp:ListItem Text="17" Value ="17"></asp:ListItem>
                        <asp:ListItem Text="18" Value ="18"></asp:ListItem>
                        <asp:ListItem Text="19" Value ="19"></asp:ListItem>
                        <asp:ListItem Text="20" Value ="20"></asp:ListItem>
                        <asp:ListItem Text="21" Value ="21"></asp:ListItem>
                        <asp:ListItem Text="22" Value ="22"></asp:ListItem>
                        <asp:ListItem Text="23" Value ="23"></asp:ListItem>
                        <asp:ListItem Text="24" Value ="24"></asp:ListItem>
                        <asp:ListItem Text="25" Value ="25"></asp:ListItem>
                        <asp:ListItem Text="26" Value ="26"></asp:ListItem>
                        <asp:ListItem Text="27" Value ="27"></asp:ListItem>
                        <asp:ListItem Text="28" Value ="28"></asp:ListItem>
                        <asp:ListItem Text="29" Value ="29"></asp:ListItem>
                        <asp:ListItem Text="30" Value ="30"></asp:ListItem>
                        <asp:ListItem Text="31" Value ="31"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="godzinaLabel" runat="server" Text="Godzina"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList CssClass="listy" ID="godzinaDropDownList1" runat="server">
                         <asp:ListItem Selected="True" Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                        <asp:ListItem Text="11" Value="11"></asp:ListItem>
                        <asp:ListItem Text="12" Value="12"></asp:ListItem>
                        <asp:ListItem Text="13" Value="13"></asp:ListItem>
                        <asp:ListItem Text="14" Value="14"></asp:ListItem>
                        <asp:ListItem Text="15" Value="15"></asp:ListItem>
                        <asp:ListItem Text="16" Value="16"></asp:ListItem>
                        <asp:ListItem Text="17" Value="17"></asp:ListItem>
                        <asp:ListItem Text="18" Value="18"></asp:ListItem>
                        <asp:ListItem Text="19" Value="19"></asp:ListItem>
                        <asp:ListItem Text="20" Value="20"></asp:ListItem>
                        <asp:ListItem Text="21" Value="21"></asp:ListItem>
                        <asp:ListItem Text="22" Value="22"></asp:ListItem>
                        <asp:ListItem Text="23" Value="23"></asp:ListItem>
                        <asp:ListItem Text="24" Value="24"></asp:ListItem>
   

                    </asp:DropDownList>

                </asp:TableCell>
                <asp:TableCell>

                    <asp:DropDownList CssClass="listy" ID="minutaDropDownList" runat="server">
                        <asp:ListItem Selected="True" Text="00" Value="00"></asp:ListItem>
                        <asp:ListItem Text="01" Value="01"></asp:ListItem>
                        <asp:ListItem Text="02" Value="02"></asp:ListItem>
                        <asp:ListItem Text="03" Value="03"></asp:ListItem>
                        <asp:ListItem Text="04" Value="04"></asp:ListItem>
                        <asp:ListItem Text="05" Value="05"></asp:ListItem>
                        <asp:ListItem Text="06" Value="06"></asp:ListItem>
                        <asp:ListItem Text="07" Value="07"></asp:ListItem>
                        <asp:ListItem Text="08" Value="08"></asp:ListItem>
                        <asp:ListItem Text="09" Value="09"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                        <asp:ListItem Text="11" Value="11"></asp:ListItem>
                        <asp:ListItem Text="12" Value="12"></asp:ListItem>
                        <asp:ListItem Text="13" Value="13"></asp:ListItem>
                        <asp:ListItem Text="14" Value="14"></asp:ListItem>
                        <asp:ListItem Text="15" Value="15"></asp:ListItem>
                        <asp:ListItem Text="16" Value="16"></asp:ListItem>
                        <asp:ListItem Text="17" Value="17"></asp:ListItem>
                        <asp:ListItem Text="18" Value="18"></asp:ListItem>
                        <asp:ListItem Text="19" Value="19"></asp:ListItem>
                        <asp:ListItem Text="20" Value="20"></asp:ListItem>
                        <asp:ListItem Text="21" Value="21"></asp:ListItem>
                        <asp:ListItem Text="22" Value="22"></asp:ListItem>
                        <asp:ListItem Text="23" Value="23"></asp:ListItem>
                        <asp:ListItem Text="24" Value="24"></asp:ListItem>
                        <asp:ListItem Text="25" Value="25"></asp:ListItem>
                        <asp:ListItem Text="26" Value="26"></asp:ListItem>
                        <asp:ListItem Text="27" Value="27"></asp:ListItem>
                        <asp:ListItem Text="28" Value="28"></asp:ListItem>
                        <asp:ListItem Text="29" Value="29"></asp:ListItem>
                        <asp:ListItem Text="30" Value="30"></asp:ListItem>
                        <asp:ListItem Text="31" Value="31"></asp:ListItem>
                        <asp:ListItem Text="32" Value="32"></asp:ListItem>
                        <asp:ListItem Text="33" Value="33"></asp:ListItem>
                        <asp:ListItem Text="34" Value="34"></asp:ListItem>
                        <asp:ListItem Text="35" Value="35"></asp:ListItem>
                        <asp:ListItem Text="36" Value="36"></asp:ListItem>
                        <asp:ListItem Text="37" Value="37"></asp:ListItem>
                        <asp:ListItem Text="38" Value="38"></asp:ListItem>
                        <asp:ListItem Text="39" Value="39"></asp:ListItem>
                        <asp:ListItem Text="40" Value="40"></asp:ListItem>
                        <asp:ListItem Text="41" Value="41"></asp:ListItem>
                        <asp:ListItem Text="42" Value="42"></asp:ListItem>
                        <asp:ListItem Text="43" Value="43"></asp:ListItem>
                        <asp:ListItem Text="44" Value="44"></asp:ListItem>
                        <asp:ListItem Text="45" Value="45"></asp:ListItem>
                        <asp:ListItem Text="46" Value="46"></asp:ListItem>
                        <asp:ListItem Text="47" Value="47"></asp:ListItem>
                        <asp:ListItem Text="48" Value="48"></asp:ListItem>
                        <asp:ListItem Text="49" Value="49"></asp:ListItem>
                        <asp:ListItem Text="50" Value="50"></asp:ListItem>
                        <asp:ListItem Text="51" Value="51"></asp:ListItem>
                        <asp:ListItem Text="52" Value="52"></asp:ListItem>
                        <asp:ListItem Text="53" Value="53"></asp:ListItem>
                        <asp:ListItem Text="54" Value="54"></asp:ListItem>
                        <asp:ListItem Text="55" Value="55"></asp:ListItem>
                        <asp:ListItem Text="56" Value="56"></asp:ListItem>
                        <asp:ListItem Text="57" Value="57"></asp:ListItem>
                        <asp:ListItem Text="58" Value="58"></asp:ListItem>
                        <asp:ListItem Text="59" Value="59"></asp:ListItem>


                    </asp:DropDownList>
                </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" Wrap="False">
                    <asp:Label ID="priorytetLabel" runat="server" Text="PRIORYTET"></asp:Label>

                    <asp:RadioButtonList ID="priorytetRadioButtonList" runat="server">
                        <asp:ListItem Text="PILNE - realizacja do 8 h"></asp:ListItem>
                        <asp:ListItem Text="UMIARKOWANE - realizacja 8-16 h"></asp:ListItem>
                        <asp:ListItem Text="MOŻE CZEKAĆ - do realizacji 16-48 h" Selected="True"></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>

                <asp:TableCell>
                    <asp:Label ID="kodPocztowyLabel4" runat="server" Text="Kod pocztowy"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="kodPocztowyTextBox" CssClass="pola-teksty" runat="server"></asp:TextBox>
                </asp:TableCell><asp:TableCell>
                    <asp:RequiredFieldValidator ID="kodPocztowyRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="kodPocztowyTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="kodPocztowyRegularExpressionValidator" runat="server" ValidationExpression="^\d{2}\-\d{3}" ErrorMessage="Wymagany format cc-ccc" ControlToValidate="kodPocztowyTextBox" ForeColor="Red"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="miejscowoscLabel" runat="server" Text="Miejscowość"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="miejscowoscTextBox" CssClass="pola-teksty" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="miejscowoscRequiredFieldValidator" runat="server" ErrorMessage="*Pole wymagane" ControlToValidate="miejscowoscTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="miejscowoscRegularExpressionValidator" runat="server" ValidationExpression="(([a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32}(\s|-){1}[a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32})|([a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32}))" ErrorMessage="*Max dlugosc 30 znaków" ControlToValidate="miejscowoscTextBox" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="adresLabel" runat="server" Text="Adres"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="adresTextBox" CssClass="pola-teksty" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="adresRequiredFieldValidator" runat="server" ErrorMessage="*Pole wymagane" ForeColor="Red" Display="Dynamic" ControlToValidate="adresTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="adresRegularExpressionValidator" ValidationExpression="(([a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32}(\s|-){1}[a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32})|([a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32}))" runat="server" ErrorMessage="*Zły format (bez znakow specjalnych)" ForeColor="Red" Display="Dynamic" ControlToValidate="adresTextBox"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center">
                    <asp:Label ID="osobaDoKontaktowLabel" runat="server" Text="OSOBA DO KONTAKTÓW"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="imieLabel" runat="server" Text="Imię"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="imieTextBox" CssClass="pola-teksty" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="imieRequiredFieldValidator" ControlToValidate="imieTextBox" runat="server" ErrorMessage="*Pole wymagane" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="imieRegularExpressionValidator" ValidationExpression="^[a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ\s]+$" ControlToValidate="imieTextBox" runat="server" ErrorMessage="*Zły format (tylko litery)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="nazwiskoLabel" runat="server" Text="Nazwisko"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="nazwiskoTextBox" CssClass="pola-teksty" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="nazwiskoRequiredFieldValidator" ControlToValidate="nazwiskoTextBox" runat="server" ErrorMessage="*Pole wymagane" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="nazwiskoRegularExpressionValidator" ValidationExpression="^[a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ\s]+$" ControlToValidate="nazwiskoTextBox" runat="server" ErrorMessage="*Zły format (tylko litery)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="numerTelefonuLabel" runat="server" Text="Numer telefonu"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="numerTelefonuTextBox" CssClass="pola-teksty" runat="server" Text="+48 "></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="numerTelefonuRequiredFieldValidator" ControlToValidate="numerTelefonuTextBox" runat="server" ErrorMessage="*Pole wymagane" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="numerTelefonuRegularExpressionValidator" ValidationExpression="^\+48 \d{9}" runat="server" ErrorMessage="*Wymagany format +48 ccccccccc" ControlToValidate="numerTelefonuTextBox" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="emailLabel" runat="server" Text="e-mail"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="emailTextBox" CssClass="pola-teksty" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" ControlToValidate="emailTextBox" runat="server" ErrorMessage="*Pole wymagane" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" ControlToValidate="emailTextBox" ValidationExpression=".+@[a-z0-9]+\.(pl|com|org|net)" runat="server" ErrorMessage="*Prawidłowy format xxx@xxx.pl/com" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>


                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" VerticalAlign="Middle">
                    <asp:Button ID="wyslijZgloszenieButton" CssClass="button" runat="server" Text="Wyślij zgłoszenie" />

                </asp:TableCell>

            </asp:TableRow>
        </asp:Table>
    </div>






</asp:Content>
