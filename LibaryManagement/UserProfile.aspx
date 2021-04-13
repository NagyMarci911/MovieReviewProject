<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="LibaryManagement.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
            $(document).ready(function () {                
                $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable({
                    scrollY: "300px",  
                    scrollX: true,
                    scrollCollapse: true,
                    paging: true,
                    columnDefs: [
                        { width: 50, targets: 0 }
                    ],
                    fixedColumns: true
                });
            });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid" style="margin-top:20px">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body card text-center">
                        <div class="row">
                            <div class="col">
                                <i class="fas fa-user fa-3x card-img-top"></i>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <h4>Your profile</h4>
                                <span>Account status - </span>
                                <asp:Label ID="Label1" runat="server" Text="status"  class="badge rounded-pill bg-success"></asp:Label>
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
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Full name" ReadOnly="True"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Date of birth</label>
                                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="User ID" TextMode="Date" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                            <div class="row"  style="margin-top:10px">
                            <div class="col-md-6">
                                <label>User ID</label>
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>                               
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
                                <label>Friend list</label>
                                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server"> </asp:DropDownList>                            
                            </div>
                            <div class="col-md-6">
                                <label>Review count</label>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="0"></asp:TextBox>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">                                 
                                        <asp:Button ID="Button3" class="btn btn-success col-12" runat="server" style="margin-top:20px" Text="Add review" OnClick="Button3_Click" />
                                    </div>                               
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">                                 
                                        <asp:Button ID="Button1" class="btn btn-success col-12" runat="server" style="margin-top:20px" Text="Add friend" />
                                    </div>                               
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">                                 
                                        <asp:Button ID="Button2" class="btn btn-primary col-12" runat="server" style="margin-top:20px;" Text="Change password" />
                                </div>                               
                            </div>
                        </div>
                        
                        </div>
                    </div>
                </div>
             </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body card text-center">
                                <div class="row">
                                    <div class="col">
                                        <i class="fas fa-list-ul fa-3x card-img-top"></i>
                                        <h4>Your reviews</h4>
                                        <span>Last update - </span>
                                <asp:Label ID="Label2" runat="server" Text="date"  class="badge rounded-pill bg-info"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">                                       
                                       <hr />
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:moviedbConnectionString2 %>" SelectCommand="SELECT [DirectorName], [MovieTitle], [Year], [Rating], [Netflix], [Amazon], [HBO], [ReviewText] FROM [ReviewDB] WHERE ([UserID] = @UserID)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="UserID" SessionField="userID" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="DirectorName" HeaderText="DirectorName" SortExpression="DirectorName" />
                                                <asp:BoundField DataField="MovieTitle" HeaderText="MovieTitle" SortExpression="MovieTitle" />
                                                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                                                <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                                                <asp:BoundField DataField="Netflix" HeaderText="Netflix" SortExpression="Netflix" />
                                                <asp:BoundField DataField="Amazon" HeaderText="Amazon" SortExpression="Amazon" />
                                                <asp:BoundField DataField="HBO" HeaderText="HBO" SortExpression="HBO" />
                                                <asp:BoundField DataField="ReviewText" HeaderText="ReviewText" SortExpression="ReviewText" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
            </div>
         </div>
</asp:Content>
