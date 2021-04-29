namespace Lab9
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }

            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.label1 = new System.Windows.Forms.Label();
            this.UserName = new System.Windows.Forms.TextBox();
            this.Passwordbox = new System.Windows.Forms.TextBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.LOGIN = new System.Windows.Forms.Button();
            this.forgotPassword = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize) (this.pictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize) (this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = global::Lab9.Properties.Resources.images;
            this.pictureBox2.Location = new System.Drawing.Point(283, 41);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(36, 35);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox2.TabIndex = 1;
            this.pictureBox2.TabStop = false;
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label1.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.label1.Location = new System.Drawing.Point(202, 82);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(192, 27);
            this.label1.TabIndex = 2;
            this.label1.Text = "Welcome back!";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // UserName
            // 
            this.UserName.AutoCompleteCustomSource.AddRange(new string[] {"UserName"});
            this.UserName.BackColor = System.Drawing.Color.FloralWhite;
            this.UserName.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.UserName.ForeColor = System.Drawing.Color.LightGray;
            this.UserName.Location = new System.Drawing.Point(216, 152);
            this.UserName.Name = "UserName";
            this.UserName.Size = new System.Drawing.Size(178, 22);
            this.UserName.TabIndex = 3;
            this.UserName.Text = "EmailAddress ";
            this.UserName.MouseClick += new System.Windows.Forms.MouseEventHandler(this.UserName_MouseClick);
            // 
            // Passwordbox
            // 
            this.Passwordbox.BackColor = System.Drawing.Color.FloralWhite;
            this.Passwordbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.Passwordbox.ForeColor = System.Drawing.Color.LightGray;
            this.Passwordbox.Location = new System.Drawing.Point(216, 200);
            this.Passwordbox.Name = "Passwordbox";
            this.Passwordbox.Size = new System.Drawing.Size(178, 22);
            this.Passwordbox.TabIndex = 3;
            this.Passwordbox.Tag = "";
            this.Passwordbox.Text = "Password";
            this.Passwordbox.MouseClick += new System.Windows.Forms.MouseEventHandler(this.Passwordbox_MouseClick);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Lab9.Properties.Resources.jpenal;
            this.pictureBox1.Location = new System.Drawing.Point(107, 82);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(392, 278);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // LOGIN
            // 
            this.LOGIN.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.LOGIN.FlatAppearance.BorderColor = System.Drawing.SystemColors.Highlight;
            this.LOGIN.FlatAppearance.BorderSize = 3;
            this.LOGIN.FlatAppearance.MouseOverBackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.LOGIN.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.LOGIN.Location = new System.Drawing.Point(237, 250);
            this.LOGIN.Name = "LOGIN";
            this.LOGIN.Size = new System.Drawing.Size(132, 33);
            this.LOGIN.TabIndex = 4;
            this.LOGIN.Text = "LOGIN";
            this.LOGIN.UseVisualStyleBackColor = false;
            this.LOGIN.MouseClick += new System.Windows.Forms.MouseEventHandler(this.LOGIN_MouseClick);
            // 
            // forgotPassword
            // 
            this.forgotPassword.BackColor = System.Drawing.SystemColors.Window;
            this.forgotPassword.ForeColor = System.Drawing.SystemColors.ActiveCaption;
            this.forgotPassword.Location = new System.Drawing.Point(119, 307);
            this.forgotPassword.Name = "forgotPassword";
            this.forgotPassword.Size = new System.Drawing.Size(115, 15);
            this.forgotPassword.TabIndex = 5;
            this.forgotPassword.Text = "Forgotten Password?";
            this.forgotPassword.MouseClick += new System.Windows.Forms.MouseEventHandler(this.forgotPassword_MouseClick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(604, 438);
            this.Controls.Add(this.forgotPassword);
            this.Controls.Add(this.LOGIN);
            this.Controls.Add(this.Passwordbox);
            this.Controls.Add(this.UserName);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.pictureBox1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.Text = "Greco";
            ((System.ComponentModel.ISupportInitialize) (this.pictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize) (this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();
        }

        private System.Windows.Forms.Label forgotPassword;

        private System.Windows.Forms.TextBox Passwordbox;

        private System.Windows.Forms.Button LOGIN;

        private System.Windows.Forms.TextBox UserName;

        private System.Windows.Forms.Label label1;

        private System.Windows.Forms.PictureBox pictureBox2;

        private System.Windows.Forms.PictureBox pictureBox1;

        #endregion
    }
}