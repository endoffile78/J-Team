<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="main_master.Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <title>Eagle Nest</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="branding" runat="server">
    <h3>EagleNest</h3>
    <strong>EN</strong>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
    <% if (Session["loggedIn"] == null) { %>
    <li>
        <a href="Login.aspx">Login</a>
    </li>
    <li>
        <a href="Register.aspx">
            <i class="fas fa-user-plus"></i>
            Register
        </a>
    </li>
    <% } else { %>
    <li>
        <a href="Logout.aspx">Logout</a>
    </li>
    <% } %>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <h1 class="text-center">EagleNest</h1>
</asp:Content>
