Imports System.Data.SqlClient
Imports System.Data
Partial Class change_password
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim s As String
        s = "update customer set cname='" & TextBox4.Text & "',place='" & TextBox5.Text & "',street='" & TextBox6.Text & "',pcode='" & TextBox7.Text & "',cno='" & TextBox8.Text & "',email='" & TextBox9.Text & "',uname='" & TextBox1.Text & "',pass='" & TextBox3.Text & "' where id=" & Session("cid")
        If TextBox2.Text = TextBox3.Text Then
            Dim cmd As New SqlCommand(s, db)
            cmd.ExecuteNonQuery()
            Response.Write("<script LANGUAGE='JavaScript'>alert('Profile Password Successfully')</script>")
        Else
            Response.Write("<script LANGUAGE='JavaScript'>alert('Password do Not Match')</script>")
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        db.Open()
        If Page.IsPostBack = False Then
            Dim s As String
            s = "select * from customer where id=" & Session("cid")
            Dim cmd As New SqlCommand(s, db)
            Dim r As SqlDataReader = cmd.ExecuteReader
            If r.Read Then
                TextBox4.Text = r(1)
                TextBox5.Text = r(2)
                TextBox6.Text = r(3)
                TextBox7.Text = r(4)
                TextBox8.Text = r(5)
                TextBox9.Text = r(6)
                TextBox1.Text = r(7)
                TextBox2.Text = r(8)
             
            End If
        End If
    End Sub
End Class
