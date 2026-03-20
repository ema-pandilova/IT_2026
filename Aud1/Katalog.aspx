<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Katalog.aspx.cs" Inherits="Aud1.Katalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="row">
    <div class="col-md-12 text-center">
        <b>
            Категории
        </b>
    </div>
</div>
<div class="row">
    <div class="col-md-offset-4 col-md-8">
        <asp:LinkButton ID="sl" runat="server" OnClick="sl_Click">Стручна литература</asp:LinkButton>
        <br />
        <asp:LinkButton ID="be" runat="server" OnClick="be_Click">Белетристика</asp:LinkButton>
        <br />
        <asp:LinkButton ID="mg" runat="server" OnClick="mg_Click">Магазини</asp:LinkButton>
    </div> 
</div>
</asp:Content>
