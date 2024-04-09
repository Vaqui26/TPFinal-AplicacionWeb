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
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!(Session["user"] is null) && !(IsPostBack))
                {
                    Usuario user = (Usuario)Session["user"];
                    txtEmail.Text = user.Email;
                    txtNombre.Text = user.Nombre;
                    txtApellido.Text = user.Apellido;
                }


            }
            catch (Exception ex)
            {

                Session.Add("error",ex.ToString());
                Response.Redirect("Error.aspx",false);
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                NegocioUsuario negocio = new NegocioUsuario();
                Usuario user = (Usuario)Session["user"];
                user.Nombre = txtNombre.Text;
                user.Apellido = txtApellido.Text;
                // Mas adelante se agregara para poder subir la imagen.
                negocio.modificar(user);
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}