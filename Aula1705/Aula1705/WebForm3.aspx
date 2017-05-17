<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Aula1705.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <asp:Label ID="lblNumero1" runat="server" Text="1° Número"></asp:Label>
    <asp:TextBox ID="txtNumero1" runat="server"></asp:TextBox>
    <asp:Label ID="lblNumero2" runat="server" Text="2° Número"></asp:Label>
    <asp:TextBox ID="txtNumero2" runat="server"></asp:TextBox>
    <asp:Button ID="btnMais" runat="server" Text="+" OnClick="btnMais_Click" />
    <asp:Button ID="btnIgual" runat="server" Text="=" />
    <asp:TextBox ID="txtResultadoForm1" runat="server" ReadOnly="True"></asp:TextBox>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
