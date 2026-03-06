using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aud1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PrikaziGrad_Click(object sender, EventArgs e)
        {
            //ListItem selectedItem = ListaGradovi.SelectedItem;
            //SelectedCity.Text = selectedItem.Text;
            //Distance.Text = selectedItem.Value;

            ListItemCollection items = ListaGradovi.Items;

            SelectedCity.Text = "";
            Distance.Text = "";

            foreach(ListItem item in items)
            {
                if (item.Selected)
                {
                    SelectedCity.Text += "</br>" + item.Text;
                    Distance.Text += "</br>" + item.Value;
                }
            }
        }
    }
}