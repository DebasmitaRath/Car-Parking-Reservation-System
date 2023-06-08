<%@ Page Title="" Language="VB" MasterPageFile="~/customer.master" AutoEventWireup="false" CodeFile="parking_bill.aspx.vb" Inherits="parking_bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="assets/validation.js"></script>
    <script>
        function card(evt) {
            var cno = document.getElementById("TextBox2").value;
            var charCode = (evt.which) ? evt.which : event.keyCode
            if ((charCode >= 47 && charCode <= 57)) {

                //alert("Please Enter valid input " + cno.length);
                if (cno.length <= 15) {
                    // alert("Length " + cno.length);
                    return true;

                }
                else
                    return false;
            }
            else {

                return false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-4">
        <img class="img-fluid" src="img/54.jpg" />
         </div>
    <div class="col-sm-4">
        <div class="row">
            <div class="col-sm-4 mb-2">Vehicle Registration Number</div>
            <div class="col-sm-8 mb-2">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
              <div class="col-sm-4 mb-2">Vehicle Type</div>
            <div class="col-sm-8 mb-2">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </div>
              <div class="col-sm-4 mb-2">Vehicle Name</div>
            <div class="col-sm-8 mb-2">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </div>
              <div class="col-sm-4 mb-2">Owner Name</div>
            <div class="col-sm-8 mb-2">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </div>
              <div class="col-sm-4 mb-2">Contact Number</div>
            <div class="col-sm-8 mb-2">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </div>
              <div class="col-sm-4 mb-2">Date</div>
            <div class="col-sm-8 mb-2">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </div>
              <div class="col-sm-4 mb-2">Time</div>
            <div class="col-sm-8 mb-2">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="col-sm-4 mb-2">Amount</div>
            <div class="col-sm-8 mb-2">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </div>
                  
              
                                    
        </div>
    </div>
    <div class="col-sm-4">
        
         <div class="col-sm-4 mb-2">Card Holder Name</div>
            <div class="col-sm-8 mb-2">
                <asp:TextBox  onkeypress="return letters(event)" required ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            
         <div class="col-sm-4 mb-2">Card Number</div>
            <div class="col-sm-8 mb-2">
                <asp:TextBox ClientIDMode="Static"  onkeypress="return card(event)" min="1111111111111111" max="9999999999999999"   required ID="TextBox2" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
            </div>
         <div class="col-sm-4 mb-2">Expiry Month & Year</div>
    <div class="row">
            <div class="col-sm-4 mb-2">
                <asp:DropDownList ID="DropDownList1" CssClass="form-select" runat="server">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
            </div>
        <div class="col-sm-4 mb-2">
                <asp:DropDownList ID="DropDownList2" CssClass="form-select" runat="server">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <asp:Button ID="Button1" CssClass="btn btn-success"  runat="server" Text="Pay" />
    </div>
</asp:Content>

