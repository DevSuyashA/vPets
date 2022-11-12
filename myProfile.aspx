﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="myProfile.aspx.cs" Inherits="vPets_Services.myProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xl px-4 mt-4">

        <hr class="mt-0 mb-4">
        <div class="row">
            <div class="col-xl-4">
                <!-- Profile picture card-->
                <div class="card mb-4 mb-xl-0">
                    <div class="card-header">Profile Picture</div>
                    <div class="card-body text-center">
                        <!-- Profile picture image-->
                        <img class="img-account-profile rounded-circle mb-2" src="http://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                        <!-- Profile picture help block-->
                        <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                        <!-- Profile picture upload button-->
                        <button class="btn btn-primary" type="button">Upload new image</button>
                    </div>
                </div>
            </div>
            <div class="col-xl-8">
                <!-- Account details card-->
                <div class="card mb-4">
                    <div class="card-header">Account Details</div>
                    <div class="card-body">

                        <!-- Form Group (username)-->
                        <div class="mb-3">
                            <label class="small mb-1" for="inputUsername">Username (how your name will appear to other users on the site)</label>
                            <asp:TextBox runat="server" class="form-control" ID="inputUsername" type="text" placeholder="Enter your username"></asp:TextBox>
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (first name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputName">Full name</label>
                                <asp:TextBox class="form-control" ID="inputName" type="text" placeholder="Enter your full name" runat="server"></asp:TextBox>

                            </div>
                        </div>
                        <!-- Form Row        -->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (organization name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputPass">Password</label>
                                <asp:TextBox class="form-control" ID="inputPass" type="text" placeholder="Enter your new password" runat="server"></asp:TextBox>

                            </div>
                            <!-- Form Group (location)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLocation">Home Address</label>
                                <asp:TextBox runat="server" class="form-control" ID="inputLocation" type="text" placeholder="Enter your home location"></asp:TextBox>
                            </div>
                        </div>
                        <!-- Form Group (email address)-->
                        <div class="mb-3">
                            <label class="small mb-1" for="inputEmailAddress">Email address</label>
                            <asp:TextBox runat="server" class="form-control" ID="inputEmailAddress" type="email" placeholder="Enter your email address"></asp:TextBox>
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (phone number)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputPhone">Mobile number</label>
                                <asp:TextBox runat="server" class="form-control" ID="inputPhone" type="tel" placeholder="Enter your phone number"></asp:TextBox>
                            </div>
                            <!-- Save changes button-->
                            <div class="col-md-6">
                                <br />
                                <asp:Button runat="server" Text="Edit" class="btn btn-primary" type="button" ID="edit" OnClick="edit_Click" />
                            </div>



                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
