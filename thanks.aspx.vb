
Partial Class thanks
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = Session("oname")
        Label2.Text = Session("cno")
        Label3.Text = "50/-"
    End Sub
End Class
