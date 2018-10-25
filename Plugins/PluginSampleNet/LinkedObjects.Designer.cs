namespace PluginSampleNet
{
    partial class LinkedObjects
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textBoxObject = new System.Windows.Forms.TextBox();
            this.comboBoxLink = new System.Windows.Forms.ComboBox();
            this.listBoxLinkedObjects = new System.Windows.Forms.ListBox();
            this.buttonOK = new System.Windows.Forms.Button();
            this.buttonCancel = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(8, 8);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(48, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Объект:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(8, 40);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(41, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Связь:";
            // 
            // textBoxObject
            // 
            this.textBoxObject.Location = new System.Drawing.Point(80, 8);
            this.textBoxObject.Name = "textBoxObject";
            this.textBoxObject.ReadOnly = true;
            this.textBoxObject.Size = new System.Drawing.Size(372, 20);
            this.textBoxObject.TabIndex = 2;
            // 
            // comboBoxLink
            // 
            this.comboBoxLink.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxLink.FormattingEnabled = true;
            this.comboBoxLink.Location = new System.Drawing.Point(80, 40);
            this.comboBoxLink.Name = "comboBoxLink";
            this.comboBoxLink.Size = new System.Drawing.Size(372, 21);
            this.comboBoxLink.TabIndex = 3;
            this.comboBoxLink.SelectedIndexChanged += new System.EventHandler(this.comboBoxLink_SelectedIndexChanged);
            // 
            // listBoxLinkedObjects
            // 
            this.listBoxLinkedObjects.FormattingEnabled = true;
            this.listBoxLinkedObjects.Location = new System.Drawing.Point(8, 72);
            this.listBoxLinkedObjects.Name = "listBoxLinkedObjects";
            this.listBoxLinkedObjects.Size = new System.Drawing.Size(444, 160);
            this.listBoxLinkedObjects.TabIndex = 4;
            // 
            // buttonOK
            // 
            this.buttonOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.buttonOK.Location = new System.Drawing.Point(296, 246);
            this.buttonOK.Name = "buttonOK";
            this.buttonOK.Size = new System.Drawing.Size(75, 23);
            this.buttonOK.TabIndex = 5;
            this.buttonOK.Text = "OK";
            this.buttonOK.UseVisualStyleBackColor = true;
            // 
            // buttonCancel
            // 
            this.buttonCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.buttonCancel.Location = new System.Drawing.Point(377, 246);
            this.buttonCancel.Name = "buttonCancel";
            this.buttonCancel.Size = new System.Drawing.Size(75, 23);
            this.buttonCancel.TabIndex = 6;
            this.buttonCancel.Text = "Отмена";
            this.buttonCancel.UseVisualStyleBackColor = true;
            // 
            // LinkedObjects
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(464, 281);
            this.Controls.Add(this.buttonCancel);
            this.Controls.Add(this.buttonOK);
            this.Controls.Add(this.listBoxLinkedObjects);
            this.Controls.Add(this.comboBoxLink);
            this.Controls.Add(this.textBoxObject);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "LinkedObjects";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Связанные объекты";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBoxObject;
        private System.Windows.Forms.ComboBox comboBoxLink;
        private System.Windows.Forms.ListBox listBoxLinkedObjects;
        private System.Windows.Forms.Button buttonOK;
        private System.Windows.Forms.Button buttonCancel;
    }
}