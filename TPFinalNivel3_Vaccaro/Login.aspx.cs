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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario user = new Usuario();
                NegocioUsuario negocio = new NegocioUsuario();
                user.Email = txtEmail.Text;
                user.Pass = txtPassWord.Text;
                if (negocio.loguearse(user))
                {
                    Session.Add("user", user);
                    Response.Redirect("Home.aspx", false);
                }
                else
                {
                    Session.Add("error", "El mail o usuario son incorrectos, intentar nuevamente");
                    Response.Redirect("Error.aspx", false);
                }

            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}