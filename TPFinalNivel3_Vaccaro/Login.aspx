<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPFinalNivel3_Vaccaro.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Login</h2>
    <div class="row">
        <div class="col-3">
            <div class="mb-3">
                <asp:Label for="txtUsuario" ID="lblUsuario" runat="server" Text="Usuario" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtUsuario" CssClass="form-control" placeholder="nombre de usuario"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label for="txtPassWord" ID="lblPassWord" runat="server" Text="PassWord" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtPassWord" CssClass="form-control" type="password" placeholder="PassWord"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Button runat="server" ID="btnLogin" CssClass="btn btn-success" Text="Loguearse"/>
            </div>
        </div>
    </div>
</asp:Content>
