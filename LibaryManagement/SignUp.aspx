<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LibaryManagement.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:20px">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body card text-center">
                        <div class="row">
                            <div class="col">
                                <i class="fas fa-user fa-3x card-img-top"></i>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <h4>User Sign Up</h4>
                                <asp:Label ID="Label1" runat="server" Text="Label" class="alert alert-warning" style="display:none" role="alert">
                                    That UserID is already in use, please chose another!
                                </asp:Label>
                            </div>
                        </div>                      
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Full name</label>
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Full name"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Date of birth</label>
                                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="User ID" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                            <div class="row"  style="margin-top:10px">
                            <div class="col-md-6">
                                <label>User ID</label>
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="User ID"></asp:TextBox>                               
                            </div>
                            <div class="col-md-6">
                                <label>Country</label>
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                    <asp:ListItem Text="country" value=""/>
                                    <asp:ListItem Text="Hungary" value="Hungary"/>
                                    <asp:ListItem Text="Lusta vagyok" value="b"/>
                                    <asp:ListItem Text="végigírni" value="a"/>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row"  style="margin-top:10px">
                            <div class="col-md-6">
                                <label>Password</label>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="User password" TextMode="Password"></asp:TextBox>                               
                            </div>
                            <div class="col-md-6">
                                <label>Repeat password</label>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="repeat password" TextMode="Password"></asp:TextBox>
                            </div>
                         </div>
                            <div class="row">
                            <div class="col">
                                <div class="form-group">                                 
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
