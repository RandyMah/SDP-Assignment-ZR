Imports System.Data.OleDb

Partial Class Staff_Manager_Default
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & "Data Source=|DataDirectory|Hote.mdb"
        Dim con As New OleDbConnection(connect)
        Dim query As String = ("SELECT * FROM CheckInOut WHERE CustomerName = '" & TextBox1.Text & "' AND ICNumber = " & TextBox2.Text & " AND RoomID = " & TextBox2.Text & ";")
        Dim cmd As New OleDbCommand(query, con)
        Dim ic As Integer = TextBox2.Text

        con.Open()

        checkout(ic)

    End Sub
    Private Sub checkout(ByVal ic As Integer)
        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & "Data Source=|DataDirectory|Hote.mdb"
        Dim con As New OleDbConnection(connect)
        Dim checkin As Integer = 1
        con.Open()
        Dim query1 As String = ("UPDATE CheckInOut SET Status = 'Checked Out' WHERE ICNumber = @ic")
        Dim cmd1 As New OleDbCommand(query1, con)

        cmd1.Parameters.AddWithValue("ic", ic)
        cmd1.ExecuteNonQuery()
        con.Close()
        MsgBox("Checked Out Successfully")
    End Sub
End Class
