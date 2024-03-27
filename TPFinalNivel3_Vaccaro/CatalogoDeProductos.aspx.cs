using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Objetos;
using NegocioBDD;

namespace TPFinalNivel3_Vaccaro
{
    public partial class Catalogo_de_Productos : System.Web.UI.Page
    {
        public List<Articulo> lista;

        protected void Page_Load(object sender, EventArgs e)
        {
            NegocioArticulo negocio = new NegocioArticulo();
            lista = negocio.ListarArticulos();

        }
    }
}