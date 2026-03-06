<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Aud1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Internet Technology</h1>
           
        </section>

        <div class="row">
           <div class="col-md-12 text-center">
               Izberete grad:
               <br/>
               <asp:ListBox ID="ListaGradovi" runat="server" SelectionMode="Multiple">
                   <asp:ListItem Value="0">Skopje</asp:ListItem>
                   <asp:ListItem Value="120">Kichevo</asp:ListItem>
                   <asp:ListItem Value="180">Ohrid</asp:ListItem>
               </asp:ListBox>
                <div class="m-3">
                <asp:Button ID="PrikaziGrad" runat="server" Text="Прикажи град" OnClick="PrikaziGrad_Click" />
            </div>
            <div class="m-3">
                Selektiran grad: <asp:Label ID="SelectedCity" runat="server" Text="(NONE)"></asp:Label>
            </div>
               <div class="m-3">
                Oddalecenost od Skopje: <asp:Label ID="Distance" runat="server" Text="(NONE)"></asp:Label>
            </div>
           </div>
           
        </div>
    </main>

</asp:Content>
