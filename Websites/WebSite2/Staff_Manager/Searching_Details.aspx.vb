Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration
Partial Class Staff_Manager_Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim fname As String = TextBox1.Text
        Dim ic As Integer = TextBox2.Text

        search(ic)
    End Sub
    Private Sub search(ByVal ic As Integer)
        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & "Data Source=|DataDirectory|Hote.mdb"
        Dim con As New OleDbConnection(connect)
        Dim da As New OleDbDataAdapter("SELECT * FROM Search WHERE ICNumber = " & ic & "", con)
        Dim dt As New DataTable()
        da.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub

End Class
