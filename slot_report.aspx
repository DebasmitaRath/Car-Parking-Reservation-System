<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="slot_report.aspx.vb" Inherits="slot_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
     
                <div class="card mb-12">
            <div class="card-header"><strong>Display Parking Slot Report</strong></div>
                  <div class="container">
                 <div class="row mt-2">
    <div class="col-sm-12">
        <asp:Repeater ID="Repeater1" runat="server">

                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Parking ID</th>
                                 <th>Vehicle Type</th>
                                <th>Place</th>
                                <th>Landmark</th>
                                <th>Status</th>
                                <th>Action</th>
                                
                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("id")%>'></asp:Label></td>
                            <td><asp:Label ID="Label2" CssClass="ccc" runat="server" Text='<%# Eval("pid")%>'></asp:Label></td>
                           
                            <td><%# Eval("vtype")%></td>
                            <td><%# Eval("place")%></td>
                            <td><%# Eval("lmark")%></td>
                      <td> <asp:Label ID="Label4" runat="server" Text='<%# If(Eval("st").ToString() = "N", "<b  style=color:green;>N</b>", "<b style=color:red;>P</b>")%>' />

                      </td>
                            
                            <td>
                  
                                <asp:LinkButton ID="LinkButton1" CommandName="delete" CommandArgument='<%# Eval("id")%>' Text="" runat="server" ForeColor="red" Font-Size="18">
    <i class="fa-solid fa-trash-can"></i>
                                </asp:LinkButton>
                            </td>

                        </tr>
                    </tbody>


                </ItemTemplate>

            </asp:Repeater>
            </table>
    </div>
    
    
</div>
                     </div> 
                   
                  </div>
     
</asp:Content>


