using System;
using System.Windows.Forms;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab9
{
    public partial class Form2 : Form
    {
        private string Operator = "";
        private double InitialValue = 0;
        private bool OperatorPerformed = false;
        public Form2()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, EventArgs e)
        {   
            //remove initial 0 from screen text
            if ((Screen.Text == "0") )
            {
                Screen.Clear();
            }
            //clear screen after every operation
            if (OperatorPerformed==true)
            {
                Screen.Clear();
            }
            OperatorPerformed = false;
            //take data from sender argument
            Button button = (Button) sender;
            if (button.Text==".")
            {
                //prevent from multiple dots
                if (!Screen.Text.Contains(".") )
                {
                    Screen.Text = Screen.Text + button.Text; 
                }
            }
            else
            {
                Screen.Text = Screen.Text + button.Text;
            }
            
            
        }
        private void Operator_Click(object sender, EventArgs e)
        {
            Button button = (Button) sender;
            Operator = button.Text;
            InitialValue = double.Parse(Screen.Text);
            OperatorPerformed = true;

        }

        private void button2_Click(object sender, EventArgs e)//Clear Screen button
        {
            Screen.Text = "0";
            InitialValue = 0;
        }

        private void Isequal_Click(object sender, EventArgs e)
        {
            switch (Operator)
            {
                case "+":
                    Screen.Text = (InitialValue + double.Parse(Screen.Text)).ToString();
                    break;
                case "-":
                    Screen.Text = (InitialValue - double.Parse(Screen.Text)).ToString();
                    break;
                case "*":
                    Screen.Text = (InitialValue * double.Parse(Screen.Text)).ToString();
                    break;
                case "/":
                    Screen.Text = (InitialValue / double.Parse(Screen.Text)).ToString();
                    break; 
                default:
                    break;

            }
        }
    }
}
