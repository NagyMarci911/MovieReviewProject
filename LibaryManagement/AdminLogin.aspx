<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="LibaryManagement.AdminLogin" %>
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
                                <h3>Admin Login</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Admin ID"></asp:TextBox>
                                     <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Admin password" style="margin-top:10px" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success col-12 btn-lg" runat="server" style="margin-top:20px" Text="Login" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
