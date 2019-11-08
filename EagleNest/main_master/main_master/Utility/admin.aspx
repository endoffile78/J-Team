<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="main_master.Utility.admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <title>Eagle Admin</title>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">

    <form id="form1" runat="server">




        <div class="accordion" id="acc_pop_board">
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h2 class="mb-0">
                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                            Populate Board Database
                        </button>
                    </h2>
                </div>
                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#acc_pop_board">
                    <div class="card-body">
                        <div class="row">
                        <div class="col btn-group-vertical">Boards to Populate</div>
                        <div class="col">
                            <div class="form-check">
                                <input class="form-check-input" runat="server" type="checkbox" value="" id="checkbox_gives_pop" checked>
                                <label class="form-check-label" for="checkbox_gives_pop">
                                    Gives
                                </label>
                                <br />
                                <input class="form-check-input" runat="server" type="checkbox" value="" id="checkbox_project_pop" checked>
                                <label class="form-check-label" for="checkbox_project_pop">
                                    Project
                                </label>
                                <br />
                                <input class="form-check-input"  runat="server" type="checkbox" value="" id="checkbox_poll_pop" checked>
                                <label class="form-check-label" for="checkbox_poll_pop">
                                    Poll
                                </label>
                                
                            </div>
                            
                        </div>
                     </div>
                        <hr />
                    <div class="row">
                            <div class="col">
                                Number of postings per board:
                            </div>
                        <div class="col">
                            <input type="number" runat="server" class="form-control" id="number_board_pop">
                            
                        </div>
                            <div class="col"></div>
                        </div>




                        <div class="row">
                            <div class="col"></div>
                        <div class="col">
                            <br />
                    <asp:Button ID="button3" runat="server" OnClick="button_populate_board_Click" Text="Submit" />
                        </div>
                            <div class="col"></div>
                        </div>
                        
                    </div>
                    
                    
        </div>
        </div>




            <div class="card">
                <div class="card-header" id="headingtwo">
                    <h2 class="mb-0">
                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapsetwo" aria-expanded="false" aria-controls="collapsetwo">
                            Populate Board Database
                        </button>
                    </h2>
                </div>
                <div id="collapsetwo" class="collapse" aria-labelledby="headingtwo" data-parent="#acc_pop_board">
                    <div class="card-body">

                        <asp:Button ID="button2" runat="server" OnClick="button_populate_board_Click" Text="Submit" />


                    </div>
                </div>
            </div>




        </div>




    </form>
</asp:Content>







