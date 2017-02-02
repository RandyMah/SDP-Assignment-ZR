Imports System.Data
Partial Class Staff_Manager_Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        If (DropDownList1.SelectedValue = 0) Then
            CheckDropDown()
        Else
            InsertData()

        End If

    End Sub

    Private Sub CheckDropDown()
        Panel1.Visible = True
    End Sub

    Private Sub InsertData()
        Dim con As New OleDb.OleDbConnection

        Dim dbProvider As String
        Dim dbSource As String
        Dim da As New OleDb.OleDbDataAdapter
        Dim ds As New DataSet
        Dim sql As String
        Dim maxRow As Integer
        Dim id As Integer = 0
        dbProvider = "PROVIDER=Microsoft.JET.OLEDB.4.0;"
        dbSource = "Data Source=|DataDirectory|Hote.mdb"
        con.ConnectionString = dbProvider & dbSource
        con.Open()



        sql = "SELECT * FROM RoomDetails"
        da = New OleDb.OleDbDataAdapter(sql, con)
        da.Fill(ds, "RoomD")

        maxRow = ds.Tables("RoomD").Rows.Count


        Dim cb As New OleDb.OleDbCommandBuilder(da)
        Dim dsNewRow As DataRow

        For counter = 0 To maxRow - 1 Step 1
            If (id = vbNull) Then
                id = ds.Tables("RoomD").Rows(counter).Item("RoomID")
                Continue For
            ElseIf (id < ds.Tables("RoomD").Rows(counter).Item("RoomID")) Then
                id = ds.Tables("RoomD").Rows(counter).Item("RoomID")
            End If

        Next

        dsNewRow = ds.Tables("RoomD").NewRow()
        dsNewRow.Item("RoomID") = id + 1
        dsNewRow.Item("Description") = TextBox1.Text
        dsNewRow.Item("RoomType") = DropDownList1.SelectedItem.Text




        ds.Tables("RoomD").Rows.Add(dsNewRow)
        da.Update(ds, "RoomD")

        MsgBox("Room Successfully Added")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Panel1.Visible = False
    End Sub
End Class