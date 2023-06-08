Imports System.Data.SqlClient
Imports System.Data
Partial Class signup
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim s As String
        s = "select * from customer where uname='" & TextBox7.Text & "'"
        Dim cmd1 As New SqlCommand(s, db)
        s = "select * from customer where cno='" & TextBox5.Text & "'"
        Dim r As SqlDataReader = cmd1.ExecuteReader
        Dim cmd3 As New SqlCommand(s, db)
        Dim r2 As SqlDataReader = cmd3.ExecuteReader
        If r.Read Then
            Response.Write("<script LANGUAGE='JavaScript' >alert('Username Already Found')</script>")
        ElseIf r2.Read Then
            Response.Write("<script LANGUAGE='JavaScript' >alert('Contact Already Found')</script>")
        Else
            s = "insert into customer (cname,place,street,pcode,cno,email,uname,pass) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "')"
            Dim cmd As New SqlCommand(s, db)
            cmd.ExecuteNonQuery()
            Response.Redirect("login_user.aspx")
            'Response.Write("<script LANGUAGE='JavaScript' >alert('Signup Successfully')</script>")
        End If
       
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()

    End Sub
End Class
