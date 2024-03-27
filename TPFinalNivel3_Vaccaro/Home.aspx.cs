using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NegocioBDD;
using Objetos;

namespace TPFinalNivel3_Vaccaro
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                NegocioArticulo negocio = new NegocioArticulo();
                dvgProductos.DataSource = negocio.ListarArticulos();
                dvgProductos.DataBind();
            }
            catch (Exception ex)
            {

                Session.Add("error",ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}