<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterPet.aspx.cs" Inherits="vPets_Services.RegisterPet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
    <asp:Label ID="Label4" runat="server" Text="Pet Name:"></asp:Label>
    <asp:TextBox ID="TextBox1" placeholder="Enter Pet Name" runat="server"></asp:TextBox>
    <br />
            <asp:Label ID="Label3" runat="server" Text="Pet Type:"></asp:Label>
    <asp:RadioButton ID="RadioButton1" runat="server" value="Dog" Text="Dog" GroupName="Type" />
    <asp:RadioButton ID="RadioButton2" runat="server" value="Cat" Text="Cat" GroupName="Type" />
    <br />
            <asp:Label ID="Label5" runat="server" Text="Pet's Age:"></asp:Label>
    <asp:TextBox ID="TextBox3" placeholder="Enter Age of Pet" runat="server"></asp:TextBox>
    <br />
            <asp:Label ID="Label2" runat="server" Text="Pet Gender:"></asp:Label>
    <asp:DropDownList ID="ddlGender" runat="server">
        <asp:ListItem Text="Male" Value="M" />
        <asp:ListItem Text="Female" Value="F" />
    </asp:DropDownList>
    <br />
            <asp:Label ID="Label1" runat="server" Text="Pet Breed:"></asp:Label>
    <asp:TextBox ID="TextBox5" placeholder="Enter Breed" runat="server"></asp:TextBox>
    <br />

    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    
    </div>
    </div>

</asp:Content>
