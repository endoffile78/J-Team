<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="new_post.aspx.cs" Inherits="main_master.Board.new_post" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="branding" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">


    <div class="container-fluid">
        <div class="row  justify-content-center">
            <div class="col text-center">
                Title
            </div>
            <div class="col-10 text-center">
                <asp:Label runat="server" ID="new_post_title"></asp:Label>
            </div>
            </div>

            <div class="row justify-content-center">
                <div class="col text-center">
                    Description
                </div>
                <div class="col-9 text-center">
                    <small runat="server" id="test3"></small>
                    <asp:Label runat="server" ID="new_post_description" ></asp:Label>
                </div>
                





        </div>
            
    </div>



    
    



</asp:Content>