using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Projeto1.Models;
namespace Projeto1.Controllers
{
    public class FuncionarioController
    {
        protected BancoProjetoContainer contexto = new BancoProjetoContainer();

        public void Adicionar(Funcionario funcionarios)
        {
            if (funcionarios != null)
            {
                contexto.Funcionarios.Add(funcionarios);
                contexto.SaveChanges();
            }
        }
        public List<Funcionario> ListarFuncionarios()
        {
            return contexto.Funcionarios.Where
                (a => a.Ativo == true).ToList();
        }

        public List<Funcionario> ListarFuncionarioInativo()
        {
            return contexto.Funcionarios.Where
                (a => a.Ativo == false).ToList();
        }

        public void Excluir(Funcionario funcionario)
        {
            funcionario.Ativo = false;
            contexto.Entry(funcionario).State = System.Data.Entity.EntityState.Modified;

            contexto.SaveChanges();
        }
        public void Editar(Funcionario funcionario)
        {
            contexto.Entry(funcionario).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }
    }
}