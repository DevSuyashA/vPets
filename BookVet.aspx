<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookVet.aspx.cs"
    Inherits="vPets_Services.BookVet" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100px" src="imgs/generaluser.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Book Veterinarian Appointment</h4>
                                    </center>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Pet Name</label>
                                    <div class="form-group">
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList2" Width="100"
                                            runat="server" placeholder="Choose your pet" DataSourceID="SqlDataSource1"
                                            DataTextField="petName" DataValueField="pet_ID"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT [pet_ID], [petName] FROM [Pet] WHERE ([client_ID] = @client_ID)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="client_ID" SessionField="UserID"
                                                    Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <label>Appointment Date</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=""
                                            TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row gx-3 mb-3">
                                <div class="col-md-6">
                                    <label>Veterinary</label>
                                    <div class="form-group">
                                        <asp:DropDownList CssClass="form-control" ID="ddlVet" runat="server"
                                            DataSourceID="vettb" DataTextField="Name" DataValueField="vID">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="vettb" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT [Name], [vID] FROM [Veterinary]">
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <label>Services</label>
                                    <div class="form-group">
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server"
                                            DataSourceID="SqlDataSource3" DataTextField="Name"
                                            DataValueField="ServiceID"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT [ServiceID], [Name] FROM [Service] WHERE ([isVet] = @isVet)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="TRUE" Name="isVet" Type="Boolean" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT [vID], [Name], [Address], [Mobno] FROM [Veterinary]">
                                            </asp:SqlDataSource>--%>
                                    </div>
                                </div>
                            </div>
                            <div class="row gx-3">
                                <div class="col-md-6">
                                    <label>Start Timing</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtStart" TextMode="Time"
                                            runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="col-md-6">
                                    <label>End Timing</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtEnd" CssClass="form-control" TextMode="Time" runat="server">
                                        </asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md">
                                    <asp:Button ID="Button2" runat="server" class="btn btn-success btn-block btn-lg"
                                        Text="Book Appointment" OnClick="Button2_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="homepage.aspx">
                        << Back to Home</a><br>
                            <br>
                </div>
            </div>
        </div>
        </div>
    </asp:Content>