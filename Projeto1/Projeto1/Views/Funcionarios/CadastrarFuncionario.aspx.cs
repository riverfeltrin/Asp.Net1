using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Projeto1.Models;
using Projeto1.Views;
using Projeto1.Controllers;
namespace Projeto1.Views.Funcionarios
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected BancoProjetoContainer contexto = new BancoProjetoContainer();
        DepartamentoController departamento = new DepartamentoController();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            departamento.ListarDepartamentos();
            lbxDepartamento = 
        }
        protected void btnSalvar_Click1(object sender, EventArgs e)
        {
            Funcionario funcionario = new Funcionario();
            funcionario.Nome = txtClienteNome.Text;
            funcionario.Endereco = txtEndereco.Text;
            funcionario.Telefone = txtTelefone.Text;


        }
    }
}