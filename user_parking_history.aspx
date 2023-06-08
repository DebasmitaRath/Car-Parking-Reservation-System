<%@ Page Title="" Language="VB" MasterPageFile="~/customer.master" AutoEventWireup="false" CodeFile="user_parking_history.aspx.vb" Inherits="user_parking_history" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-12">
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
                                <th>IN Time</th>
<th>OUT Time</th>

                     
                                
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
<td><%# Eval("tm1")%></td>





                        </tr>
                    </tbody>


                </ItemTemplate>

            </asp:Repeater>
            </table>
    </div>
</asp:Content>

