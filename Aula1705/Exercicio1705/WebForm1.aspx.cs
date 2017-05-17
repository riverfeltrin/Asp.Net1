using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercicio1705
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMais_Click(object sender, EventArgs e)
        {
            int numero1 = Convert.ToInt16(txtNumero1.Text);
            int numero2 = Convert.ToInt16(txtNumero2.Text);
            txtResultadoForm1.Text = Convert.ToString(numero1 + numero2);
        }
    }
}