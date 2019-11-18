<%@ Page Title="" Language="C#" MasterPageFile="BlogMaster.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="main_master.Blog.View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="text-center">
        <h1><%= title %></h1>
        <h4><a class="text-muted" href="User/<%= author_uid.ToString() %>"><%= author %></a></h4>
        <h5>Tags: <a href="#">tag1</a> <a href="#">tag2</a></h5>
    </div>
    <p>
        <%= body %>
    </p>
    <hr />
    <% if (Session["loggedIn"] != null) { %>
    <h2>Comment</h2>
    <form runat="server">
        <div class="form-group">
            <label for="name">Name</label>
            <asp:TextBox class="form-control" ID="Name" type="text" runat="server" />
        </div>
        <div class="form-group">
            <label for="comment">Comment</label>
            <asp:TextBox class="form-control" Rows="10" ID="Comment" type="text" runat="server" />
        </div>
        <asp:Button Id="Submit" class="btn btn-primary" Text="Submit" OnClick="Submit_Click" runat="server" />
    </form>
    <% } %>
    <h2>Comments</h2>
</asp:Content>
