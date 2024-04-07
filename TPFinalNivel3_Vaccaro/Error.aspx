<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="TPFinalNivel3_Vaccaro.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Ups! Ocurrio un error</h2>
    <asp:label runat="server" ID="lblMensajeError"></asp:label>
    <a href="Login.aspx">Regresar</a>
</asp:Content>
