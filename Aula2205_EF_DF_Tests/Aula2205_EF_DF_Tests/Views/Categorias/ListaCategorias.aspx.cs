﻿using Aula2205_EF_DF_Tests.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula2205_EF_DF_Tests.Views.Categorias
{
    public partial class ListaCategorias : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Contexto (Referência para o banco)
            strConnLojaEntities contexto = new strConnLojaEntities();

            gvwCategorias.DataSource = contexto.Categorias.ToList();
            gvwCategorias.DataBind();
        }
    }
}