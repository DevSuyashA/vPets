<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookVet.aspx.cs" Inherits="vPets_Services.BookVet" %>

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
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Pet Name</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList2" Width="100" runat="server" placeholder="Choose your pet" DataSourceID="SqlDataSource1" DataTextField="petName" DataValueField="pet_ID"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pet_ID], [petName] FROM [Pet] WHERE ([client_ID] = @client_ID)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="client_ID" SessionField="UserID" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                                <div class="col-md-6">
                                    <label>Appointment Date</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Enter Date of Appointment" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Veterinary</label>
                                    <div class="form-group">
                                        <asp:DropDownList ID="ddlVet" runat="server" DataSourceID="vettb" DataTextField="Name" DataValueField="vID"></asp:DropDownList>
                                        <asp:SqlDataSource ID="vettb" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [vID] FROM [Veterinary]"></asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Services</label>
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="ServiceID"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ServiceID], [Name] FROM [Service] WHERE ([isVet] = @isVet)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="TRUE" Name="isVet" Type="Boolean" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>

                                        <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [vID], [Name], [Address], [Mobno] FROM [Veterinary]"></asp:SqlDataSource>--%>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Start Timing</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtStart" TextMode="Time" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="col-md-6">
                                    <label>End Timing</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtEnd" TextMode="Time" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                                <%-- <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>--%>
                            </div>
                            <div class="row">
                                <%--<div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>--%>
                            </div>
                            <%--<div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Email ID" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>--%>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <%--<asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Book Appointment" OnClick="Button1_Click"/>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:Button ID="Button2" runat="server" Text="Submit Request" OnClick="Button2_Click" />
                    <a href="homepage.aspx"><< Back to Home</a><br>
                    <br>
                </div>
            </div>
        </div>
</asp:Content>
