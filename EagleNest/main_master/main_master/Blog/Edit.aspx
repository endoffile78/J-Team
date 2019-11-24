﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Blog/BlogMaster.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="main_master.Blog.Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <title>Edit</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="container">
        <h1 class="text-center">Edit</h1>
        <form runat="server">
            <label for="Title">Title:</label>
            <asp:TextBox class="form-control" ID="title" type="text" placeholder="Title" runat="server" />
            <label for="Body">Body</label>
            <asp:TextBox class="form-control" ID="Body" TextMode="MultiLine" Rows="8" type="text" placeholder="Body" runat="server" />
            <asp:Button class="btn btn-primary" ID="Submit" Text="Submit" OnClick="Submit_Click" runat="server" />
        </form>
    </div>
</asp:Content>
