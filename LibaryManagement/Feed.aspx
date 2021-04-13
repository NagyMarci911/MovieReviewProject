<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feed.aspx.cs" Inherits="LibaryManagement.Feed" %>
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
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <center>
                <h3>Reviews</h3>
                </center>
                <hr />
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:moviedbConnectionString %>" SelectCommand="SELECT [DirectorName], [MovieTitle], [Year], [Rating], [Netflix], [Amazon], [HBO], [ReviewText], [UserID] FROM [ReviewDB]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" Class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="DirectorName" HeaderText="DirectorName" SortExpression="DirectorName" />
                        <asp:BoundField DataField="MovieTitle" HeaderText="MovieTitle" SortExpression="MovieTitle" />
                        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                        <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                        <asp:BoundField DataField="Netflix" HeaderText="Netflix" SortExpression="Netflix" />
                        <asp:BoundField DataField="Amazon" HeaderText="Amazon" SortExpression="Amazon" />
                        <asp:BoundField DataField="HBO" HeaderText="HBO" SortExpression="HBO" />
                        <asp:BoundField DataField="ReviewText" HeaderText="ReviewText" SortExpression="ReviewText" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
