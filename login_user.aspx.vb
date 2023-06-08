Imports System.Data.SqlClient
Partial Class login_user
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim s As String
        s = "select * from customer where uname='" & TextBox1.Text & "' and pass='" & TextBox2.Text & "'"
        Dim cmd As New SqlCommand(s, db)
        Dim r As SqlDataReader = cmd.ExecuteReader
        If r.Read Then
            Session("cid") = r(0)
            Session("uname") = TextBox1.Text

            Response.Redirect("user_slot_display.aspx")
        Else
            Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid Username/Password')</script>")
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()

    End Sub
End Class
