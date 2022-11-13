<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookPetB.aspx.cs" Inherits="vPets_Services.BookPetB" %>

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
                                    <h4>Book Pet Buddy</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Pet Name</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" CssClass="btn btn-secondary dropdown-toggle" DataTextField="petName" DataValueField="pet_ID"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pet_ID], [petName] FROM [Pet] WHERE ([client_ID] = @client_ID)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="client_ID" SessionField="UserID" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                    <a href="RegisterPet.aspx">Register Your Pet</a>

                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Appointment Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="DOB" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <%--<div class="row">
<div class="col-md-6">
<label>Contact No</label>
<div class="form-group">--%>
                        <%--<asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>--%>
                        <%--</div>--%>
                        <%-- </div>--%>
                        <%-- <div class="col-md-6">
<label>Email ID</label>
<div class="form-group">--%>
                        <%--  <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>--%>
                        <%--</div>
</div>--%>
                        <%--</div>--%>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Start Timing</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" TextMode="Time"></asp:TextBox>



                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>End Time</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
                                    <%--  <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>--%>
                                </div>
                            </div>
                            <%-- <div class="col-md-4">
<label>Pincode</label>
<div class="form-group">--%>
                            <%--<asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>--%>
                            <%-- </div>
</div>--%>
                        </div>
                        <div>

                            <asp:Label ID="Label3" runat="server" Text="Is the location your Home Address?"></asp:Label>
                            <asp:RadioButton ID="RadioButton1" runat="server" value="Y" Text="Yes" GroupName="Type" />
                            <asp:RadioButton ID="RadioButton2" runat="server" value="N" Text="No" GroupName="Type" />
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Service Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Service Type</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ServiceID"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ServiceID], [Name] FROM [Service] WHERE ([isVet] = @isVet)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="False" Name="isVet" Type="Boolean" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4 align-self-center">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-lg" ID="Button1" runat="server" Text="Generate Request" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>
        </div>
    </div>
</asp:Content>
