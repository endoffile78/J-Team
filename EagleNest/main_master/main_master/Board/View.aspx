<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="main_master.Board.View" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <link rel="stylesheet" type="text/css" href="/css/select_josh_styles.css">
    


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="branding" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <form runat="server">

    <div class="container-fluid">
        <div class="row  justify-content-center">
            <div class="col text-center">
                <h5>Title</h5>
            </div>
        </div>
        <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:Label runat="server" ID="view_title"></asp:Label>
            </div>
            <br/>
            <br/>
        </div>
        <div class="row  justify-content-center">
            <div class="col text-center">
                <h5>Description</h5>
            </div>
            <br />


        </div>
        <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:Label runat="server" ID="view_description"></asp:Label>
                <br/>
            </div>


        </div>
        <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:Label runat="server" ID="view_image_label" Visible="False" ></asp:Label>
            </div>
        </div>
        <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:Image runat="server" ID="view_image" Visible="False" Style="width: 100%;"/>
                
            </div>
        </div>
        <br />
        <div class="row  justify-content-left">
            <div class="col-9 text-left">
                <asp:RadioButton runat="server" Visible="false" id ="option1" GroupName="options" Checked="true" Style="padding:4%;"/>
                </div></div>
                <div class="row  justify-content-left">
            <div class="col-9 text-left">
                <asp:RadioButton runat="server" Visible="false" id ="option2" GroupName="options" Style="padding:4%;"/>
                </div></div>
                <div class="row  justify-content-left">
            <div class="col-9 text-left">
                <asp:RadioButton runat="server" Visible="false" id ="option3" GroupName="options" Style="padding:4%;"/>
                </div></div>
                <div class="row  justify-content-left">
            <div class="col-9 text-left">
                <asp:RadioButton runat="server" Visible="false" id ="option4" GroupName="options" Style="padding:4%;"/>
                </div></div>
                <div class="row  justify-content-left">
            <div class="col-9 text-left">
                <asp:RadioButton runat="server" Visible="false" id ="option5" GroupName="options" Style="padding:4%;"/>
                </div></div>
                <div class="row  justify-content-left">
            <div class="col-9 text-left">
                <asp:RadioButton runat="server" Visible="false" id ="option6" GroupName="options" Style="padding:4%;"/>
                </div></div>
                <div class="row  justify-content-left">
            <div class="col-9 text-left">
                <asp:RadioButton runat="server" Visible="false" id ="option7" GroupName="options" Style="padding:4%;"/>
                </div></div>
                <div class="row  justify-content-left">
            <div class="col-9 text-left">
                <asp:RadioButton runat="server" Visible="false" id ="option8" GroupName="options" Style="padding:4%;"/>
                </div></div>
                <div class="row  justify-content-left">
            <div class="col-9 text-left">
                <asp:RadioButton runat="server" Visible="false" id ="option9" GroupName="options" Style="padding:4%;"/>
                </div></div>
                <div class="row  justify-content-left">
            <div class="col-9 text-left">
                <asp:RadioButton runat="server" Visible="false" id ="option10" GroupName="options" Style="padding:4%;"/>
                </div></div>
            <asp:Button ID="submit_vote"   class= "col" runat="server" OnClick="submit_vote_click" Text="Submit Vote" Visible="false" />

             
        

  

    </div>


    </form>





























</asp:Content>
