<%@ Page Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Post_Form.aspx.cs" Inherits="main_master.Board.Post_Form" %>

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
    <li>
        <a href="Post_Form.aspx">
            <i class="fas fa-edit"></i>
            Post
        </a>
    </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    
</asp:Content>
