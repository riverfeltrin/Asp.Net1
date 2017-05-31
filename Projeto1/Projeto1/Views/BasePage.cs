using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Projeto1.Models;
namespace Projeto1.Views
{
    public class BasePage : System.Web.UI.Page
    {
        protected BancoProjetoContainer contexto = new BancoProjetoContainer();
    }
}