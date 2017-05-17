<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Exercicio1705.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblNumero1" runat="server" Text="1° Número"></asp:Label>
    <asp:TextBox ID="txtNumero1" runat="server"></asp:TextBox>
    <asp:Label ID="lblNumero2" runat="server" Text="2° Número"></asp:Label>
    <asp:TextBox ID="txtNumero2" runat="server"></asp:TextBox>
    <asp:Button ID="btnMais" runat="server" Text="+" OnClick="btnMais_Click" />
    <asp:Button ID="btnIgual" runat="server" Text="=" />
    <asp:TextBox ID="txtResultadoForm1" runat="server" ReadOnly="True"></asp:TextBox>
</asp:Content>
