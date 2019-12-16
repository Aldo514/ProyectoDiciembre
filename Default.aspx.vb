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
        Dim ingrediente0 As String = ing0.Value
        Dim ingrediente1 As String = ing1.Value
        Dim ingrediente2 As String = ing2.Value
        Dim ingrediente3 As String = ing3.Value

        Dim parametros As String = "?ing0=" & ingrediente0 & "&ing1=" & ingrediente1 & "&ing2=" & ingrediente2 & "&ing3=" & ingrediente3
        Dim url As String = "BusquedaReceta.aspx" & parametros
        Dim s As String = "window.open('" & url + "', '_self');"
        ClientScript.RegisterStartupScript(Me.GetType(), "script", s, True)
    End Sub

End Class