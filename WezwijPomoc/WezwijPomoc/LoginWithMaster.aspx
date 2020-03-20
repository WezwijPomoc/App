<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginWithMaster.aspx.cs" Inherits="WezwijPomoc.LoginWithMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" runat="server">
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
</asp:Content>
