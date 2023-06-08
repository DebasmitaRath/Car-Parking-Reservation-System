
Imports System.Data.SqlClient
Imports System.Data
Partial Class slot_report
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()


        display()

    End Sub

    
    Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles Repeater1.ItemCommand
        Dim id As String = e.CommandArgument
        Dim t1 As Label
        Dim s As String
        t1 = e.Item.FindControl("Label1")
        Select Case e.CommandName

            
            Case ("delete")
                Session("id") = t1.Text
                s = "select * from slot where id=" & t1.Text & " and   st='P'"
                'MsgBox(s)
                Dim cmd2 As New SqlCommand(s, db)
                Dim r1 As SqlDataReader = cmd2.ExecuteReader
                If r1.Read Then
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Slot is under Parking')</script>")
                Else
                    s = "delete from slot  where id=" & t1.Text & " and st<>'P'"
                    'MsgBox(s)
                    Dim cmd1 As New SqlCommand(s, db)
                    cmd1.ExecuteNonQuery()

                    Response.Write("<script LANGUAGE='JavaScript'>alert('Slot Deleted Successfully')</script>")
                End If


        End Select
        display()
    End Sub
    Public Sub display()

        Dim adp As New SqlDataAdapter("select * from slot", db)
        Dim ds As New DataSet
        'Dim cmd As OleDbCommand

        adp.Fill(ds, "slot")
        Repeater1.DataSource = ds.Tables("slot")
        Repeater1.DataBind()
    End Sub

   
End Class
