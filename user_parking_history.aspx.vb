
Imports System.Data.SqlClient
Imports System.Data
Partial Class user_parking_history
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()


        display()

    End Sub


    Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles Repeater1.ItemCommand
        Dim id As String = e.CommandArgument
        Dim t1, t2 As Label

        Dim s As String
        t1 = e.Item.FindControl("Label1")
        t2 = e.Item.FindControl("Label3")
        Dim tm As String
        tm = Date.Now.ToString("hh:mm:ss")
        Select Case e.CommandName


            Case ("delete")
                Session("id") = t1.Text
                s = "update vregister set pid='0',tm1='" & tm & "' where id=" & t1.Text
                Dim cmd As New SqlCommand(s, db)
                cmd.ExecuteNonQuery()

                s = "update slot set st='N' where id=" & t2.Text
                Dim cmd1 As New SqlCommand(s, db)
                cmd1.ExecuteNonQuery()

                Response.Write("<script LANGUAGE='JavaScript'>alert('Slot Unparking Successfully')</script>")

        End Select
        display()
    End Sub
    Public Sub display()

        Dim adp As New SqlDataAdapter("select * from vregister where pid='0' and uid='" & Session("cid") & "'", db)
        Dim ds As New DataSet
        'Dim cmd As OleDbCommand

        adp.Fill(ds, "vregister")
        Repeater1.DataSource = ds.Tables("vregister")
        Repeater1.DataBind()
    End Sub


End Class
