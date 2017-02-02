Imports System.Data.OleDb
Imports System.Data

Partial Class Staff_Manager_Default
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & "Data Source=|DataDirectory|Hote.mdb"
        Dim con As New OleDbConnection(connect)
        Dim query As String = ("SELECT ReservationID, CustomerID, CustomerName, ICNumber, CheckIn, CheckOut, RoomID FROM Reservation WHERE ReservationID = " & TextBox2.Text & ";")
        Dim query1 As String = ("SELECT ReservationID FROM CheckInOut")
        Dim cmd As New OleDbCommand(query, con)
        Dim cmd1 As New OleDbCommand(query1, con)
        Dim booking As Integer
        Dim result As Boolean = False
        Dim reserve As String
        Dim id As String
        Dim name As String
        Dim ic As String
        Dim cin As Date
        Dim cout As Date
        Dim room As String

        con.Open()

        booking = TextBox2.Text

        Dim ranum As New Random
        Dim value As Integer

        value = ranum.Next(10000, 100000)



        Dim dr As OleDbDataReader = cmd1.ExecuteReader
        While dr.Read
            If dr.Item("ReservationID") = booking Then
                MsgBox("Already Checked In")
            End If
        End While

        Dim rd As OleDbDataReader = cmd.ExecuteReader
            While rd.Read
                reserve = rd.Item("ReservationID")
                id = rd.Item("CustomerID")
                name = rd.Item("CustomerName")
                ic = rd.Item("ICNumber")
                cin = rd.Item("CheckIn").ToString
                cout = rd.Item("CheckOut").ToString
                room = rd.Item("RoomID")
                If rd.Item("ReservationID") = reserve And rd.Item("CustomerName") = TextBox1.Text And rd.Item("ICNumber") = TextBox3.Text Then
                    Checkin(value, cin, cout, id, room, reserve, name, ic)
                    result = True
                Else
                    MsgBox("Check Details")
                    result = False
                End If
            End While


        If result = True Then
            MsgBox("Checked In")
        Else
            MsgBox("Check Booking ID")
        End If
    End Sub
    Private Sub Checkin(ByVal value As String, cin As Date, ByVal cout As Date, ByVal id As Integer, ByVal room As Integer, ByVal reserve As Integer, ByVal name As String, ByVal ic As Integer)

        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & "Data Source=|DataDirectory|Hote.mdb"
        Dim con As New OleDbConnection(connect)
        Dim check As String = ("Checked In")
        con.Open()
        Dim query As String = ("INSERT INTO CheckInOut (CheckInOutID , CheckIn, CheckOut, CustomerID, RoomID, ReservationID, CustomerName, ICNumber, Status) VALUES (@value,@cin, @cout, @id, @room, @reserve, @name, @ic, @check)")
        Dim cmd As New OleDbCommand(query, con)

        cmd.Parameters.AddWithValue("value", value)
        cmd.Parameters.AddWithValue("cin", cin)
        cmd.Parameters.AddWithValue("cout", cout)
        cmd.Parameters.AddWithValue("id", id)
        cmd.Parameters.AddWithValue("room", room)
        cmd.Parameters.AddWithValue("reserve", reserve)
        cmd.Parameters.AddWithValue("name", name)
        cmd.Parameters.AddWithValue("ic", ic)
        cmd.Parameters.AddWithValue("check", check)
        cmd.ExecuteNonQuery()
        con.Close()

    End Sub

End Class
