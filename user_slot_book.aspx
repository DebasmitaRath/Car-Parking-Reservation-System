<%@ Page Title="" Language="VB" MasterPageFile="~/customer.master" AutoEventWireup="false" CodeFile="user_slot_book.aspx.vb" Inherits="vechicle_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="assets/validation.js"></script>
    <script>
        function contact(evt) {
            var x = document.getElementById("TextBox4");
            var cno = x.value;
            var charCode = (evt.which) ? evt.which : event.keyCode
            if ((charCode >= 47 && charCode <= 57)) {

                if (cno.length <= 9) {
                    if (cno.length == 1) {
                        if (cno[0] >= 6) {


                            //alert("Length " + cno.length)
                            document.getElementById("TextBox5").innerHTML = "";
                            return true;

                        }
                        else {
                            x.value = "";
                            alert("Please Enter the Valid Contact Number")
                            return false;
                        }
                    }
                    else {

                        return true;
                    }
                }


                else {

                    return false;
                }
            }
            else {

                return false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
       
        <div class="col-sm-6">
            <img  class="img-fluid "  src="img/4327781.jpg" />
        </div>
        <div class="col-sm-6 mt-2">
            <h4 style="text-align:center;">Slot Booking for Vehicle Details </h4>
        <div class="row">
            <div class="col-sm-12 mb-2">

                </div>
            <div class="col-sm-4 mb-2">
			Vehicle Register Number
			</div>
            <div class="col-sm-8 mb-2">
                <asp:TextBox required ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
			</div>
            <div class="col-sm-4 mb-2">
			Vehicle Type
			</div>
            <div class="col-sm-8 mb-2">
                <asp:DropDownList CssClass="form-select" ID="DropDownList1" runat="server">
                    <asp:ListItem>Car</asp:ListItem>
                </asp:DropDownList>
			</div>
            <div class="col-sm-4 mb-2">
			Vehicle Name
			</div>
            <div class="col-sm-8 mb-2">
			<asp:TextBox onkeypress="return letters(event)"   required ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
			</div>
            <div class="col-sm-4 mb-2">
			Owner Name
			</div>
            <div class="col-sm-8 mb-2">
			<asp:TextBox onkeypress="return letters(event)"  required ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
			</div>
            <div class="col-sm-4 mb-2">
			Contact Number
			</div>
            <div class="col-sm-8 mb-2">
			<asp:TextBox required ID="TextBox4" ClientIDMode="Static" onkeypress="return contact(event)"  CssClass="form-control" runat="server"></asp:TextBox>
			</div>
            <div class="col-sm-4 mb-2">
			Date
			</div>
            <div class="col-sm-8 mb-2">
			<asp:TextBox required ID="TextBox5" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
			</div>
            <div class="col-sm-4 mb-2">
			Time
			</div>
            <div class="col-sm-8 mb-2">
			<asp:TextBox  ID="TextBox6" CssClass="form-control" runat="server" required></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="HH:MM (eg 12:00)" ControlToValidate="TextBox6" ForeColor="Red" ValidationExpression="^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$"></asp:RegularExpressionValidator>
			</div>
            <div class="col-sm-4 mb-2">
			
			</div>
            <div class="col-sm-8 mb-2">
                <asp:Button ID="Button1" CssClass="btn-success btn" runat="server" Text="Slot Book" />
			</div>
        </div>
    </div>
    </div>
</asp:Content>

