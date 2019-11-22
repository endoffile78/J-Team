<%@ Page Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Post_Form.aspx.cs" Inherits="main_master.Board.Post_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">'
    <title>Eagle Gallery</title>
    
     <link href="../css/Gallery_Post_Form.css" type="text/css" rel="stylesheet" />
    
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

    <form>
<ul class="form-style-1">
    <li><label>Title <span class="required">*</span>

        </label><asp:Textbox type="text" name="field1" class="field-long" placeholder="Title" id="title" runat="server"/></li>
    <li>
        <label>Image <span class="required">*</span></label>
        <asp:Textbox type="file" id="Picture" name="picture" class="form-check-label" accept="image/*" runat="server" OnTextChanged="Picture_TextChanged"/>
    </li>
    <li>
        <label>Tag</label>
        <asp:DropDownList name="field4" class="field-select" runat="server" ID="Tags">
        <asp:ListItem value="Advertise">Advertise</asp:ListItem>
        <asp:ListItem value="Partnership">Partnership</asp:ListItem>
        <asp:ListItem value="General">General</asp:ListItem>
        </asp:DropDownList>
    </li>
    <li>
        <label>Discription <span class="required">*</span></label>
        <asp:Textbox name="field5" id="Description" class="field-long field-textarea" runat="server"></asp:Textbox>
    </li>
    <li>
        <asp:Button type="submit" value="Submit" id="Submit" class="btn btn-primary" OnClick="Submit_Click" runat="server"/>
    </li>
</ul>
</form>

    </asp:Content>
