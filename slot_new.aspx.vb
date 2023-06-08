Imports System.Data.SqlClient
Imports System.Data
Partial Class slot_new
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim s As String
        Dim pid As String
        Dim i As Integer
        Dim value As Integer = CInt(Int((999 * Rnd()) + 100))
        pid = "P-" & value
        For i = 1 To Val(TextBox1.Text)
            
            s = "insert into slot (pid,vtype,place,lmark,st) values('" & pid & "','" & DropDownList1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','N')"
            Dim cmd As New SqlCommand(s, db)
            cmd.ExecuteReader()
        Next
        Response.Write("<script LANGUAGE='JavaScript' >alert('Slot Allocated Successfully')</script>")

    End Sub
End Class
