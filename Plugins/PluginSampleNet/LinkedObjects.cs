using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Windows.Forms;
using Loodsman;
using DataProvider;

namespace PluginSampleNet
{
    public partial class LinkedObjects : Form
    {
        const int ldAny = 0;
        const int ldForwardOnly = 1;
        const int ldBackwardOnly = -1;

        private IPluginCall _pluginCall;

        public IPluginCall PluginCall
        {
            get { return _pluginCall; }
            set { _pluginCall = value; loadLinkTypes(); }
        }

        private void loadLinkTypes()
        {
            textBoxObject.Text = PluginCall.stProduct;
            object[] args = { PluginCall.stType, 11 };
            IDataSet dataSet = PluginCall.GetDataSet("GetInfoAboutType", args);
            while (!dataSet.Eof)
            {
                int direction = dataSet.FieldValue["_DIRECTION"];
                if (direction == ldAny || direction == ldForwardOnly)
                {
                    comboBoxLink.Items.Add(dataSet.FieldValue["_NAME"]);
                }
                dataSet.Next();
            }
        }

        public LinkedObjects()
        {
            InitializeComponent();
        }

        private void comboBoxLink_SelectedIndexChanged(object sender, EventArgs e)
        {
            listBoxLinkedObjects.Items.Clear();
            if (comboBoxLink.SelectedIndex == -1)
                return;
            string linkName = (string)comboBoxLink.Items[comboBoxLink.SelectedIndex];
            object[] args = { PluginCall.IdVersion, linkName, false };
            IDataSet dataSet = PluginCall.GetDataSet("GetLinkedFast", args);
            while (!dataSet.Eof)
            {
                listBoxLinkedObjects.Items.Add(dataSet.FieldValue["_PRODUCT"]);
                dataSet.Next();
            }
        }
    }
}
