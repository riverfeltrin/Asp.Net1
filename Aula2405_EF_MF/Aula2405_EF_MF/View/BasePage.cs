﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Aula2405_EF_MF.Models;
namespace Aula2405_EF_MF.View
{
    public class BasePage : System.Web.UI.Page
    {
        protected BaseDadosContainer contexto = new BaseDadosContainer();
    }
}