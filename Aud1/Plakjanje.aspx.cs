using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aud1
{
    public partial class Plakjanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //ArrayList lista;
                //if (Session["cart"] == null)
                //{
                //    lista = new ArrayList();
                //}
                //else
                //{
                //    lista = (ArrayList)Session["cart"];
                //}

                //lista.Add(new ListItem(naslovi.SelectedItem.Text, ceni.SelectedItem.Text));

                koshnichka.DataTextField = "Text";
                koshnichka.DataValueField = "Value";
                koshnichka.DataSource = (ArrayList)Session["cart"];
                koshnichka.DataBind();

                int totalValue = 0;
                foreach(ListItem li in koshnichka.Items)
                {
                    totalValue += Convert.ToInt32(li.Value);
                }
                kupi.Text = "Kupi" + totalValue.ToString() + "$";
            }
        }
    }
}