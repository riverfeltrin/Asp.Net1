<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="Aula2405_EF_MF.View.Categorias.Lista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <asp:Label ID="lblNomeCat" runat="server" Text="Nome: "></asp:Label>
    <br />
    <asp:TextBox ID="txtNomeCat" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblDescricaoCat" runat="server" Text="Descrição"></asp:Label>
    <br />
    <asp:TextBox ID="txtDescricaoCat" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="btnSalvarCat" runat="server" Text="Salvar" OnClick="btnSalvarCat_Click" />
    <asp:Button ID="btnCancelarCat" runat="server" Text="Cancelar" OnClick="btnCancelarCat_Click" />
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
