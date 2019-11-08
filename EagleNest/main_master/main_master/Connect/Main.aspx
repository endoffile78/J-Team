﻿<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="main_master.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <title>Eagle Connect</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="branding" runat="server">
    <h3>EagleConnect</h3>
    <strong>EC</strong>
</asp:Content>

<asp:Content ContentPlaceHolderID="navigation" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <!--PUT BODY HERE! -->
     <ul class="nav nav-tabs">
        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home">Home</a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#newtab">New Post</a></li>
    </ul>

    <div class="tab-content">
        <div id="home" class="tab-pane fade in active">
            <!--PUT BODY HERE! -->
            <br />
            <div class="row">
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="country" name="country">
                                        <option value="">Pick a country</option>
                                        <option value="US">USA</option>
                                        <option value="CA">Canada</option>
                                        <option value="MX">Mexico</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="state" name="state">
                                        <option value="">Pick a state</option>
                                        <option value="AK">Alaska</option>
                                        <option value="AL">Alabama</option>
                                        <option value="AR">Arkansas</option>
                                        <option value="AZ">Arizona</option>
                                        <option value="CA">California</option>
                                        <option value="CO">Colorado</option>
                                        <option value="CT">Connecticut</option>
                                        <option value="DC">District of Columbia</option>
                                        <option value="DE">Delaware</option>
                                        <option value="FL">Florida</option>
                                        <option value="GA">Georgia</option>
                                        <option value="HI">Hawaii</option>
                                        <option value="IA">Iowa</option>
                                        <option value="ID">Idaho</option>
                                        <option value="IL">Illinois</option>
                                        <option value="IN">Indiana</option>
                                        <option value="KS">Kansas</option>
                                        <option value="KY">Kentucky</option>
                                        <option value="LA">Louisiana</option>
                                        <option value="MA">Massachusetts</option>
                                        <option value="MD">Maryland</option>
                                        <option value="ME">Maine</option>
                                        <option value="MI">Michigan</option>
                                        <option value="MN">Minnesota</option>
                                        <option value="MO">Missouri</option>
                                        <option value="MS">Mississippi</option>
                                        <option value="MT">Montana</option>
                                        <option value="NC">North Carolina</option>
                                        <option value="ND">North Dakota</option>
                                        <option value="NE">Nebraska</option>
                                        <option value="NH">New Hampshire</option>
                                        <option value="NJ">New Jersey</option>
                                        <option value="NM">New Mexico</option>
                                        <option value="NV">Nevada</option>
                                        <option value="NY">New York</option>
                                        <option value="OH">Ohio</option>
                                        <option value="OK">Oklahoma</option>
                                        <option value="OR">Oregon</option>
                                        <option value="PA">Pennsylvania</option>
                                        <option value="PR">Puerto Rico</option>
                                        <option value="RI">Rhode Island</option>
                                        <option value="SC">South Carolina</option>
                                        <option value="SD">South Dakota</option>
                                        <option value="TN">Tennessee</option>
                                        <option value="TX">Texas</option>
                                        <option value="UT">Utah</option>
                                        <option value="VA">Virginia</option>
                                        <option value="VT">Vermont</option>
                                        <option value="WA">Washington</option>
                                        <option value="WI">Wisconsin</option>
                                        <option value="WV">West Virginia</option>
                                        <option value="WY">Wyoming</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="city" name="city">
                                        <option value="">Pick a city</option>
                                        <option value="AK">Evansvile</option>
                                        <option value="AL">Chicago</option>
                                        <option value="AR">Seattle</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="company" name="company">
                                        <option value="">Pick a company</option>
                                        <option value="AK">OneMain</option>
                                        <option value="AL">Google</option>
                                        <option value="AR">Microsoft</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="major" name="major">
                                        <option value="">Pick a major</option>
                                        <option value="RB">Computer Science</option>
                                        <option value="PT">Economics</option>
                                        <option value="NHP">History</option>
                                        <option value="UD">Spanish</option>
                                        <option value="UD">Mechanical Engineering</option>
                                    </select>
                                </div>
                            </form>
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="job" name="job">
                                        <option value="">Pick a job</option>
                                        <option value="RB">Musician</option>
                                        <option value="PT">Software Developer</option>
                                        <option value="NHP">Teacher</option>
                                        <option value="UD">Financial Advisor</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                        <div class="filter-content">
                            <form>
                                <div>
                                    <select class="form-control" id="college" name="college">
                                        <option value="">Pick a college</option>
                                        <option value="RB">Romain College Of Business</option>
                                        <option value="PT">Pott College of Science, Engineering and Education</option>
                                        <option value="NHP">Collge of Nursing and Health Professions</option>
                                        <option value="UD">University Division</option>
                                    </select>
                                </div>
                            </form>
                            <!-- card-body.// -->
                        </div>
                    </article>
                </div>
                <div class="col-sm-3">
                    <article class="card-group-item">
                <div class="filter-content">
                    <form>
                        <div>
                            <select class="form-control" id="position" name="position">
                                <option value="">Pick level of position</option>
                                <option value="RB">Entry Level</option>
                                <option value="PT">Associate</option>
                                <option value="NHP">Junior Associate</option>
                                <option value="UD">Senior Associate</option>
                                <option value="UD">Manager</option>
                                <option value="UD">Director</option>
                                <option value="UD">Vice President</option>
                                <option value="UD">Senior Vice President</option>
                            </select>
                        </div>
                    </form>
                </div>
            </article>
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-sm-9">
                    <div class="shadow-sm p-3 mb-5 bg-white rounded">
                        <div class="row">
                            <div class="col-sm-3">
                                <img class="img-fluid rounded-circle" src="../images/archie.jpg" />
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
                    <div class="shadow-sm p-3 mb-5 bg-white rounded">
                        <div class="row">
                            <div class="col-sm-3">
                                <img class="img-fluid rounded-circle" src="../images/archie.jpg" />
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
                    <div class="shadow-sm p-3 mb-5 bg-white rounded">
                        <div class="row">
                            <div class="col-sm-3">
                                <img class="img-fluid rounded-circle" src="../images/archie.jpg" />
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
                    <div class="shadow-sm p-3 mb-5 bg-white rounded">
                        <div class="row">
                            <div class="col-sm-3">
                                <img class="img-fluid rounded-circle" src="../images/archie.jpg" />
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
        </div>
        <div id="newtab" class="tab-pane fade">
            <div class="container">
                <form>
                    <div class="form-group">
                        <label for="InputFirstName">First Name</label>
                        <input type="firstname" class="form-control" id="InputFirstName" aria-describedby="firstname" placeholder="Enter first name">
                    </div>
                    <div class="form-group">
                        <label for="InputLastName">Last Name</label>
                        <input type="lastname" class="form-control" id="InputLastName" aria-describedby="lastname" placeholder="Enter last name">
                    </div>
                    <div class="form-group">
                        <label for="InputMajor">Major(s)</label>
                        <input type="major" class="form-control" id="InputMajor" aria-describedby="major" placeholder="Enter your major">
                    </div>
                    <div class="form-group">
                        <label for="InputCompany">Company</label>
                        <input type="company" class="form-control" id="InputCompany" aria-describedby="company" placeholder="Enter company">
                    </div>
                    <div class="form-group">
                        <label for="InputPosition">Position</label>
                        <input type="position" class="form-control" id="InputPosition" aria-describedby="position" placeholder="Enter position">
                    </div>
                    <div class="form-group">
                        <label for="InputLevel">Level of Position</label>
                        <input type="level" class="form-control" id="InputLevel" aria-describedby="level" placeholder="Enter position e.g Senior VP">
                    </div>
                    <div class="form-group">
                        <label for="InputCountry">Country</label>
                        <input type="country" class="form-control" id="InputCountry" aria-describedby="country" placeholder="Enter country">
                    </div>
                    <div class="form-group">
                        <label for="InputState">State/Province</label>
                        <input type="Firstname" class="form-control" id="InputState" aria-describedby="state" placeholder="Enter state or province">
                    </div>
                    <div class="form-group">
                        <label for="InputCity">City</label>
                        <input type="city" class="form-control" id="InputCity" aria-describedby="city" placeholder="Enter city">
                    </div>
                    <div class="form-group">
                        <label for="InputDescription">Job Description</label>
                        <textarea type="description" class="form-control" id="InputDescription" aria-describedby="description" placeholder="max 100 words "></textarea>
                    </div>
                    <div class="form-group">
                        <label for="InputLessons">What was your biggest takeaways from your career?</label>
                        <textarea type="lessons" class="form-control" id="InputLessons" aria-describedby="lessons" placeholder="max 50 words "></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            
        </div>
    </div>
        
</asp:Content>
