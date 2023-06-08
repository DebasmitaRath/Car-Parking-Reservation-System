<%@ Page Title="" Language="VB" MasterPageFile="~/home.master" AutoEventWireup="false" CodeFile="login_user.aspx.vb" Inherits="login_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="row">
        <div class="col-sm-2">
            <ul class="list-group">
                <li class="list-group-item"><a class="nav-link" href="index.aspx">Home</a> </li>
                <li class="list-group-item"><a class="nav-link" href="login_admin.aspx">Admin</a> </li>
                <li class="list-group-item"><a class="nav-link" href="login_user.aspx">Customer</a> </li>
            </ul>
        </div>
        <div class="col-sm-6">
            <img  class="img-fluid " src="img/3.jpeg" />
        </div>
        <div class="col-sm-4">
         <div class="col-sm-12">
            <h4> Customer Login</h4>
        </div>
        <div class="form-group pt-3">
            <label class="control-label">
            User Name
            </label>
            <div class="input-group">
                <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-user-tie"></i></span>
                <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group pt-3">
            <label class="control-label">
            Password
            </label>
            <div class="input-group">
                <span class="input-group-text" id="Span1"><i class="fa-solid fa-key"></i></span>
                <asp:TextBox ID="TextBox2"  class="form-control"  runat="server" TextMode="password"></asp:TextBox>
            </div>
        </div>
        <div class="form-group pt-3">
            <asp:Button ID="Button1" CssClass="btn btn-success shadow-none"  runat="server" Text="Login" />
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/signup.aspx">Sign Up</asp:LinkButton>
        </div>
    </div>
    </div>
</asp:Content>



