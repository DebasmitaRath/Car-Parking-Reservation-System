<%@ Page Title="" Language="VB" MasterPageFile="~/customer.master" AutoEventWireup="false" CodeFile="user_slot_display.aspx.vb" Inherits="user_slot_display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h4 style="text-align:center;">Select Car Slot</h4>
    <div class="col-sm-12 mt-3">
        <div class="row">
            <div class="col-sm-1 mb-2">
			Place
			</div>
            <div class="col-sm-3 mb-2">
                <asp:DropDownList ID="DropDownList1" CssClass="form-select" runat="server"></asp:DropDownList>
			</div>
             <div class="col-sm-1 mb-2">
			Land Mark
			</div>
            <div class="col-sm-3 mb-2">
			<asp:DropDownList ID="DropDownList2" CssClass="form-select" runat="server"></asp:DropDownList>
			</div>
            <div class="col-sm-3 mb-2">
                <asp:Button ID='Button1' runat="server" CssClass="btn-success btn"  Text="Search" />
			</div>
            
        </div>
    </div>
    <hr />
    <asp:Label ID="Label1" runat="server" Text="Parking Slot Not Found"  Visible="False" Font-Bold="True" ForeColor="Red"></asp:Label>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="col-sm-1">
                <asp:LinkButton  CommandName="slot" ID="LinkButton1" runat="server"><%# If(Eval("st").ToString() = "N", "<img src='img/green.png' width=50px />", "<img src='img/red.png' width=50px />")%></asp:LinkButton>
                <asp:HiddenField ID="id" Value='<%# Eval("id")%>' runat="server" />
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <hr />
    
</asp:Content>

                