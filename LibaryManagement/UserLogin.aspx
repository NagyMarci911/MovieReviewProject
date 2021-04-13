<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="LibaryManagement.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin-top:20px">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body card text-center">
                        <div class="row">
                            <div class="col">
                                <i class="fas fa-user fa-4x card-img-top"></i>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <h3>User Login</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:Label ID="Label" runat="server" Text="Label" class="alert alert-warning" style="display:none" role="alert">
                                    Wrong Username or Password, please try again!
                                </asp:Label>                  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="User ID"></asp:TextBox>
                                     <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="User password" style="margin-top:10px" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success col-12 btn-lg" runat="server" style="margin-top:20px" Text="Login" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" class="btn btn-primary col-12 btn-lg" runat="server" style="margin-top:20px" Text="Sign up" OnClick="Button2_Click" />
                                </div>                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
