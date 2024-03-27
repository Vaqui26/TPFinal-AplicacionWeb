<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CatalogoDeProductos.aspx.cs" Inherits="TPFinalNivel3_Vaccaro.Catalogo_de_Productos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Catalogo de Productos</h2>
    <div class="row">
        <% foreach (Objetos.Articulo articulo in lista)
            { %>
        <div class="col-2">
            <div class="card" style="width: 18rem;">
                <img src="<%:articulo.UrlImagen %>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><%:articulo.Nombre %></h5>
                    <p class="card-text"><%:articulo.Descripcion %></p>
                    <a href="#" class="btn btn-primary">Modificar</a>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</asp:Content>
