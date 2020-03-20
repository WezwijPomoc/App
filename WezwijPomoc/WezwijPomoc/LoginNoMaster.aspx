<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WezwijPomoc.LogowanieInstytucja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="fonts/MainPage.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <title>Wezwij Pomoc</title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
        <div id="header">
            <div class="pasek-white">
                <div style="width:10%;float:left">
                    <img src="img/WOT-logo.png" alt="WOT-logo" />

                </div>
                <div style="width:auto;float:left;text-align:left;vertical-align:central">
                    <span style="padding-top:10%"> WOJSKA OBRONY<br />TERYTORIALNEJ</span>
                </div>
                

            </div>

            <div class="pasek-blue">
                <p>#wezwij-pomoc</p> <%--tak jak sie stona bedzie nazywała--%>
            </div>
            <div class="pasek-white">

            </div>
        </div>


        <div id="mainbody">
        <div>
            <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
                 <asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="naglowekLabel" CssClass="naglowek" runat="server" Text="<b>Logowanie Instytucja<b>" Font-Size="Large" Font-Bold="True"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>

        <div>
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
                <asp:TableRow >
                    <asp:TableCell>
                        <i class="far fa-address-card"></i>
                        <asp:Label ID="Label1" CssClass="teksty" runat="server" Text="Login"></asp:Label>
                    </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow >
                    <asp:TableCell>
                        
                        <asp:TextBox CssClass="pola-teksty" ID="loginTextBox" runat="server"></asp:TextBox>
                    </asp:TableCell>
                        <asp:TableCell>
                             <asp:RequiredFieldValidator ID="loginRequiredFieldValidator" ControlToValidate="loginTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>              
                        <asp:RegularExpressionValidator ID="loginRegularExpressionValidator" ControlToValidate="loginTextBox" ValidationExpression="^.{3,18}$" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="Zły format" Text="*" ></asp:RegularExpressionValidator>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow >
                    <asp:TableCell>
                        <i class="fas fa-key"></i>
                        <asp:Label ID="Label2" CssClass="teksty" runat="server" Text="Hasło"></asp:Label>
</asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow >
                      <asp:TableCell>
                        
                        <asp:TextBox CssClass="pola-teksty" ID="hasloTextBox" runat="server" TextMode="Password"></asp:TextBox>
                 </asp:TableCell>
                      <asp:TableCell>
                             <asp:RequiredFieldValidator ID="hasloRequiredFieldValidator" ControlToValidate="hasloTextBox" runat="server" ErrorMessage="Pole wymagane" Text="*" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="hasloRegularExpressionValidator" ControlToValidate="hasloTextBox" ValidationExpression="^.{8,24}$" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="Zły format" Text="*"></asp:RegularExpressionValidator>
                      </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow >
                    <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" VerticalAlign="Middle">
                        <asp:Button ID="potwierdzButton" CssClass="button" runat="server" Text="Potwierdź" OnClick="potwierdzButton_Click" ValidateRequestMode="Enabled" CausesValidation="True"   />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" VerticalAlign="Middle">
                        <asp:Button ID="rejestracjaButton" CssClass="button" runat="server" Text="Rejestracja" CausesValidation="false" OnClick="potwierdzButton_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
           
        </div>

            </div>
           <div class="stopka">
               <div class="lewo-footer">
                   <div>
                    <p> Dowódzwo Wosjsk Obrony Teyorialnej</p>
                   </div>
                   <div class="stopka-tekst">
                        <p><i class="fas fa-map-marker-alt"></i>   ul. Juzistek 2, 05-131 Zegrze</p> 
                        <p><i class="fas fa-phone-alt"></i>   Sekretariat: tel. 261 883 901</p>
                        <p><i class="fas fa-fax"></i>   fax 261 833 526</p>
                        <p> </p>
                        <p><i class="far fa-envelope"></i>   rzecznik.wot@mon.gov.pl</p>
                   </div>
                   </div>
               <div class="srodek-footer"> 
                   <div>
                        <p>Ważne numery</p>
                   </div>
                   <div class="stopka-tekst">
                       <p>Wsparcie psychologiczne WOT</p>
                       <p><i class="fas fa-phone-alt"></i>   tel. 800 100 102 </p>
                       <p><i class="fab fa-skype"></i> "Wspacie psychologiczne WOT</p>
                   </div>
                   
               </div>
               <div class="prawo-footer">  
                   <div>
                       <p> Odwiedź nas na </p>
                   </div>
                   <div class="stopka-tekst">
                      <a href="https://www.facebook.com/Terytorialsi/" target="_blank" ><i class="fab fa-facebook-square"></i></a>
                      <a href="https://www.youtube.com/channel/UCg9-1duY5udCey7OyL3gWsQ" target="_blank" ><i class="fab fa-youtube"> </i></a>
                      <a href="https://twitter.com/terytorialsi" target="_blank" > <i class="fab fa-twitter"></i></a>
                      <a href="https://www.instagram.com/wojska_obrony_terytorialnej/" target="_blank" ><i class="fab fa-instagram"></i></a>
                                
                               

                   </div>
                  
               </div>
           </div>
        </div>
    </form>
</body>
</html>
