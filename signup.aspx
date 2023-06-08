<%@ Page Title="" Language="VB" MasterPageFile="~/home.master" AutoEventWireup="false" CodeFile="signup.aspx.vb" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="row">
       
        <div class="col-sm-6">
            <img  class="img-fluid " src="img/5.jpeg" />
        </div>
        <div class="col-sm-4">
             <div class="col-sm-12">
            <h4>Signup New User</h4>
        </div>
            <div class="row">
            <div class="col-sm-4 mb-2">
                <label class="control-label">
                Name
                </label>
                </div>
            <div class="col-sm-8 mb-2">
                    
                    <asp:TextBox onkeypress="return letters(event)" class="form-control" ID="TextBox1" runat="server" required></asp:TextBox>
                </div>
           
           
            <div class="col-sm-4 mb-2">
                <label class="control-label">
                Place
                </label>
                </div>
            <div class="col-sm-8 mb-2">
                    
                    <asp:TextBox  onkeypress="return letters(event)" class="form-control" ID="TextBox2" runat="server" required></asp:TextBox>
                </div>
            
            <div class="col-sm-4 mb-2">
                <label class="control-label">
                Street
                </label>
               </div>
            <div class="col-sm-8 mb-2">
                    
                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" required></asp:TextBox>
                </div>
           <div class="col-sm-4 mb-2">
                <label class="control-label">
                Pincode
                </label>
               </div>
            <div class="col-sm-8 mb-2">
                    
                    <asp:TextBox ClientIDMode="Static" onkeypress="return pincode(event)" class="form-control" ID="TextBox4" runat="server" required></asp:TextBox>
            </div>
            <div class="col-sm-4 mb-2">
                <label class="control-label">
                Contact No
                </label>
                </div>
            <div class="col-sm-8 mb-2">
                   
                    <asp:TextBox ID="TextBox5" ClientIDMode="Static" onkeypress="return contact(event)"   class="form-control"  runat="server" required></asp:TextBox>
                </div>
            <div class="col-sm-4 mb-2">
                <label class="control-label">
                E-Mail ID
                </label>
                </div>
            <div class="col-sm-8 mb-2 ">
                <div class="input-group">
                    <span class="input-group-text" id="Span3"><i class="fa-solid fa-at"></i></span>
                    <asp:TextBox ID="TextBox6" ClientIDMode="Static" onkeyup="email()"  class="form-control"  runat="server" TextMode="Email"></asp:TextBox>
                </div>
                </div>
            <div class="col-sm-4 mb-2">
                <label class="control-label">
                User Name
                </label>
                </div>
             <div class="col-sm-8 mb-2 ">
                <div class="input-group">
                    <span class="input-group-text" id="Span4"><i class="fa-solid fa-user"></i></span>
                    <asp:TextBox ID="TextBox7"  class="form-control"  runat="server" required></asp:TextBox>
                </div>
                 </div>
           <div class="col-sm-4 mb-2">
                <label class="control-label">
                Password
                </label>
                </div>
            <div class="col-sm-8 mb-2 ">
                <div class="input-group">
                    <span class="input-group-text" id="Span5"><i class="fa-solid fa-key"></i></span>
                    <asp:TextBox ID="TextBox8"  class="form-control"  runat="server" TextMode="Password" required></asp:TextBox>
                </div>
            </div>
            <div class="form-group pt-3">
                <asp:Button ID="Button1" CssClass="btn btn-success shadow-none"  runat="server" Text="Signup" />
            </div>
        </div>
    </div>
</asp:Content>


