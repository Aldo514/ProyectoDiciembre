Imports System.Data
Imports System.Data.OleDb
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Text
Imports System.Configuration
Imports System.IO
Imports System.Security.Cryptography.X509Certificates
Imports System.Xml
Imports System.Reflection
Imports System.Net

Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub buscar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles buscar.Click
        Dim x As String = objIng.Value.ToString
        System.Diagnostics.Debug.WriteLine(x)
    End Sub

End Class