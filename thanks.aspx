<%@ Page Title="" Language="VB" MasterPageFile="~/customer.master" AutoEventWireup="false" CodeFile="thanks.aspx.vb" Inherits="thanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-6">
        <img src="img/65.png" class="img-fluid" />
    </div>
<div class="col-sm-6">
    <div class="row">
    <div class="col-sm-4 mb-2">
        Name
    </div>
            <div class="col-sm-8 mb-2">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
     <div class="row">
    <div class="col-sm-4 mb-2">
        Contact Number
    </div>
            <div class="col-sm-8 mb-2">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </div>
          </div>
     <div class="row">
<div class="col-sm-4 mb-2">
    Price
    </div>
            <div class="col-sm-8 mb-2">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </div>
         </div>

    <h3>Thanks & Visit Again</h3>

</div>
</asp:Content>

