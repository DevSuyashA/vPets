<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="homepage.aspx.cs" Inherits="vPets_Services.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Services</h2>
                        <p><b>Our 3 Primary Features</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/petinfo.png" /><br />
                        <asp:Button ID="Button1" runat="server" Text="My Pet Info" OnClick="Button1_Click" class="btn btn-dark" />
                        <p class="text-center">Get your Pet Info Here</p>
                    </center>

                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/buddy.png" />
                        <br />
                        <center>
                            <asp:Button ID="Button2" runat="server" Text="Book Pet Buddy"
                                OnClick="Button2_Click" class="btn btn-dark" />
                            <p class="text-center">Book a Pet Buddy to look after ypur Pet.</p>
                        </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/vet.png" />
                        <br />
                        <asp:Button ID="Button3" runat="server" Text="Book Veterinary Services" OnClick="Button3_Click" class="btn btn-dark" />
                        <p class="text-center">Get your Pet consulted by a Professional Veterinarian</p>
                    </center>
                </div>
            </div>
        </div>
    </section>
    <section>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <br />
                    <br />
                    <br />
                </div>
            </div>
            <div class="row">
               <%-- <div class="col-md-4">
                    <center>
                        <a href="WebForm1.aspx">
                            <img width="150px" src="imgs/sign-up.png" /><br />
                            <br />
                            <h4 class="btn btn-dark">Sign Up</h4>
                        </a>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <p class="text-center">Sign Up to Book Pet Buddies or Consult a Vet.</p>
                    </center>
                </div>--%>
                <div class="col-md-4">
                    <center>
                        <a href="Payments.aspx">
                            <img width="150px" src="imgs/search-online.png" /><br />
                            <br />
                            <h4 class="btn btn-dark">Payments</h4>

                        </a>
                        <p class="text-center">See your Payments</p>
                    </center>
                </div>
               <%-- <div class="col-md-4" runat="server" Id="viewmyPayments">
                    <center>
                        <a href="pbPayment.aspx">
                            <img width="150px" src="imgs/money.png" /><br />
                            <br />
                           
                            <h4 class="btn btn-dark">View Payments</h4>

                        </a>
                        <p class="text-center">Check Payments for your Service</p>
                    </center>
                </div>--%>

                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/library.png" />
                        <h4>Visit Us</h4>
                        <asp:Button ID="Button4" runat="server" Text="Contact Us here!" OnClick="Button4_Click" class="btn btn-dark" />
                        <p class="text-center">Contact us to know more </p>
                    </center>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
