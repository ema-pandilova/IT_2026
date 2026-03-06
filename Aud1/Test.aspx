<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Aud1.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
    <div class="m-4">
        <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/example.jpg" OnClick="ImageButton1_Click" />
    </div>
    <div class="m-4">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
</div>
</asp:Content>
