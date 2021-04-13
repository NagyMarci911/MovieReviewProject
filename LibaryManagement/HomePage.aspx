<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="LibaryManagement.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  style="background-color:#fcf3e9;margin-top:-20px">
    <section>
        <div class="container">
            <div class="row" style="margin:20px">
                <div class="col-12">
                    <center>
                    <h2 style="margin-top:30px">Our Features</h2>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">                   
                    <div class="card text-center border-warning" style="width: 18rem;border-style:dotted; border-width:10px;margin:5px">
                        
                        <i class="fas fa-search fa-4x card-img-top" style="margin-top:30px"></i>
                        <div class="card-body">
                            <h5 class="card-title">Search</h5>
                            <p class="card-text">Find new movies to watch</p>
                            <a href="#" class="btn btn-primary">Movies</a>
                         </div>
                    </div>
                </div>
                <div class="col-md-4">                   
                    <div class="card text-center border-warning" style="width: 18rem;border-style:dotted; border-width:10px;margin:5px">                 
                        <i class="far fa-star fa-4x card-img-top" style="margin-top:30px"></i>
                        <div class="card-body">
                            <h5 class="card-title">Review</h5>
                            <p class="card-text">Rate movies</p>
                            <a href="#" class="btn btn-primary">Rate</a>
                         </div>
                    </div>
                </div>
                <div class="col-md-4">                   
                    <div class="card text-center border-warning" style="width: 18rem; border-style:dotted; border-width:10px;margin:5px">                     
                        <i class="fas fa-list-ul fa-4x card-img-top" style="margin-top:30px"></i>
                        <div class="card-body">
                            <h5 class="card-title">My List</h5>
                            <p class="card-text">Create your own movie list</p>
                            <a href="#" class="btn btn-primary">create</a>
                         </div>
                         
                    </div>
                </div>
            </div>

        </div>
    </section>       
    <section>
        <div style="margin-top:50px">
        <img class="img-fluid" src="imgs/movietheater.png" />
        </div>
    </section>
        </div>
</asp:Content>
