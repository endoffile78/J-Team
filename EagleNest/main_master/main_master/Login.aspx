<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="main_master.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="branding" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <h1 class="text-center">Login</h1>
    <form runat="server">
        <div class="form-group">
            <label for="email">Email:</label>
            <asp:Textbox class="form-control" id="email" name="email" type="text" runat="server" />
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <asp:Textbox class="form-control" id="password" name="email" type="password" runat="server" />
        </div>
        <asp:Button class="btn btn-primary" id="submit" Tsext="Submit" runat="server" />
    </form>
</asp:Content>
