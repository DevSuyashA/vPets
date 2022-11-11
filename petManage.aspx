<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="petManage.aspx.cs" Inherits="Library_Management_New.AdminBookIssuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Add Pet Buddy</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtName" runat="server" placeholder="Enter Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Enter Email"></asp:TextBox>
                                </div>
                            </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Username</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server" placeholder="Enter username"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Gender</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList ID="ddlGender" runat="server">
                                            <asp:ListItem Text="Male" Value="M" />
                                            <asp:ListItem Text="Female" Value="F" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtNum" runat="server" placeholder="Enter Contact Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Experience</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtExp" runat="server" placeholder="Enter Experience in Hours"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Add" OnClick="Button2_Click" />
                    </div>
                    <div class="col-6">
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-success" runat="server" Text="Return" />
                    </div>
                </div>
            </div>
        </div>
        <a href="homepage.aspx"><< Back to Home</a><br>
        <br>
    </div>
    <div class="col-md-7">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <center>
                            <h4>Issued Book List</h4>
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pb_ID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="pb_ID" HeaderText="pb_ID" InsertVisible="False" ReadOnly="True" SortExpression="pb_ID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Mobno" HeaderText="Mobno" SortExpression="Mobno" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                                <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                                <asp:BoundField DataField="noRating" HeaderText="noRating" SortExpression="noRating" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pb_ID], [Name], [Mobno], [Gender], [Email], [Experience], [Rating], [noRating] FROM [PetBuddy] where [pb_ID] != 0"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
