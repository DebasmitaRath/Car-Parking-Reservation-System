<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="customer_details.aspx.vb" Inherits="customer_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
             <div class="card mb-12">
            <div class="card-header"><strong>Parking Customer Details</strong></div>
                 <asp:Repeater ID="Repeater1" runat="server">

                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Customer Name</th>
                                 <th>Place</th>
                                 <th>Street</th>
                                <th>Pincode</th>
                                <th>Contact No</th>
                                <th>E-Mail</th>
                                
                                
                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("id")%>'></asp:Label></td>
                            <td><asp:Label ID="Label2" CssClass="ccc" runat="server" Text='<%# Eval("cname")%>'></asp:Label></td>
                           
                            <td><%# Eval("place")%></td>
                            <td><%# Eval("street")%></td>
                            <td><%# Eval("pcode")%></td>
<td><%# Eval("cno")%></td>
<td><%# Eval("email")%></td>

                     
                            
                            <td>
                               
                                <asp:LinkButton ID="LinkButton1" CommandName="delete" CommandArgument='<%# Eval("id")%>' Text="" runat="server" ForeColor="red" Font-Size="18">
    <i class="fa-solid fa-trash"></i>
                                </asp:LinkButton>
                            </td>

                        </tr>
                    </tbody>


                </ItemTemplate>

            </asp:Repeater>
            </table>
                  </div>
</asp:Content>


