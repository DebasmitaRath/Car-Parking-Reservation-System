
Partial Class login_admin
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text = "admin" And TextBox2.Text = "admin" Then
            Response.Redirect("slot_report.aspx")
        Else
            Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid Username/Password')</script>")
        End If
    End Sub
End Class
