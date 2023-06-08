Imports System.Data.SqlClient
Imports System.Data
Partial Class index
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()
        If Page.IsPostBack = False Then


            Dim adp As New SqlDataAdapter("select * from slot", db)
            Dim ds As New DataSet
            'Dim cmd As OleDbCommand

            adp.Fill(ds, "slot")
            'Repeater1.DataSource = ds.Tables("slot")
            'Repeater1.DataBind()
        End If
    End Sub
End Class
