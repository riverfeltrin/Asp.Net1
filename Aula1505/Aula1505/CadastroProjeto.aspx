<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroProjeto.aspx.cs" Inherits="Aula1505.CadastroProjeto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class ="panel-default">
    <div class="panel-body">Cadastro
        <div class ="row">
            <asp:Label ID="lblNome" runat="server" Text="Nome: "></asp:Label>
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNome" runat="server" ErrorMessage="Campo nome é obrigatório!" ControlToValidate="txtnome"></asp:RequiredFieldValidator>
            <br />
           <div class ="row">
               <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
               <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine"></asp:TextBox>
           </div>
            </div>
            <div class ="row">
            <br />
            <asp:Label ID="lblAtivo" runat="server" Text="Ativo:  "></asp:Label>
            <asp:CheckBox ID="chkAtivo" runat="server" />
        </div>
        <div class="row">
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" CausesValidation="false" />
        </div>
        </div>
    </div>
</asp:Content>
