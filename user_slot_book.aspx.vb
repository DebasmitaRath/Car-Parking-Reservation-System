Imports System.Data.SqlClient
Imports System.Data
Partial Class vechicle_register
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConString").ConnectionString
    Dim db As New SqlConnection(connectionString)
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        db.Open()
        If Page.IsPostBack = False Then

            TextBox5.Text = Date.Now.ToString("MM-dd-yyyy")
            TextBox6.Text = Date.Now.ToString("hh:mm")
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim s As String
        s = "insert into vregister (rno,vtype,vname,oname,cno,dt,tm,pid,uid) values('" & TextBox1.Text & "','" & DropDownList1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & Session("id") & "','" & Session("cid") & "')"
        Dim cmd As New SqlCommand(s, db)
        cmd.ExecuteNonQuery()
        Session("rno") = TextBox1.Text
        Session("vtype") = DropDownList1.Text()
        Session("vname") = TextBox2.Text
        Session("oname") = TextBox3.Text
        Session("cno") = TextBox4.Text
        Session("dt") = TextBox5.Text
        Session("tm") = TextBox6.Text
        s = "update slot set st='P' where id=" & Session("id")
        Dim cmd1 As New SqlCommand(s, db)
        cmd1.ExecuteNonQuery()
        Response.Redirect("parking_bill.aspx")
    End Sub
End Class
