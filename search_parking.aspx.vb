
Imports System.Data.SqlClient
Imports System.Data
Partial Class search_parking
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()



    End Sub
    Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles Repeater1.ItemCommand
        Dim id As String = e.CommandArgument
        Dim t1 As Label
        Dim s As String
        t1 = e.Item.FindControl("Label1")
        Select Case e.CommandName

            Case ("edit")
                Session("id") = t1.Text
                Response.Redirect("table_update.aspx")
            Case ("delete")
                Session("id") = t1.Text
                s = "delete from tmenu where id=" & t1.Text
                Dim cmd As New SqlCommand(s, db)
                cmd.ExecuteNonQuery()
                Response.Write("<script LANGUAGE='JavaScript'>alert('Menu Deleted Successfully')</script>")

        End Select
    End Sub
    Public Sub display()
        Dim s As String
        Dim dt, dt1 As New Date
        Dim k As String
        dt = TextBox1.Text
        dt1 = TextBox2.Text
        ' MsgBox(dt)
        k = Format(TextBox1.Text, "dd-MM-yyyy")
        s = "select * from vregister where dt between '" & dt.ToString("MM-dd-yyyy") & "' and '" & dt1.ToString("MM-dd-yyyy") & "'"

        Dim adp As New SqlDataAdapter(s, db)
        Dim ds As New DataSet
        'Dim cmd As OleDbCommand

        adp.Fill(ds, "vregister")
        Repeater1.DataSource = ds.Tables("vregister")
        Repeater1.DataBind()
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        display()

    End Sub
End Class
