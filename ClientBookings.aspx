<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ClientBookings.aspx.cs" Inherits="vPets_Services.ClientBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Your Bookings</h2>
    <h2>Available for Bookings</h2>
    
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="user" runat="server">
            <div class="card-block table-border-style">
                <div class="table-responsive">
                    <asp:Repeater ID="rUser" runat="server" >
                        <HeaderTemplate>
                            <table class="table data-table-export table-hover nowrap">
                                <thead>
                                    <tr>
                                        <th class="table-plus">Booking ID</th>
                                        <th>Pet Name</th>
                                        <th>Start Date and Time</th>
                                        <th>End Date and Time</th>
                                        <th>Service Type</th>
                                        <th>Vet Name</th>
                                        <th>PetBuddy Name</th>


                                        <%--<th class="datatable-nosort">Action</th>--%>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td class="table-plus"><%# Eval("b_ID") %> </td>
                                <td><%# Eval("petName") %></td>
                                <td><%# Eval("startDnT") %></td>
                                <td><%# Eval("endDnT") %></td>
                                <td><%# Eval("serviceType") %></td>
                                <td><%# Eval("vName") %></td>
                                <td><%# Eval("pbName") %></td>
                                <%--<td>
                                    <asp:LinkButton ID="lnkPay" Text="Pay" runat="server" CommandName="pay"
                                        CommandArgument='<%# Eval("b_ID") %>' OnClientClick="return confirm('Do You want to Pay?');">
                                    </asp:LinkButton>
                                </td>--%>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody> 
                                                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </asp:View>
        <asp:View ID="Vet" runat="server">
            <div class="card-block table-border-style">
                <div class="table-responsive">
                    <asp:Repeater ID="rVet" runat="server" >
                        <HeaderTemplate>
                            <table class="table data-table-export table-hover nowrap">
                                <thead>
                                    <tr>
                                        <th class="table-plus">Booking ID</th>
                                        <th>Client Name</th>
                                        <th>Pet Name</th>
                                        <th>Pet Breed</th>
                                        <th>Pet Age</th>
                                        <th>Pet Type</th>
                                        <th>Service Type</th>
                                        <th>End Date and Time</th>

                                        <%--<th class="datatable-nosort">Action</th>--%>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td class="table-plus"><%# Eval("b_ID") %> </td>
                                <td><%# Eval("cName") %></td>
                                <td><%# Eval("pName") %></td>
                                <td><%# Eval("pBreed") %></td>
                                <td><%# Eval("pAge") %></td>
                                <td><%# Eval("pType") %></td>
                                <td><%# Eval("serviceType") %></td>
                                <td><%# Eval("endDnT") %></td>
                                <%-- <td>
                                    <asp:LinkButton ID="lnkPay" Text="Pay" runat="server" CommandName="pay"
                                        CommandArgument='<%# Eval("b_ID") %>' OnClientClick="return confirm('Do You want to Pay?');">
                                    </asp:LinkButton>
                                </td>--%>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody> 
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>

            </div>
        </asp:View>
        <asp:View ID="petBuddy" runat="server">
            <div class="card-block table-border-style">
                <div class="table-responsive">
                    <asp:Repeater ID="rBuddy" runat="server" OnItemCommand="rBuddy_ItemCommand">
                        <HeaderTemplate>
                            <table class="table data-table-export table-hover nowrap">
                                <thead>
                                    <tr>
                                       <th class="table-plus">Booking ID</th>
                                        <th>Client Name</th>
                                        <th>Pet Name</th>
                                        <th>Pet Breed</th>
                                        <th>Pet Age</th>
                                        <th>Pet Type</th>
                                        <th>Service Type</th>
                                        <th>Address</th>
                                        <th>Start Date and Time</th>

                                        <th>End Date and Time</th>
                                        <th class="datatable-nosort">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td class="table-plus"><%# Eval("b_ID") %> </td>
                                <td><%# Eval("cName") %></td>
                                <td><%# Eval("pName") %></td>
                                <td><%# Eval("pBreed") %></td>
                                <td><%# Eval("pAge") %></td>
                                <td><%# Eval("pType") %></td>
                                <td><%# Eval("serviceType") %></td>
                                <td><%# Eval("destAddress") %></td>
                                <td><%# Eval("startDnT") %></td>
                                <td><%# Eval("endDnT") %></td>
                                <td>
                                    <asp:LinkButton ID="lnkaccept" Text="Accept" runat="server" CommandName="accept"
                                        CommandArgument='<%# Eval("b_ID") %>' OnClientClick="return confirm('Do You want to Accept?');">
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
                 <div class="table-responsive">
                     <h3>Pending Bookings</h3>
                    <asp:Repeater ID="rBuddyOncoming" runat="server" >
                        <HeaderTemplate>
                            <table class="table data-table-export table-hover nowrap">
                                <thead>
                                    <tr>
                                       <th class="table-plus">Booking ID</th>
                                        <th>Client Name</th>
                                        <th>Pet Name</th>
                                        <th>Pet Breed</th>
                                        <th>Pet Age</th>
                                        <th>Pet Type</th>
                                        <th>Service Type</th>
                                        <th>Address</th>
                                        <th>Start Date and Time</th>

                                        <th>End Date and Time</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td class="table-plus"><%# Eval("b_ID") %> </td>
                                <td><%# Eval("cName") %></td>
                                <td><%# Eval("pName") %></td>
                                <td><%# Eval("pBreed") %></td>
                                <td><%# Eval("pAge") %></td>
                                <td><%# Eval("pType") %></td>
                                <td><%# Eval("serviceType") %></td>
                                <td><%# Eval("destAddress") %></td>
                                <td><%# Eval("startDnT") %></td>
                                <td><%# Eval("endDnT") %></td>
                               

                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody> 
                                                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
                 <div class="table-responsive">
                     <h3>Completed Bookings</h3>
                    <asp:Repeater ID="rBuddyDone" runat="server">
                        <HeaderTemplate>
                            <table class="table data-table-export table-hover nowrap">
                                <thead>
                                    <tr>
                                       <th class="table-plus">Booking ID</th>
                                        <th>Client Name</th>
                                        <th>Pet Name</th>
                                        <th>Pet Breed</th>
                                        <th>Pet Age</th>
                                        <th>Pet Type</th>
                                        <th>Service Type</th>
                                        <th>Address</th>
                                        <th>Start Date and Time</th>

                                        <th>End Date and Time</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td class="table-plus"><%# Eval("b_ID") %> </td>
                                <td><%# Eval("cName") %></td>
                                <td><%# Eval("pName") %></td>
                                <td><%# Eval("pBreed") %></td>
                                <td><%# Eval("pAge") %></td>
                                <td><%# Eval("pType") %></td>
                                <td><%# Eval("serviceType") %></td>
                                <td><%# Eval("destAddress") %></td>
                                <td><%# Eval("startDnT") %></td>
                                <td><%# Eval("endDnT") %></td>
                               

                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody> 
                                                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </asp:View>
    </asp:MultiView>

</asp:Content>

