<%@ Page Title="" Language="VB" MasterPageFile="~/customer.master" AutoEventWireup="false" CodeFile="change_password.aspx.vb" Inherits="change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function letters(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122) || charCode == 32 || charCode == 46)
                return true;
            else {
                //alert("Please Enter valid input");
                return false;
            }
        }
        function email() {
            var c, k = 0, at = 0;
            var x = document.getElementById("TextBox9");
            var val = x.value;
            //alert(cno[0]>=6)
            for (i = 0; i < val.length; i++) {
                c = val.charCodeAt(i)
                if (c == 46)
                    k++;
                if (c == 64)
                    at++;
            }
            if (k == 2 || at == 2) {
                alert("Please Enter the Valid Valid E-Mail")
            }

        }
        function contact(evt) {
            var x = document.getElementById("TextBox8");
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
        function pincode(evt) {
            var x = document.getElementById("TextBox7");
            var cno = x.value;
            var charCode = (evt.which) ? evt.which : event.keyCode
            if ((charCode >= 47 && charCode <= 57)) {

                if (cno.length <= 5) {
                    if (cno.length == 1) {
                        if (cno[0] == 6) {


                            //alert("Length " + cno.length)
                            document.getElementById("TextBox5").innerHTML = "";
                            return true;

                        }
                        else {
                            x.value = "";
                            alert("Please Enter the Valid Pincode Number")
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row mt-2 mb-2">
            <div class="col-sm-6">
                <div class="card">
                <div class="row p-2 ">
                    <div class="col-sm-4 mb-2">
                <label class="control-label">
                Name
                </label>
                </div>
            <div class="col-sm-8 mb-2">
                    
                    <asp:TextBox onkeypress="return letters(event)" class="form-control" ID="TextBox4" runat="server" required></asp:TextBox>
                </div>
           
           
            <div class="col-sm-4 mb-2">
                <label class="control-label">
                Place
                </label>
                </div>
            <div class="col-sm-8 mb-2">
                    
                    <asp:TextBox  onkeypress="return letters(event)" class="form-control" ID="TextBox5" runat="server" required></asp:TextBox>
                </div>
            
            <div class="col-sm-4 mb-2">
                <label class="control-label">
                Street
                </label>
               </div>
            <div class="col-sm-8 mb-2">
                    
                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" required></asp:TextBox>
                </div>
           <div class="col-sm-4 mb-2">
                <label class="control-label">
                Pincode
                </label>
               </div>
            <div class="col-sm-8 mb-2">
                    
                    <asp:TextBox ClientIDMode="Static" required onkeypress="return pincode(event)" class="form-control" ID="TextBox7" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-4 mb-2">
                <label class="control-label">
                Contact No
                </label>
                </div>
            <div class="col-sm-8 mb-2">
                   
                    <asp:TextBox ID="TextBox8" required ClientIDMode="Static" onkeypress="return contact(event)"   class="form-control"  runat="server"></asp:TextBox>
                </div>
            <div class="col-sm-4 mb-2">
                <label class="control-label">
                E-Mail ID
                </label>
                </div>
            <div class="col-sm-8 mb-2 ">
                <div class="input-group">
                    <span class="input-group-text" id="Span3"><i class="fa-solid fa-at"></i></span>
                    <asp:TextBox ID="TextBox9" required ClientIDMode="Static" onkeyup="email()"  class="form-control"  runat="server" TextMode="Email"></asp:TextBox>
                </div>
                </div>
                    <div class="col-sm-4 mb-2">
                        User Name
                    </div>
                    <div class="col-sm-8 mb-2">
                        <asp:TextBox ID="TextBox1" required CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
<div class="col-sm-4 mb-2">
                        Password
                    </div>
                    <div class="col-sm-8 mb-2">
                         <asp:TextBox ID="TextBox2" required CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
<div class="col-sm-4 mb-2">
                        Conform Password
                    </div>
                    <div class="col-sm-8 mb-2">
                         <asp:TextBox ID="TextBox3" required CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
<div class="col-sm-4 mb-2">
                        
                    </div>
                    <div class="col-sm-8 mb-2">
                        <asp:Button ID="Button1" CssClass="btn-success btn" runat="server" Text="Change" />
                    </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <img class="img-fluid" src="img/4.jpeg" />
            </div>

        </div>
    </div>
</asp:Content>

