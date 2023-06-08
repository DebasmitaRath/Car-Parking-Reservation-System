<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="slot_new.aspx.vb" Inherits="slot_new" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="assets/validation.js"></script>
    <script>
        function numbers1(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode
            if ((charCode >= 47 && charCode <= 57)) {
                return true;
            }
            else {

                return false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
              <div class="card mb-12">
            <div class="card-header"><strong>Add New Slot</strong></div>
                  <div class="container">
                 <div class="row mt-2">
    <div class="col-sm-6">
        <div class="row">
            <div class="col-sm-4 mb-2">
			No of Slot
			</div>
            <div class="col-sm-8 mb-2">
                <asp:TextBox onkeypress="return numbers1(event)" ClientIDMode="Static" ID="TextBox1" required CssClass="form-control" runat="server"></asp:TextBox>
			</div>
            <div class="col-sm-4 mb-2">
			Vehicle Category
			</div>
            <div class="col-sm-8 mb-2">
                <asp:DropDownList  CssClass="form-select" ID="DropDownList1" runat="server">
                    <asp:ListItem>Car</asp:ListItem>
                </asp:DropDownList>
			</div>
            <div class="col-sm-4 mb-2">
			Parking Place
			</div>
            <div class="col-sm-8 mb-2">
                <asp:TextBox ID="TextBox2" onkeypress="return letters(event)" required CssClass="form-control" runat="server"></asp:TextBox>
			</div>
            <div class="col-sm-4 mb-2">
			Landmark
			</div>
            <div class="col-sm-8 mb-2">
			<asp:TextBox ID="TextBox3" onkeypress="return letters(event)" required CssClass="form-control" runat="server"></asp:TextBox>
			</div>
            
            <div class="col-sm-4 mb-2">
			
			</div>
            <div class="col-sm-8 mb-2">
                <asp:Button ID="Button1"  runat="server" CssClass="btn-success btn" Text="Update" />
			</div>
            
        </div>
    </div>
    <div class="col-sm-6">
        <img class="img-fluid" src="img/1.jpeg" />
	</div>
    
</div>
                     </div> 
                  </div>
</asp:Content>


