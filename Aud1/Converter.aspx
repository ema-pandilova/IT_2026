<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Converter.aspx.cs" Inherits="Aud1.Converter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container-fluid">
    <div class="row text-center">
        <div class="m-4">
            Vnesete ime na valuta:
            <br />
            <asp:TextBox ID="ImeValuta" runat="server"></asp:TextBox>
        </div>
        <div class="m-4">
            Vnesete vrednost na valuta:
            <br />
            <asp:TextBox ID="VrednostValuta" runat="server"></asp:TextBox>
        </div>
        <div class="m-4">
            Vrednost:
            <br />
            <asp:TextBox ID="Vrednost" runat="server"></asp:TextBox>
        </div>
       
        <div class="m-4">
            <asp:Button ID="DodadiValuta" runat="server" Text="DodadiValuta" OnClick="DodadiValuta_Click" />
            <asp:Button ID="BrisiValuta" runat="server" Text="Brishi Valuta" OnClick="BrisiValuta_Click" />
        </div>
        <hr />
        <div class="m-4">
            <asp:RadioButtonList ID="ListaValuti" runat="server" EnableViewState="True" AutoPostBack="True" OnSelectedIndexChanged="ListaValuti_SelectedIndexChanged"></asp:RadioButtonList>
        </div>
        <hr />
        <div class="m-4">
            Vkupno stavki: <asp:Label ID="total" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="m-4">
            Status: <asp:Label ID="status" runat="server" Text="0"></asp:Label>
        </div>
    </div>
</div>
</asp:Content>
