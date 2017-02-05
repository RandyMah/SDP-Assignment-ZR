Imports System.Data
Imports System.Data.OleDb
Partial Class Register_page
    Inherits Page

    Private Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        Dim con As New OleDb.OleDbConnection

        Dim dbProvider As String
        Dim dbSource As String
        Dim da As New OleDb.OleDbDataAdapter
        Dim ds As New DataSet
        Dim sql As String
        Dim maxRow As Integer
        dbProvider = "PROVIDER=Microsoft.JET.OLEDB.4.0;"
        dbSource = "Data Source=|DataDirectory|Hote.mdb"
        con.ConnectionString = dbProvider & dbSource
        con.Open()



        sql = "SELECT * FROM CustomerDetails"
        da = New OleDb.OleDbDataAdapter(sql, con)
        da.Fill(ds, "CusD")

        maxRow = ds.Tables("CusD").Rows.Count


        Dim cb As New OleDb.OleDbCommandBuilder(da)
        Dim dsNewRow As DataRow

        dsNewRow = ds.Tables("CusD").NewRow()

        dsNewRow.Item("Email") = txtEmail.Text
        dsNewRow.Item("Name") = txtName.Text
        dsNewRow.Item("Password") = txtPassword.Text
        dsNewRow.Item("ICNumber") = txtICnumber.Text.ToString
        dsNewRow.Item("Contact") = txtContact.Text
        dsNewRow.Item("Gender") = RadioButtonList1.Text

        ds.Tables("CusD").Rows.Add(dsNewRow)
        cb.QuotePrefix = "["
        cb.QuoteSuffix = "]"
        da.Update(ds, "CusD")

        MsgBox("Customer details added")
    End Sub
End Class
