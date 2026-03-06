using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aud1
{
    public partial class Converter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                List<ListItem> list_items = new List<ListItem>();
                ListItem item1 = new ListItem("euro", "61");
                ListItem item2 = new ListItem("dolar", "55");
                list_items.Add(item1);
                list_items.Add(item2);

                ListaValuti.DataSource = list_items;
                ListaValuti.DataBind();

            }
        }

        protected void DodadiValuta_Click(object sender, EventArgs e)
        {
            ListItem item = new ListItem(ImeValuta.Text, VrednostValuta.Text);
            ListaValuti.Items.Add(item);
            ImeValuta.Text = "";
            VrednostValuta.Text = "";
            updateTotal();
        }

        protected void BrisiValuta_Click(object sender, EventArgs e)
        {
            if(ListaValuti.SelectedIndex != -1)
            {
                ListaValuti.Items.Remove(ListaValuti.SelectedItem);
                updateTotal();
            }
            else
            {
                status.Text = "Izberete stavka za brishenje";
            }
        }

        private void updateTotal()
        {
            total.Text = ListaValuti.Items.Count.ToString();
        }

        protected void ListaValuti_SelectedIndexChanged(object sender, EventArgs e)
        {
            int value = Convert.ToInt32(ListaValuti.SelectedValue);

            status.Text = Convert.ToString(Convert.ToInt32(Vrednost.Text) * value);


        }
    }
}