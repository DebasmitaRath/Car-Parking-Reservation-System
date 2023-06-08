

Imports System.Data.SqlClient
Imports System.Data
Partial Class user_slot_display
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()

        If Page.IsPostBack = False Then

            Dim s As String
            s = "select place from slot group by place"
            Dim cmd As New SqlCommand(s, db)
            Dim r As SqlDataReader = cmd.ExecuteReader
            While r.Read
                DropDownList1.Items.Add(r(0))

            End While
            r.Close()
            s = "select lmark from slot group by lmark"
            Dim cmd1 As New SqlCommand(s, db)
            Dim r1 As SqlDataReader = cmd1.ExecuteReader
            While r1.Read
                DropDownList2.Items.Add(r1(0))

            End While
            r1.Close()
        End If


    End Sub


    Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles Repeater1.ItemCommand
        Dim id As String = e.CommandArgument
        Dim t1 As HiddenField

        Dim s As String
        t1 = e.Item.FindControl("id")
        Select Case e.CommandName


            Case ("slot")
                Session("id") = t1.Value
                Response.Redirect("user_slot_book.aspx")

                

        End Select
        display()
    End Sub
    Public Sub display()

        Dim s As String
        s = "select * from slot where st='N' and place='" & DropDownList1.Text & "' and lmark='" & DropDownList2.Text & "'"
        Dim cmd As New SqlCommand(s, db)
        Dim r As SqlDataReader = cmd.ExecuteReader
        If r.Read Then
            Label1.Visible = False
            Dim adp As New SqlDataAdapter(s, db)
            Dim ds As New DataSet
            'Dim cmd As OleDbCommand

            adp.Fill(ds, "slot")
            Repeater1.DataSource = ds.Tables("slot")
            Repeater1.DataBind()
        Else
            Label1.Visible = True
        End If
       
    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        display()

    End Sub
End Class
