<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginNoMaster.aspx.cs" Inherits="WezwijPomoc.LogowanieInstytucja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="fonts/MainPage.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <title>Wezwij Pomoc</title>
</head>
<body style="margin-left: 75px; margin-right: 75px">
    <form id="form1" runat="server">
       <div>
        <div id="header">
            
            <div style="width:10%;float:left">                        
                    <img src="img/WOT-logo.png" alt="WOT-logo" max-width: 100%; height: auto;/>
            </div>

            <div style="margin-left: 175px">
                <div class="pasek-white"> 
                    <div style="width:auto;float:left;text-align:left;vertical-align:central">
                        <span>WOJSKA OBRONY<br />TERYTORIALNEJ</span>
                    </div>  
                </div>

                <div class="pasek-blue">
                    <p style="margin-left:210px; margin-right:210px; font-size: 1.75vw; padding-top: 0.5%;">Platforma wsparcia COWAT-19 dla jednostek organizacyjnych w walce z COVID-19</p>
                </div>
                <div class="pasek-white">

                </div>
            </div>           
        </div>


        <div id="mainbody">
        <div>
            <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
                 <asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="naglowekLabel" CssClass="naglowek" runat="server" Text="<b>Logowanie do platformy COWAT-19<b>" Font-Size="Large" Font-Bold="True"></asp:Label>
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
                </asp:TableRow>
                <asp:TableRow >
                    <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" VerticalAlign="Middle">
                        <asp:Button ID="potwierdzButton" CssClass="button" runat="server" Text="Potwierdź" OnClick="potwierdzButton_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>

            </div>
           <div class="stopka">
               <div class="lewo-footer">
                   <div>
                    <p> Dowództwo Wojsk Obrony Teyorialnej</p>
                   </div>
                   <div class="stopka-tekst">
                        <p><i class="fas fa-map-marker-alt"></i>   ul. Juzistek 2, 05-131 Zegrze</p> 
                        <p><i class="fas fa-phone-alt"></i>   Sekretariat: tel. 261 883 901</p>
                        <p><i class="fas fa-fax"></i>   fax.: 261 833 526</p>
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
                       <p><i class="fas fa-phone-alt"></i>   tel.: 800 100 102 </p>
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
