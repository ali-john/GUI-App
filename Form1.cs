using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab9
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void Passwordbox_MouseClick(object sender, MouseEventArgs e)
        {
            Passwordbox.Text = null;
            Passwordbox.UseSystemPasswordChar = true;
            Passwordbox.ForeColor = SystemColors.WindowText;
        }

        private void UserName_MouseClick(object sender, MouseEventArgs e)
        {
            UserName.Text = null;
            UserName.ForeColor = SystemColors.WindowText;
        }

        private void forgotPassword_MouseClick(object sender, MouseEventArgs e)
        {
            MessageBox.Show("Try using Registration Number");
        }

        private void LOGIN_MouseClick(object sender, MouseEventArgs e)
        {
            string User_name = "alijohn@gmail.com";
            int User_password = 307975;
            if (UserName.Text==User_name && Convert.ToInt32(Passwordbox.Text)==User_password)
            {
                this.Hide();
                MessageBox.Show("Login successful");
                //if login is successful, display calculator:
                Form2 obj=new Form2();
                obj.Show();
            }
            else
            {
                this.Hide();
                MessageBox.Show("Invalid Credentials");
            }
        }
    }
}
