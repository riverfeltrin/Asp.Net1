using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Projeto1.Models;
using System.Web.UI.WebControls;

namespace Projeto1.Controllers
{
    public class DepartamentoController
    {
        protected BancoProjetoContainer contexto = new BancoProjetoContainer();

        public void Adicionar(Departamento departamento)
        {
            if (departamento != null)
            {
                contexto.Departamentos.Add(departamento);
                contexto.SaveChanges();
            }
        }
        public List<Departamento> ListarDepartamentos()
        {
            return contexto.Departamentos.ToList();
        }
        public void Excluir(Departamento departamento)
        {
           contexto.Entry(departamento).State = System.Data.Entity.EntityState.Modified;
           contexto.SaveChanges();
        }
        public void Editar(Departamento departamento)
        {
            contexto.Entry(departamento).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }
        public Departamento BuscarDepartamentoPorId(int id)
        {
            return contexto.Departamentos.Find(id);
        }
    }
}