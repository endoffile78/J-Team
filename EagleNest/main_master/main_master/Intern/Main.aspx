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

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <!--PUT BODY HERE! -->
        <div class="row">
        <div class="col-sm-3">
                <div class="card">
                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title">Classification</h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <form>
                                    <label class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <span class="form-check-label">Freshman</span>
                                    </label>
                                    <!-- form-check.// -->
                                    <label class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <span class="form-check-label">Sophomore  </span>
                                    </label>
                                    <!-- form-check.// -->
                                    <label class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <span class="form-check-label">Junior</span>
                                    </label>
                                    <!-- form-check.// -->
                                    <label class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <span class="form-check-label">Senior</span>
                                    </label>
                                    <!-- form-check.// -->
                                    <label class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <span class="form-check-label">Graduate</span>
                                    </label>
                                    <!-- form-check.// -->
                                </form>

                            </div>
                            <!-- card-body.// -->
                        </div>
                    </article>
                    <!-- card-group-item.// -->

                    <article class="card-group-item">
                        <header class="card-header">
                            <h6 class="title">College</h6>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <form>
                                    <label class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <span class="form-check-label">Romain College Of Business</span>
                                    </label>
                                    <!-- form-check.// -->
                                    <label class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <span class="form-check-label">Liberal Arts </span>
                                    </label>
                                    <!-- form-check.// -->
                                    <label class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <span class="form-check-label">Pott College of Science, Engineering and Education</span>
                                    </label>
                                    <!-- form-check.// -->
                                    <label class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <span class="form-check-label">Collge of Nursing and Health Professions</span>
                                    </label>
                                    <!-- form-check.// -->
                                    <label class="form-check">
                                        <input class="form-check-input" type="checkbox" value="">
                                        <span class="form-check-label">University Division</span>
                                    </label>
                                    <!-- form-check.// -->
                                </form>
                            </div>
                            <!-- card-body.// -->
                        </div>
                    </article>
                    <!-- card-group-item.// -->
                </div>
                <!-- card.// -->
            <!-- col.// -->
        </div>
        <div class="col-sm-6">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <div class="row">
                    <div class="col-sm-3">
                        <img class="img-fluid rounded-circle" alt="100x100"src="Images/2.jpg">
                    </div>
                    <div class="col-sm-9">
                        <div>
                            <h5 class="font-weight-bold">ARCHIBALD T. EAGLE</h5>
                            <h6>Senior | Computer Science | Ralph Lauren | Brand Planning Intern | Manhattan, New York</h6>
                        </div>
                    </div>
                    <div>
                        <div id="accordion">
                            <div id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-light" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Read More/ Less
                                    </button>
                                </h5>
                            </div>
                        </div>
                        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="text-center">
                                <p>
                                    I found out about the Brand Planning Intern through a job search platform called WayUp.com. 
                After thoroughly reading through every requirement for the internship position, knew that the internship 
                position was a perfect fit and phenomenal opportunity to gain hard skills in data analytics, BI tools, and 
                learning soft skills in the corporate world.
                <br />
                                    <br />
                                    During my time at Ralph Lauren, I had the opportunity to learn and use cutting edge technology in data analytics such as 
                MicroStrategy and Edited. I also worked on big data projects that significantly improved my Excel, VBA, critical-thinking, 
                analytical, and detail-orientated skills. I also had an opportunity to work on my confidence and presentation skills by presenting
                my insightful findings to the merchandising and brand teams. 
                <br />
                                    <br />
                                    In addition, I had the amazing opportunity to network, and foster new relationships that I will have for life. At Ralph Lauren, I
                was valued, my work my impactful, I discovered a part of myself I never knew existed.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
            <div class="shadow p-3 mb-5 bg-white rounded">
                <div class="row">
                    <div class="col-sm-3">
                        <img class="img-fluid rounded-circle" alt="100x100"src="Images/1.jpg">
                    </div>
                    <div class="col-sm-9">
                        <div>
                            <h5 class="font-weight-bold">ARCHIBALD T. EAGLE</h5>
                            <h6>Senior | Computer Science | Ralph Lauren | Brand Planning Intern | Manhattan, New York</h6>
                        </div>
                    </div>
                    <div>
                        <div id="accordion">
                            <div id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-light" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Read More/ Less
                                    </button>
                                </h5>
                            </div>
                        </div>
                        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="text-center">
                                <p>
                                    I found out about the Brand Planning Intern through a job search platform called WayUp.com. 
                After thoroughly reading through every requirement for the internship position, knew that the internship 
                position was a perfect fit and phenomenal opportunity to gain hard skills in data analytics, BI tools, and 
                learning soft skills in the corporate world.
                <br />
                                    <br />
                                    During my time at Ralph Lauren, I had the opportunity to learn and use cutting edge technology in data analytics such as 
                MicroStrategy and Edited. I also worked on big data projects that significantly improved my Excel, VBA, critical-thinking, 
                analytical, and detail-orientated skills. I also had an opportunity to work on my confidence and presentation skills by presenting
                my insightful findings to the merchandising and brand teams. 
                <br />
                                    <br />
                                    In addition, I had the amazing opportunity to network, and foster new relationships that I will have for life. At Ralph Lauren, I
                was valued, my work my impactful, I discovered a part of myself I never knew existed.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
            <div class="shadow p-3 mb-5 bg-white rounded">
                <div class="row">
                    <div class="col-sm-3">
                        <img class="img-fluid rounded-circle" alt="100x100"src="Images/2.jpg">
                    </div>
                    <div class="col-sm-9">
                        <div>
                            <h5 class="font-weight-bold">ARCHIBALD T. EAGLE</h5>
                            <h6>Senior | Computer Science | Ralph Lauren | Brand Planning Intern | Manhattan, New York</h6>
                        </div>
                    </div>
                    <div>
                        <div id="accordion">
                            <div id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-light" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Read More/ Less
                                    </button>
                                </h5>
                            </div>
                        </div>
                        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="text-center">
                                <p>
                                    I found out about the Brand Planning Intern through a job search platform called WayUp.com. 
                After thoroughly reading through every requirement for the internship position, knew that the internship 
                position was a perfect fit and phenomenal opportunity to gain hard skills in data analytics, BI tools, and 
                learning soft skills in the corporate world.
                <br />
                                    <br />
                                    During my time at Ralph Lauren, I had the opportunity to learn and use cutting edge technology in data analytics such as 
                MicroStrategy and Edited. I also worked on big data projects that significantly improved my Excel, VBA, critical-thinking, 
                analytical, and detail-orientated skills. I also had an opportunity to work on my confidence and presentation skills by presenting
                my insightful findings to the merchandising and brand teams. 
                <br />
                                    <br />
                                    In addition, I had the amazing opportunity to network, and foster new relationships that I will have for life. At Ralph Lauren, I
                was valued, my work my impactful, I discovered a part of myself I never knew existed.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
            <div class="shadow p-3 mb-5 bg-white rounded">
                <div class="row">
                    <div class="col-sm-3">
                        <img class="img-fluid rounded-circle" alt="100x100"src="Images/3.jpg">
                    </div>
                    <div class="col-sm-9">
                        <div>
                            <h5 class="font-weight-bold">ARCHIBALD T. EAGLE</h5>
                            <h6>Senior | Computer Science | Ralph Lauren | Brand Planning Intern | Manhattan, New York</h6>
                        </div>
                    </div>
                    <div>
                        <div id="accordion">
                            <div id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-light" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Read More/ Less
                                    </button>
                                </h5>
                            </div>
                        </div>
                        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="text-center">
                                <p>
                                    I found out about the Brand Planning Intern through a job search platform called WayUp.com. 
                After thoroughly reading through every requirement for the internship position, knew that the internship 
                position was a perfect fit and phenomenal opportunity to gain hard skills in data analytics, BI tools, and 
                learning soft skills in the corporate world.
                <br />
                                    <br />
                                    During my time at Ralph Lauren, I had the opportunity to learn and use cutting edge technology in data analytics such as 
                MicroStrategy and Edited. I also worked on big data projects that significantly improved my Excel, VBA, critical-thinking, 
                analytical, and detail-orientated skills. I also had an opportunity to work on my confidence and presentation skills by presenting
                my insightful findings to the merchandising and brand teams. 
                <br />
                                    <br />
                                    In addition, I had the amazing opportunity to network, and foster new relationships that I will have for life. At Ralph Lauren, I
                was valued, my work my impactful, I discovered a part of myself I never knew existed.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
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

</asp:Content>
