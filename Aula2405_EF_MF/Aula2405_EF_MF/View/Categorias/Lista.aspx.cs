using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aula2405_EF_MF.Models;
namespace Aula2405_EF_MF.View.Categorias
{
    public partial class Lista : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Categoria> categorias = contexto.Categorias.ToList();
        }

        protected void btnSalvarCat_Click(object sender, EventArgs e)
        {
            Categoria categoria = new Categoria();
            categoria.Nome = txtNomeCat.Text;
            categoria.Descricao = txtDescricaoCat.Text;

            contexto.Categorias.Add(categoria);
            contexto.SaveChanges();
            txtNomeCat.Text = "";
            txtDescricaoCat.Text = "";
        }

        protected void btnCancelarCat_Click(object sender, EventArgs e)
        {
            txtDescricaoCat.Text = "";
            txtNomeCat.Text = "";
        }
    }
}