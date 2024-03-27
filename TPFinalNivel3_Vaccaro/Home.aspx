<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TPFinalNivel3_Vaccaro.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Por el momento es la muestra de la base de datos</h2>
    <div class="row">
        <asp:GridView ID="dvgProductos" runat="server" CssClass="table" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                <asp:BoundField HeaderText="Marca" DataField="Marca.Descripcion" />
                <asp:BoundField HeaderText="Categoria" DataField="Categoria.Descripcion" />
                <asp:BoundField HeaderText="Precio" DataField="Precio" />
            </Columns>

        </asp:GridView>
    </div>
    
</asp:Content>
