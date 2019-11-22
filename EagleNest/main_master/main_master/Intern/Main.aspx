<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="main_master.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <title>Eagle Intern</title>

</asp:Content>

<asp:Content ContentPlaceHolderID="branding" runat="server">
    <h3>EagleIntern</h3>
    <strong>EI</strong>
</asp:Content>

<asp:Content ContentPlaceHolderID="navigation" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="content_place_holder_body" runat="server">

    <ul class="nav nav-tabs">
        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#internhome">Home</a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#newtab">New Post</a></li>
    </ul>
    <form runat="server">
        <div class="tab-content">
            <div id="internhome" class="tab-pane fade show active">
                <!--PUT BODY HERE! -->
                <br />

                <div class="row">
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="countryDrop" OnLoad="countryDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="stateDrop" OnLoad="stateDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="cityDrop" OnLoad="cityDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="companyDrop" OnLoad="companyDrop_Load" CssClass="form-control" runat="server">
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
                                    <asp:DropDownList ID="majorDrop" OnLoad="majorDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="termDrop" OnLoad="termDrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="collegedrop" OnLoad="collegedrop_Load" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-3">
                        <article class="card-group-item">
                            <div class="filter-content">
                                <div>
                                    <asp:DropDownList ID="classificationDrop" OnLoad="classificationDrop_Load" CssClass="form-control" runat="server">
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
                                <div class="col-sm-3">
                                    <img class="img-fluid rounded-circle" src="../images/archie.jpg" />
                                </div>
                                <div class="col-sm-9">
                                    <div>
                                        <h5 class="card-title font-weight-bold" style="font-family: Georgia,serif"><%= view.name%></h5>
                                        <h6 class="card-subtitle mb-2 text-muted" style="font-family: Georgia,serif"><% =view.classification %> | <%= view.major%> | <%= view.company%> |</h6>
                                        <h6 class="card-subtitle mb-2 text-muted" style="font-family: Georgia,serif"><%= view.position%> | <%= view.location%></h6>
                                    </div>
                                    <div id="accordion">
                                        <div id="headingOne">
                                            <h5 class="mb-0">
                                                <button class="toggle-text-button btn btn-outline-dark" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                   Read More
                                                </button>
                                            </h5>
                                        </div>
                                    </div>
                                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                        <div class="text-left" style="font-family: Georgia,serif">
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
                                        <form>
                                        </form>

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
                                <label for="classification">Classification</label>
                                <asp:TextBox class="form-control" ID="classification" name="classification" type="text" placeholder="Enter classification" runat="server" />
                            </div>
                            <div class="form-group">
                                <label for="College">College</label>
                                <asp:TextBox class="form-control" ID="college" name="college" type="text" placeholder="Enter College" runat="server" />
                            </div>
                            <div class="form-group">
                                <label for="term">Term</label>
                                <asp:TextBox class="form-control" ID="term" name="lastname" type="text" placeholder="Enter term e.g. Summer 2019" runat="server" />
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
                                <label for="phone">Phone</label>
                                <asp:TextBox class="form-control" ID="phone" name="phone" type="text" placeholder="Enter phone number" runat="server" />
                            </div>
                            <div class="form-group">
                                <label for="twitter">Twitter</label>
                                <asp:TextBox class="form-control" ID="twitter" name="twitter" type="text" placeholder="Enter twitter url" runat="server" />
                            </div>
                            <div class="form-group">
                                <label for="facebook">Facebook</label>
                                <asp:TextBox class="form-control" ID="facebook" name="linkedIn" type="text" placeholder="Enter facebook url" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="resources">What resources did you use to attain internship?</label>
                        <asp:TextBox class="form-control" ID="resources" name="resources" type="text" placeholder="max 50 words" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="description">Job Description</label>
                        <asp:TextBox class="form-control is-invalid" ID="description" name="description" type="text" placeholder="max 100 words" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="lessons">What was your biggest takeaways from your internship?</label>
                        <asp:TextBox class="form-control" ID="lessons" name="lessons" type="text" placeholder="max 50 words" runat="server" />
                    </div>
                    <div class="form-group">
                        <label>Image</label>
                        <input type="file" id="picture" name="picture" class="field-long" required="required" accept="image/*" />
                    </div>
                    <asp:Button ID="Post" Text="Post" class="btn btn-outline-dark" runat="server" OnClick="post_Click" />
                </div>
            </div>
        </div>
    </form>

</asp:Content>
