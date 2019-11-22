<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="main_master.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <title>Eagle Connect</title>

    <link href="../css/Gallery_Post_Form.css" rel="stylesheet" />
</asp:Content>

<asp:Content ContentPlaceHolderID="branding" runat="server">
    <h3>EagleConnect</h3>
    <strong>EC</strong>
</asp:Content>

<asp:Content ContentPlaceHolderID="navigation" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <!--PUT BODY HERE! -->
    <form runat="server" style="font-family: Georgia,serif">
        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#connecthome">Home</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#newtab">New Post</a></li>
        </ul>

        <div class="tab-content">
            <div id="connecthome" class="tab-pane fade show active">
                <!--PUT BODY HERE! -->
                <br />
                <div class="row">
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="countryCDrop" OnLoad="countryCDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="stateCDrop" OnLoad="stateCDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="cityCDrop" OnLoad="cityCDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="companyCDrop" OnLoad="companyCDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="majorCDrop" OnLoad="majorCDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="graduationCDrop" OnLoad="graduationCDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                               <div>
                                    <asp:DropDownList ID="collegeCDrop" onLoad="collegeCDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="positionCDrop" OnLoad="positionCDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-9">
                        <% foreach (var view in views)
                            { %>
                        <div class="shadow-sm p-3 mb-5 bg-white rounded">
                            <div class="row">
                                <div class="col-sm-2">
                                    <img class="img-fluid rounded-circle" style="max-height:80px" src="../images/archie.jpg" />
                                </div>
                                <div class="col-sm-10">
                                    <div class="row">
                                        <div class="col-9">
                                            <h5 class="card-title font-weight-bold"><%= view.name%></h5>
                                        </div>
                                        <div class="col-sm-3">
                                            <a href='<%=ResolveUrl("https://"+view.linkedIn) %>' class="socicon-linkedin" target="_blank"></a>
                                            <a href='<%=ResolveUrl("https://"+view.facebook) %>' class="socicon-facebook" target="_blank"></a>
                                            <a href='<%=ResolveUrl("https://"+view.twitter) %>' class="socicon-twitter" target="_blank"></a>
                                            <a href='<%=ResolveUrl("https://"+view.instagram) %>'class="socicon-instagram" target="_blank"></a>
                                            <a href='mailto:<%=ResolveUrl("https://"+view.email) %>' class="socicon-mail" target="_blank" ></a>
                                        </div>
                                    </div>
                                    <div >
                                        <h6 class="card-subtitle mb-2 text-muted"><% =view.college %> | <%= view.major%> | <%=view.graduation %> | <%= view.company%> |</h6>
                                        <h6 class="card-subtitle mb-2 text-muted"><%= view.position%> | <%= view.location%></h6>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div>
                                <div id="accordion">
                                    <div id="headingOne">
                                        <h5 class="mb-0">
                                            <button class="btn btn-outline-dark" data-toggle="collapse" data-target="#<%= view.id %>" aria-expanded="true" aria-controls="<%= view.id %>">
                                                Read More
                                            </button>
                                        </h5>
                                    </div>
                                </div>
                                <div id="<%= view.id %>" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="text-left">
                                        <br />
                                        <%=view.long_desc %>
                                        <br />
                                        <br />
                                        <%=view.resources %>
                                        <br />
                                        <br />
                                        <%=view.lessons %>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <% } %>
                    </div>

                    <div class="col-sm-3">
                        <div class="card">
                            <article class="card-group-item">
                                <header class="card-header">
                                    <h6 class="title">Trending</h6>
                                </header>
                                <div class="filter-content">
                                    <div class="card-body">

                                    </div>
                                    <!-- card-body.// -->
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </div>

            <div id="newtab" class="tab-pane fade">
                <br />
                <div class="container">
                        <div class="form-row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="major">Major(s)</label>
                                    <asp:TextBox class="form-control" ID="major" name="major" type="text" placeholder="Enter major" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="classification">College</label>
                                    <asp:TextBox class="form-control" ID="college" name="college" type="text" placeholder="Enter college" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="term">Graduation Year</label>
                                    <asp:TextBox class="form-control" ID="graduation" name="graduation" type="text" placeholder="Enter graduation year" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="company">Company</label>
                                    <asp:TextBox class="form-control" ID="company" name="company" type="text" placeholder="Enter company" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <asp:TextBox class="form-control" ID="email" name="email" type="email" placeholder="Enter email" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="linkedIn">LinkedIn</label>
                                    <asp:TextBox class="form-control" ID="linkedIn" name="linkedIn" type="text" placeholder="Enter linkedIn url" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone</label>
                                    <asp:TextBox class="form-control" ID="phone" name="phone" type="text" placeholder="Enter phone number" runat="server" />
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="position">Position</label>
                                    <asp:TextBox class="form-control" ID="position" name="position" type="text" placeholder="Enter position" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="country">Country</label>
                                    <asp:TextBox class="form-control" ID="country" name="country" type="text" placeholder="Enter country" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="state">State/Province</label>
                                    <asp:TextBox class="form-control" ID="state" name="state" type="text" placeholder="Enter state or province" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="city">City</label>
                                    <asp:TextBox class="form-control" ID="city" name="city" type="text" placeholder="Enter city" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="twitter">Twitter</label>
                                    <asp:TextBox class="form-control" ID="twitter" name="twitter" type="text" placeholder="Enter twitter url" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="Instagram">Instagram</label>
                                    <asp:TextBox class="form-control" ID="instagram" name="instagram" type="text" placeholder="Enter Instagram url" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="facebook">Facebook</label>
                                    <asp:TextBox class="form-control" ID="facebook" name="linkedIn" type="text" placeholder="Enter facebook url" runat="server" />
                                </div>
                            </div>
                        </div>
                    <div class="form-group">
                        <label for="description">Company Industry</label>
                        <asp:TextBox class="form-control" ID="industry" name="industry" type="text" placeholder="enter company industry" runat="server" />
                    </div>
                        <div class="form-group">
                            <label for="description">Job Description</label>
                            <asp:TextBox class="form-control" ID="description" name="description" type="text" placeholder="max 100 words" runat="server" />
                        </div>
                    <div class="form-group">
                            <label for="lessons">What resources have been helpful in your career?</label>
                            <asp:TextBox class="form-control" ID="resources" name="resources" type="text" placeholder="max 100 words" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="lessons">What was your biggest takeaways from your career?</label>
                            <asp:TextBox class="form-control" ID="lessons" name="lessons" type="text" placeholder="max 50 words" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Image <span class="required">*</span></label>
                            <input type="file" id="picture" name="picture" class="field-long" accept="image/*" />
                        </div>
                        <asp:Button ID="CPost" Text="Post" class="btn btn-outline-dark" runat="server" OnClick="Cpost_Click" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>
