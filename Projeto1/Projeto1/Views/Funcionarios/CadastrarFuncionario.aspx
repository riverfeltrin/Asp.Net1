<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastrarFuncionario.aspx.cs" Inherits="Projeto1.Views.Funcionarios.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

        <asp:Label ID="lblNomeCliente" runat="server" Text="Nome: "></asp:Label>
        <asp:TextBox ID="txtClienteNome" runat="server" Width="148px"></asp:TextBox><br />

        <asp:Label ID="lblEndereco" runat="server" Text="Endereço: "></asp:Label>
        <asp:TextBox ID="txtEndereco" runat="server" Width="125px"></asp:TextBox><br />

        <asp:Label ID="lblTelefone" runat="server" Text="Telefone: "></asp:Label>
        <asp:TextBox ID="txtTelefone" runat="server" Width="129px"></asp:TextBox><br />

        <asp:Label ID="lblDepartamento" runat="server" Text="Departamento: "></asp:Label>
        <asp:ListBox ID="lbxDepartamento" runat="server" Height="22px" Width="132px"></asp:ListBox><br />

        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click1" />

    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
