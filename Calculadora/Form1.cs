using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Calculadora
{
    public partial class Calculadora : Form
    {
        int numero1;
        int numero2;
        string operador;
        public Calculadora()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void btn1_Click(object sender, EventArgs e)
        {
            txtResult.Text += "1";
        }

        private void btn2_Click(object sender, EventArgs e)
        {
            txtResult.Text += "2";
        }

        private void btn3_Click(object sender, EventArgs e)
        {
            txtResult.Text += "3";
        }

        private void btn4_Click(object sender, EventArgs e)
        {
            txtResult.Text += "4";
        }

        private void btn5_Click(object sender, EventArgs e)
        {
            txtResult.Text += "5";
        }

        private void btn6_Click(object sender, EventArgs e)
        {
            txtResult.Text += "6";
        }

        private void btn7_Click(object sender, EventArgs e)
        {
            txtResult.Text += "7";
        }

        private void btn8_Click(object sender, EventArgs e)
        {
            txtResult.Text += "8";
        }

        private void btn9_Click(object sender, EventArgs e)
        {
            txtResult.Text += "9";
        }

        private void btn0_Click(object sender, EventArgs e)
        {
            txtResult.Text += "0";
        }

        private void btnCorrige_Click(object sender, EventArgs e)
        {
            txtResult.Text = "";
        }

        private void btnAdicao_Click(object sender, EventArgs e)
        {
            numero1 = int.Parse(txtResult.Text);
            txtResult.Text = "";
            operador = "+";
            
        }

        private void btnSubtracao_Click(object sender, EventArgs e)
        {
            numero1 = int.Parse(txtResult.Text);
            txtResult.Text = "";
            operador = "-";
        }

        private void btnMultiplicar_Click(object sender, EventArgs e)
        {
            numero1 = int.Parse(txtResult.Text);
            txtResult.Text = "";
            operador = "x";
        }

        private void btnDivisao_Click(object sender, EventArgs e)
        {
            numero1 = int.Parse(txtResult.Text);
            txtResult.Text = "";
            operador = "/";
        }

        private void btnResultado_Click(object sender, EventArgs e)
        {
            numero2 = int.Parse(txtResult.Text);
            txtResult.Text = "";
            int result;
            if (operador.Equals("+"))
            {
                result =  numero1 + numero2;
                txtResult.Text = result.ToString();
            }else
            {
                if (operador.Equals("-"))
                {
                    result = numero1 - numero2;
                    txtResult.Text = result.ToString();
                }
                else
                {
                    if (operador.Equals("/"))
                    {
                        result = numero1 / numero2;
                        txtResult.Text = result.ToString();
                    }else
                    {
                        if (operador.Equals("x"))
                        {
                            result = numero1 * numero2;
                            txtResult.Text = result.ToString();
                        }
                    }
                }
            }
        }
    }
}
