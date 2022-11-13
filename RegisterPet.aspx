<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterPet.aspx.cs" Inherits="vPets_Services.RegisterPet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xl px-4 mt-4">
        <div class="row">
            <div class="col-xl-8">
                <div class="card mb-4">
                    <div class="card-header">Register New Pet</div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label CssClass="small mb-1" ID="Label4" runat="server" Text="Pet Name:"></asp:Label>
                                <asp:TextBox class="form-control" ID="TextBox1" placeholder="Enter Pet Name" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:Label CssClass="small mb-1" ID="Label3" runat="server" Text="Pet Type:"></asp:Label>
                                <asp:RadioButton ID="RadioButton1" runat="server" value="Dog" Text="Dog" GroupName="Type" />
                                <asp:RadioButton ID="RadioButton2" runat="server" value="Cat" Text="Cat" GroupName="Type" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label CssClass="small mb-1" ID="Label5" runat="server" Text="Pet's Age:"></asp:Label>
                                <asp:TextBox class="form-control" ID="TextBox3" placeholder="Enter Age of Pet" runat="server" TextMode="Number" ></asp:TextBox>
                            </div>
                            <div class="flex-row">
                                <div class="col-md-6">
                                    <asp:Label CssClass="small mb-1" ID="Label2" runat="server" Text="Pet Gender:"></asp:Label>
                                    <asp:DropDownList CssClass="btn btn-secondary dropdown-toggle" ID="ddlGender" runat="server">
                                        <asp:ListItem Text="Male" Value="M" />
                                        <asp:ListItem Text="Female" Value="F" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label CssClass="small mb-1" ID="Label1" runat="server" Text="Pet Breed:"></asp:Label>
                                <asp:TextBox class="form-control" ID="TextBox5" placeholder="Enter Breed" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col p-1 mt-2">
                            <asp:Button ID="Button1" class="btn-primary p-1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
