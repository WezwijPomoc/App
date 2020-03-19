<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelUzytkownikaWOT.aspx.cs" Inherits="WezwijPomoc.PanelUzytkownikaWOT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource" >
                <Columns>
                    <asp:BoundField DataField="zakres_wsparcia" HeaderText="zakres_wsparcia" SortExpression="zakres_wsparcia" />
                    <asp:BoundField DataField="priorytet" HeaderText="priorytet" SortExpression="priorytet" />
                    <asp:BoundField DataField="kod_pocztowy" HeaderText="kod_pocztowy" SortExpression="kod_pocztowy" />
                    <asp:BoundField DataField="adres_zgloszenia" HeaderText="adres_zgloszenia" SortExpression="adres_zgloszenia" />
                    <asp:BoundField DataField="nazwa_instytucji" HeaderText="nazwa_instytucji" SortExpression="nazwa_instytucji" />
                    <asp:BoundField DataField="nazwa_instytucji1" HeaderText="nazwa_instytucji1" SortExpression="nazwa_instytucji1" />
                    <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                    <asp:BoundField DataField="data_wygenerowania" HeaderText="data_wygenerowania" SortExpression="data_wygenerowania" />
                    <asp:BoundField DataField="data_rozpoczecia" HeaderText="data_rozpoczecia" SortExpression="data_rozpoczecia" />
                    <asp:BoundField DataField="imie" HeaderText="imie" SortExpression="imie" />
                    <asp:BoundField DataField="nazwisko" HeaderText="nazwisko" SortExpression="nazwisko" />
                    <asp:BoundField DataField="imie1" HeaderText="imie1" SortExpression="imie1" />
                    <asp:BoundField DataField="nazwisko1" HeaderText="nazwisko1" SortExpression="nazwisko1" />
                    <asp:BoundField DataField="imie2" HeaderText="imie2" SortExpression="imie2" />
                    <asp:BoundField DataField="nazwisko2" HeaderText="nazwisko2" SortExpression="nazwisko2" />
                </Columns>
                <EmptyDataRowStyle BorderStyle="None" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:wezwij-pomocDBConnectionString %>" SelectCommand="select Z.zakres_wsparcia, Z.priorytet, Z.kod_pocztowy, Z.adres_zgloszenia, IP.nazwa_instytucji, IZ.nazwa_instytucji, S.nazwa, Z.data_wygenerowania, Z.data_rozpoczecia, O.imie, O.nazwisko, UP.imie, UP.nazwisko, UZ.imie, UZ.nazwisko
from Zgloszenie Z
join Instytucja IP on IP.id_instytucji = Z.id_instytucji_przyjm
join Instytucja IZ on IZ.id_instytucji = Z.id_instytucji_zgl
join Status S on S.id_statusu = Z.id_statusu
join Osoba O on O.id_osoby = Z.id_osoby_do_kontaktu
join Uzytkownik UP on UP.id_uzytkownika = Z.id_uzytkownika_przyjm
join Uzytkownik UZ on UZ.id_uzytkownika = Z.id_uzytkownika_przyjm;
"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
