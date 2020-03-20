<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RejestracjaWithMaster.aspx.cs" Inherits="WezwijPomoc.RejestracjaWithMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script runat="server">
        protected void RadioButton_CheckedChanged(object sender, System.EventArgs e)
        {
            if (wotRadioButton.Checked == true)
            {
                instytucjaGminaDropDownList.Visible = false;
                instytucjaWotDropDownList.Visible = true;
            }
            else
            {
                instytucjaGminaDropDownList.Visible = true;
                instytucjaWotDropDownList.Visible = false;
            }
        }

        protected void dodajInstytucjeButton_OnClick(object sender, System.EventArgs e)
        {
            if (rodzajInstytucjiDodawanieLabel.Visible == false)
            {
                rodzajInstytucjiDodawanieLabel.Visible = true;
                wotRejestrujRadioButton.Visible = true;
                gminaRejestrujRadioButton.Visible = true;

                nazwaInstytucjiLabel.Visible = true;
                nazwaInstytucjiTextBox.Visible = true;
                kodPocztowyLabel.Visible = true;
                kodPocztowyTextBox.Visible = true;

                miejscowoscLabel.Visible = true;
                miejscowoscTextBox.Visible = true;
                adresLabel.Visible = true;
                adresTextBox.Visible = true;
                wojewodztwoLabel.Visible = true;
                wojewodztwoDropDownList.Visible = true;
                numerTelefonuDodawanieLabel.Visible = true;
                numerTelefonuDodawanieTextBox.Visible = true;
                faxLabel.Visible = true;
                faxTextBox.Visible = true;
                emailDodawanieLabel.Visible = true;
                emailDodawanieTextBox.Visible = true;
                dodajButton.Visible = true;
            }
          
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" runat="server">
   
        <div>
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
                <asp:TableRow >
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="loginLabel" runat="server" Text="Login" ></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="loginTextBox" CssClass="pola-teksty" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="loginRequiredFieldValidator" ControlToValidate="loginTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ValidationGroup="dodajValidationGroup"></asp:RequiredFieldValidator>              
                        <asp:RegularExpressionValidator ID="loginRegularExpressionValidator" ControlToValidate="loginTextBox" ValidationExpression="^.{3,18}$" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="Zły format " Text="*" ValidationGroup="dodajValidationGroup"></asp:RegularExpressionValidator>

                    </asp:TableCell>
       
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center" >
                        <asp:Label ID="hasloLabel" runat="server" Text="Haslo"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell >
                        <asp:TextBox ID="hasloTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    </asp:TableCell>
                      <asp:TableCell>
                        <asp:RequiredFieldValidator ID="hasloRequiredFieldValidator" ControlToValidate="hasloTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ValidationGroup="dodajValidationGroup"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="hasloRegularExpressionValidator" ControlToValidate="hasloTextBox" ValidationExpression="^.{8,24}$" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="Zły format " Text="*" ValidationGroup="dodajValidationGroup"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="powtorzHasloLabel" runat="server" Text="Powtórz Hasło"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell >
                        <asp:TextBox ID="powtorzHasloTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="powtorzHasloRequiredFieldValidator" ControlToValidate="powtorzHasloTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ValidationGroup="dodajValidationGroup"></asp:RequiredFieldValidator>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="imieLabel" runat="server" Text="Imie"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                      <asp:TableCell>
                        <asp:RequiredFieldValidator ID="imieRequiredFieldValidator" ControlToValidate="imieTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ValidationGroup="dodajValidationGroup"></asp:RequiredFieldValidator>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="nazwiskoLabel" runat="server" Text="Nazwisko"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="nazwiskoTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                      <asp:TableCell>
                        <asp:RequiredFieldValidator ID="nazwiskoRequiredFieldValidator" ControlToValidate="nazwiskoTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ValidationGroup="dodajValidationGroup"></asp:RequiredFieldValidator>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="numerTelefonuLabel" runat="server" Text="Numer telefonu"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="numerTelefonuTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                      <asp:TableCell>
                        <asp:RequiredFieldValidator ID="numerTelefonuRequiredFieldValidator" ControlToValidate="numerTelefonuTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ValidationGroup="dodajValidationGroup"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="numerTelefonuRegularExpressionValidator" ValidationExpression="^\+48 \d{9}" runat="server" ErrorMessage="Wymagany format +48 ccccccccc" Text="*" ControlToValidate="numerTelefonuTextBox" ForeColor="Red" Display="Dynamic" ValidationGroup="dodajValidationGroup"></asp:RegularExpressionValidator>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="emailLabel" runat="server" Text="Email"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell >
                        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                      <asp:TableCell>
                        <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" ControlToValidate="emailTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ValidationGroup="dodajValidationGroup"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" ControlToValidate="emailTextBox"
                         ValidationExpression="^(([\w-]+\.)+[\w-]+|([a-zA-Z]{1}|[\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z0-9]+[\w-]+\.)+[a-zA-Z]{1}[a-zA-Z0-9-]{1,23})$" 
                         runat="server" ErrorMessage="Prawidłowy format xxx@xxx.pl/com/org/net" Text="*" ForeColor="Red" Display="Dynamic" ValidationGroup="dodajValidationGroup"></asp:RegularExpressionValidator>
                        </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="rodzajInstytucjiLabel" runat="server" Text="Rodzaj Instytucji"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButton
                            ID="wotRadioButton"
                            runat="server"
                            Text="Wot"
                            AutoPostBack="true"
                            OnCheckedChanged="RadioButton_CheckedChanged"
                            Checked="true" 
                            GroupName="rejestracjaGroupName" />


                        <asp:RadioButton
                            ID="gminaRadioButton"
                            runat="server"
                            Text="Gmina"
                            GroupName="rejestracjaGroupName"
                            AutoPostBack="true"
                            OnCheckedChanged="RadioButton_CheckedChanged" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="instytucjaLabel" runat="server" Text="Instytucja"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="instytucjaWotDropDownList" runat="server" Visible="True">
                            <asp:ListItem Selected="True" Text="WOT 1"></asp:ListItem>
                            <asp:ListItem Text="WOT 2"></asp:ListItem>
                            <asp:ListItem Text="WOT 3"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="instytucjaGminaDropDownList" runat="server" Visible="False">
                            <asp:ListItem Selected="True" Text="Gmina 1"></asp:ListItem>
                            <asp:ListItem Text="Gmina 2"></asp:ListItem>
                            <asp:ListItem Text="Gmina 3"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="dodajInstytucjaButton" runat="server" Text="Dodaj instytucję" CssClass="button" OnClick="dodajInstytucjeButton_OnClick" CausesValidation="False" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="3">
                        <asp:Button ID="rejestracjaButton" runat="server" Text="Zarejestruj" CssClass="button" ValidationGroup="dodajValidationGroup" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="dodajValidationGroup" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>

        <div>
            <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
                
                <asp:TableRow>
                 <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="rodzajInstytucjiDodawanieLabel" runat="server" Visible="false" Text="Rodzaj Instytucji"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButton
                            ID="wotRejestrujRadioButton"
                            runat="server"
                            Text="Wot"
                            GroupName="dodawanieGroupName"
                            AutoPostBack="true"
                            OnCheckedChanged="RadioButton_CheckedChanged"
                            Checked="true" 
                            Visible="False" />
                        


                        <asp:RadioButton
                            ID="gminaRejestrujRadioButton"
                            runat="server"
                            Text="Gmina"
                            GroupName="dodawanieGroupName"
                            AutoPostBack="true"
                            OnCheckedChanged="RadioButton_CheckedChanged" 
                            Visible="false"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="nazwaInstytucjiLabel" Visible="false" runat="server" Text="Nazwa instytucji"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="nazwaInstytucjiTextBox" Visible="false" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="nazwaInstytucjiRequiredFieldValidator4" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ControlToValidate="nazwaInstytucjiTextBox"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
           
                 <asp:TableCell>
                        <asp:Label ID="kodPocztowyLabel" Visible="false" runat="server" Text="Kod pocztowy"></asp:Label>
                     </asp:TableCell>
                 <asp:TableCell>
                        <asp:TextBox ID="kodPocztowyTextBox" Visible="false" runat="server"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                        <asp:RequiredFieldValidator ID="kodPocztowyRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" Text="*" ControlToValidate="kodPocztowyTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="kodPocztowyRegularExpressionValidator" runat="server" ValidationExpression="^\d{2}\-\d{3}" ErrorMessage="Wymagany format cc-ccc" Text="*" ControlToValidate="kodPocztowyTextBox" ForeColor="Red"></asp:RegularExpressionValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="miejscowoscLabel" Visible="false" runat="server" Text="Miejscowość"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="miejscowoscTextBox" Visible="false" runat="server" ></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                        <asp:RequiredFieldValidator ID="miejscowoscRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" Text="*" ControlToValidate="miejscowoscTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="miejscowoscRegularExpressionValidator" runat="server" ValidationExpression="(([a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32}(\s|-){1}[a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32})|([a-zA-ZąćężźłóńĄĆŻŹĘŁÓŃ]{3,32}))" ErrorMessage="Max dlugosc 30 znaków" Text="*" ControlToValidate="miejscowoscTextBox" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="adresLabel" Visible="false" runat="server" Text="Adres"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="adresTextBox" Visible="false" runat="server"></asp:TextBox>
                    </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="adresRequiredFieldValidator" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ControlToValidate="adresTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="adresRegularExpressionValidator" ValidationExpression="^[a-zA-Z]([a-zA-Z-]+\s)+\d{1,4}$" runat="server" ErrorMessage="Zły format (bez znakow specjalnych)" Text="*" ForeColor="Red" Display="Dynamic" ControlToValidate="adresTextBox"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="wojewodztwoLabel" Visible="false" runat="server" Text="Województwo"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="wojewodztwoDropDownList" Visible="false" runat="server">
                            <asp:ListItem Text="dolnośląskie"></asp:ListItem>
                            <asp:ListItem Text="kujawsko-pomorskie"></asp:ListItem>
                            <asp:ListItem Text="lubelskie"></asp:ListItem>
                            <asp:ListItem Text="lubuskie"></asp:ListItem>
                            <asp:ListItem Text="łódzkie"></asp:ListItem>
                            <asp:ListItem Text="małopolskie"></asp:ListItem>
                            <asp:ListItem Text="mazowieckie"></asp:ListItem>
                            <asp:ListItem Text="opolskie"></asp:ListItem>
                            <asp:ListItem Text="podkarpackie"></asp:ListItem>
                            <asp:ListItem Text="podlaskie" Selected="True" ></asp:ListItem>
                            <asp:ListItem Text="pomorskie"></asp:ListItem>
                            <asp:ListItem Text="śląskie"></asp:ListItem>
                            <asp:ListItem Text="świętokrzyskie"></asp:ListItem>
                            <asp:ListItem Text="warmińsko-mazurskie"></asp:ListItem>
                            <asp:ListItem Text="wielkopolskie"></asp:ListItem>
                            <asp:ListItem Text="zachodniopomorskie"></asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell >
                        <asp:Label ID="numerTelefonuDodawanieLabel" Visible="false" runat="server" Text="Numer telefonu"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="numerTelefonuDodawanieTextBox" Visible="false" runat="server"></asp:TextBox>
                    </asp:TableCell>
                      <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="numerTelefonuDodawanieTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^\+48 \d{9}" runat="server" ErrorMessage="Wymagany format +48 ccccccccc" Text="*" ControlToValidate="numerTelefonuDodawanieTextBox" ForeColor="Red" Display="Dynamic" ></asp:RegularExpressionValidator>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell >
                        <asp:Label ID="faxLabel" runat="server" Visible="false"  Text="Fax"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="faxTextBox" Visible="false" runat="server"></asp:TextBox>
                    </asp:TableCell>
                      <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="faxTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="^\+48 \d{9}" runat="server" ErrorMessage="Wymagany format +48 ccccccccc" Text="*" ControlToValidate="faxTextBox" ForeColor="Red" Display="Dynamic" ></asp:RegularExpressionValidator>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell >
                        <asp:Label ID="emailDodawanieLabel" Visible="false" runat="server" Text="Email"></asp:Label>

                    </asp:TableCell>
                    <asp:TableCell >
                        <asp:TextBox ID="emailDodawanieTextBox" Visible="false" runat="server"></asp:TextBox>
                    </asp:TableCell>
                      <asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="emailDodawanieTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="emailDodawanieTextBox"
                         ValidationExpression="^(([\w-]+\.)+[\w-]+|([a-zA-Z]{1}|[\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z0-9]+[\w-]+\.)+[a-zA-Z]{1}[a-zA-Z0-9-]{1,23})$" 
                         runat="server" ErrorMessage="Prawidłowy format xxx@xxx.pl/com/org/net" Text="*"  ForeColor="Red" Display="Dynamic" ></asp:RegularExpressionValidator>
                        </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Button ID="dodajButton" Visible="false" runat="server" Text="Dodaj" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>

</asp:Content>
