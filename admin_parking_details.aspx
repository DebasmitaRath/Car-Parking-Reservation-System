<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="admin_parking_details.aspx.vb" Inherits="admin_parking_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
              <div class="card mb-12">
            <div class="card-header"><strong>Parking Details</strong></div>
                 <asp:Repeater ID="Repeater1" runat="server">

                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Vehicle Reg.No</th>
                                 <th>Vehicle Name</th>
                                 <th>Vehicle Type</th>
                                <th>Owner Name</th>
                                <th>Contact No</th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Parking ID</th>
                                
                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("id")%>'></asp:Label></td>
                            <td><asp:Label ID="Label2" CssClass="ccc" runat="server" Text='<%# Eval("rno")%>'></asp:Label></td>
                           
                            <td><%# Eval("vname")%></td>
                            <td><%# Eval("vtype")%></td>
                            <td><%# Eval("oname")%></td>
<td><%# Eval("cno")%></td>
<td><%# Eval("dt", "{0: dd/MM/yyyy}")%></td>
<td><%# Eval("tm")%></td>
<td><asp:Label ID="Label3" runat="server" Text='<%# Eval("pid")%>'></asp:Label></td>

                     
                            
                            <td>
                               
                                <asp:LinkButton ID="LinkButton1" CommandName="delete" CommandArgument='<%# Eval("id")%>' Text="" runat="server" ForeColor="red" Font-Size="18">
    <i class="fa-solid fa-square-parking"></i>
                                </asp:LinkButton>
                            </td>

                        </tr>
                    </tbody>


                </ItemTemplate>

            </asp:Repeater>
            </table>
                  </div>
</asp:Content>


