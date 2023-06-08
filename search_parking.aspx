<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="search_parking.aspx.vb" Inherits="search_parking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="card mb-12">
    <div class="card-header"><strong>Search Parking Details</strong></div>
    <div class="row p-3">
            <div class="col-sm-1">From Date</div>
<div class="col-sm-2">
    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox></div>
<div class="col-sm-1">To Date</div>
<div class="col-sm-2">
    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox></div>
         <div class="col-sm-2">
        <asp:Button ID="Button1" CssClass="btn-success btn" runat="server" Text="Search" />
    </div>
    </div>
   

    <hr />
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
<th>Status</th>                               
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
<td><%# Eval("dt")%></td>
<td><%# Eval("tm")%></td>
<td><%# Eval("tm1")%></td>

<td> <asp:Label ID="Label4" runat="server" Text='<%# If(Eval("pid").ToString() = "0", "<b  style=color:green;>N</b>", "<b style=color:red;>P</b>")%>' />



                        </tr>
                    </tbody>


                </ItemTemplate>

            </asp:Repeater>
            </table>
    </div>
        </div>
</asp:Content>


