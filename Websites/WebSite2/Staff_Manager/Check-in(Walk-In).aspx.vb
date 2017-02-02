Imports System.Data.OleDb
Imports System.Data
Partial Class Staff_Manager_Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim name As String
        Dim ic As Integer
        Dim suite As String
        Dim cin As Date = Calendar1.TodaysDate
        Dim cout As Date = Calendar1.SelectedDate
        Dim ranum As New Random
        Dim value As Integer

        value = ranum.Next(10000, 100000)

        name = TextBox1.Text
        ic = TextBox2.Text
        suite = DropDownList1.SelectedValue

        checkin(value, cin, cout, suite, name, ic)
    End Sub
    Private Sub checkin(ByVal value As String, ByVal cin As String, ByVal cout As String, ByVal suite As String, ByVal name As String, ByVal ic As String)
        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & "Data Source=|DataDirectory|Hote.mdb"
        Dim query As String = ("INSERT INTO CheckInOut (CheckInOutID , CheckIn, CheckOut, CustomerID, RoomID, ReservationID, CustomerName, ICNumber, Status) VALUES ( @value, @cin, @cout, NULL, @suite, NULL, @name, @ic, 'Checked In')")
        Dim con As New OleDbConnection(connect)
        Dim cmd As New OleDbCommand(query, con)

        con.Open()

        cmd.Parameters.AddWithValue("value", value)
        cmd.Parameters.AddWithValue("cin", cin)
        cmd.Parameters.AddWithValue("cout", cout)
        cmd.Parameters.AddWithValue("suite", suite)
        cmd.Parameters.AddWithValue("name", name)
        cmd.Parameters.AddWithValue("ic", ic)

        cmd.ExecuteNonQuery()

        con.Close()


    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        DropDownList1.DataSource = getData()
        DropDownList1.DataTextField = "RoomType"
        DropDownList1.DataValueField = "RoomID"
        DropDownList1.SelectedValue = Request.QueryString("r")
        DropDownList1.DataBind()
        TextBox3.Text = Calendar1.TodaysDate

    End Sub
    Private Function getData() As DataTable
        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & "Data Source=|DataDirectory|Hote.mdb"
        Dim con As New OleDbConnection(connect)
        con.Open()

        Dim query As New OleDbDataAdapter("SELECT * FROM RoomDetails", con)
        Dim dt As New DataTable
        query.Fill(dt)

        Return dt
    End Function
End Class
