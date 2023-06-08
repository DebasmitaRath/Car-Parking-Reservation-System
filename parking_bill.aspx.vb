
Partial Class parking_bill
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then

            Dim y As Integer
            Label1.Text = Session("rno")
            Label2.Text = Session("vtype")
            Label3.Text = Session("vname")
            Label4.Text = Session("oname")
            Label5.Text = Session("cno")
            Label6.Text = Session("dt")
            Label7.Text = Session("tm")
            Label8.Text = "50/-"

            y = DateTime.Now.ToString("yyyy")

            DropDownList1.Items.Add("JAN")
            DropDownList1.Items.Add("FEB")
            DropDownList1.Items.Add("MAR")
            DropDownList1.Items.Add("APRIL")
            DropDownList1.Items.Add("MAY")
            DropDownList1.Items.Add("JUN")
            DropDownList1.Items.Add("JULY")
            DropDownList1.Items.Add("AUG")
            DropDownList1.Items.Add("SEPT")
            DropDownList1.Items.Add("OCT")
            DropDownList1.Items.Add("NOV")
            DropDownList1.Items.Add("DEC")

            For i = y + 1 To y + 10
                DropDownList2.Items.Add(i)
            Next

        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("thanks.aspx")

    End Sub
End Class
