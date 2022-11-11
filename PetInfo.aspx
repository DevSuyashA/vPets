<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PetInfo.aspx.cs" Inherits="vPets_Services.PetInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>
        <center>
            Your Pets
        </center>
    </h3>
    <div class="row">
        <div class="col">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pet_ID], [petName] FROM [Pet] WHERE ([client_ID] = @client_ID)">
                <SelectParameters>
                    <asp:SessionParameter Name="client_ID" SessionField="UserID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Repeater ID="rPetInfo" runat="server" OnItemCommand="rPetInfo_ItemCommand">
                <HeaderTemplate>
                    <table class="table data-table-export table-hover nowrap">
                        <thead>
                            <tr>
                                <th class="table-plus">Pet Name</th>
                                <th>Breed</th>
                                <th>Age</th>
                                <th>Gender</th>
                                <th class="datatable-nosort">Delete</th>
                                <th class="datatable-nosort">Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="table-plus"><%# Eval("petName") %> </td>
                        <td>
                            <%# Eval("Breed") %></td>
                        <td>
                            <%# Eval("Age") %></td>
                        <td><%# Eval("Gender") %></td>
                        <td>
                            <asp:LinkButton ID="lnkDelete" Text="Delete" runat="server" CommandName="delete"
                                CommandArgument='<%# Eval("pet_ID") %>' OnClientClick="return confirm('Do You want to delete?');">
                            </asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="lnkEdit" Text="Edit" runat="server" CommandName="edit"
                                CommandArgument='<%# Eval("pet_ID") %>'>
                            </asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody> 
</table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
    <center>
        <asp:Button class="btn-dark mb-3 p-2" ID="LinkButton1" name="LinkButton1" Text="Register New Pet" runat="server" OnClick="LinkButton1_Click"></asp:Button>
    </center>

</asp:Content>
