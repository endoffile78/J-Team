<%@ Page Title="" Language="C#" MasterPageFile="BlogMaster.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="main_master.Blog.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <form id="form1" runat="server">
        <div class="text-center">
            <h1><%= name %></h1>
        </div>
        <nav class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#posts">Posts</a></li>
            <li><a data-toggle="tab" href="#following">Following</a></li>
            <li><a data-toggle="tab" href="#following">Followers</a></li>
        </nav>
        <div class="tab-content">
            <div id="posts" class="tab-pane fade in active">

            </div>
            <div id="following" class="tab-pane fade">

            </div>
            <div id="followers" class="tab-pane fade">

            </div>
        </div>
    </form>
</asp:Content>
