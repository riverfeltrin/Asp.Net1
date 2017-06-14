using Aula1406.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Aula1406.Controllers
{
    public class CategoriasController : Controller
    {
        // GET: Categorias (Get é = a carregamento da página)
        public ActionResult Index()
        {
            List<Categoria> categorias = new List<Categoria>();
            //Retornar a lista de objetos cadastrados
            return View(categorias);
        }

        //Get
        public ActionResult Create()
        {
            return View();
        }

        //Post
        [HttpPost]
        //public ActionResult Create(Categoria categoria , string nome, string descricao, bool ativo)
        //public ActionResult Create(Categoria categoria, FormCollection campos) recuperar campo a campo sem ver model
        public ActionResult Create(Categoria categoria)
        {
            if (ModelState.IsValid)
            {
                //insert no banco de dados
            }

            return View(categoria);
        }

        // Get
        public ActionResult Edit(int? id)
        {
           //Verificar se veio ID
            if(id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            //Pesquisa na fonte de dados do objeto a editar
            Categoria categoria = null;

            //Se objeto não foi encontrado na fonte de dados
            if(categoria == null)
            {
                // Erro - 404
                return HttpNotFound();
            }
            return View();
        }
        
        //Post
        [HttpPost]
        public ActionResult Edit(Categoria categoria)
        {
            if (ModelState.IsValid)
            {
                // update
            }
            return View(categoria);
        }


    }
}