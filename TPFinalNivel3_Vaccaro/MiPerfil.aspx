<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="TPFinalNivel3_Vaccaro.MiPerfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Informacion del Perfil</h3>
    <div class="row">
        <div class="col-3">
            <div class="mb-3">
                <asp:Label for="txtEmail" ID="lblEmail" runat="server" Text="Email" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label for="txtNombre" ID="lblNombre" runat="server" Text="Nombre" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label for="txtApellido" ID="lblApellido" runat="server" Text="Apellido" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtApellido" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label ID="lblImagenPerfil" runat="server" Text="Imagen de Perfil" CssClass="form-label"></asp:Label>
                <img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png" 
                    style="width:300px;" alt="imagen_perfil"/>          
            </div>
        </div>
        <div class="mb-3">
            <asp:Button runat="server" ID="btnModificar" Text="Modificar" CssClass="btn btn-outline-warning" OnClick="btnModificar_Click"  />
        </div>
    </div>
</asp:Content>
