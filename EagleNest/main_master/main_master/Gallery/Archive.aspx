<%@ Page Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Archive.aspx.cs" Inherits="main_master.Board.Archive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">'
    <title>Eagle Gallery</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="branding" runat="server">
    <h3>EagleGallery</h3>
    <strong>EG</strong>
</asp:Content>

<asp:Content ContentPlaceHolderID="navigation" runat="server">
    <li>
        <a href="Main.aspx">
            <i class="fas fa-edit"></i>
            Home
        </a>
    </li>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">

    <asp:ListView ID="ListView1" runat="server"></asp:ListView>

</asp:Content>
