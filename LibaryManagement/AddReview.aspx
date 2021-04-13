<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddReview.aspx.cs" Inherits="LibaryManagement.AddReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable({
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
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body card text-center">
                        <div class="row">
                            <div class="col">
                                <i class="fas fa-user fa-3x card-img-top"></i>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <h4>Add review</h4>
                            </div>
                        </div>                      
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Movie title</label>
                                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Director name"></asp:TextBox>     
                            </div>
                            <div class="col-md-6">
                                <label>Director name</label>
                                   <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Movie title"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="formgroup">
                                    <label>Year of release</label>
                                   <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Year" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="formgroup">
                                    <label>Rating</label>
                                   <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                    <asp:ListItem Text="" value=""/>
                                    <asp:ListItem Text="10" value="10"/>
                                    <asp:ListItem Text="9" value="9"/>
                                    <asp:ListItem Text="8" value="8"/>
                                    <asp:ListItem Text="7" value="7"/>
                                    <asp:ListItem Text="6" value="6"/>
                                    <asp:ListItem Text="5" value="5"/>
                                    <asp:ListItem Text="4" value="4"/>
                                    <asp:ListItem Text="3" value="3"/>
                                    <asp:ListItem Text="2" value="2"/>
                                    <asp:ListItem Text="1" value="1"/>
                                   </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                            <div class="row"  style="margin-top:10px">
                                <div class="col-md-4">
                                    <div class="formgroup">
                                        <label>Netflix</label>
                                        <asp:CheckBox ID="CheckBox1" runat="server" /> 
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="formgroup">
                                        <label>HBO GO</label>
                                        <asp:CheckBox ID="CheckBox2" runat="server" /> 
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="formgroup">
                                        <label>Amazon Prime</label>
                                        <asp:CheckBox ID="CheckBox3" runat="server" />         
                                    </div>
                                </div>                           
                            </div>
                        <div class="row"  style="margin-top:10px">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Review</label>
                                    <asp:TextBox ID="BigTextBox" runat="server" class="form-control" TextMode="MultiLine" rows="9"/>                                    
                                 </div>                        
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
                                        <asp:Button ID="Button1" class="btn btn-primary col-12" runat="server" style="margin-top:20px" Text="Update review" />
                                    </div>                               
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">                                 
                                        <asp:Button ID="Button2" class="btn btn-danger col-12" runat="server" style="margin-top:20px" Text="Delete review" OnClick="Button2_Click" />
                                    </div>                               
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
             </div>
            <div class="col-md-6">
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:moviedbConnectionString2 %>" SelectCommand="SELECT [DirectorName], [MovieTitle], [Year], [Rating], [Netflix], [Amazon], [HBO], [ReviewText] FROM [ReviewDB] WHERE ([UserID] = @UserID2)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="UserID2" SessionField="userID" Type="String" />
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
