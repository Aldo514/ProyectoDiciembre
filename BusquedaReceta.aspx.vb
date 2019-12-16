Imports System.Data
Imports System.Data.OleDb
Imports System.Security.Cryptography.X509Certificates
Partial Class BusquedaReceta
    Inherits System.Web.UI.Page
    Private conexion As OleDbConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            MostrarReceta(Request.QueryString("ing0").ToString, Request.QueryString("ing1").ToString, Request.QueryString("ing2").ToString, Request.QueryString("ing3").ToString)
        End If

    End Sub
    Protected Sub MostrarReceta(ByRef arg1 As String, ByRef arg2 As String, ByRef arg3 As String, ByRef arg4 As String)
        Conectar()
        Dim ingredientes As String = ""
        Dim titulo As String = ""
        Dim receta As String = ""

        If arg1 = "carne" And arg2 = "cebolla" Then
            ingredientes = "carne"

        ElseIf arg1 = "lechuga" And arg2 = "cebolla" And arg3 = "tomate" And arg4 = "maiz" Then
            ingredientes = "verdura"

        ElseIf arg1 = "arroz" And arg2 = "bacon" And arg3 = "zanahoria" Then
            ingredientes = "arroz"
        End If

        Dim cmd As New OleDbCommand("SELECT Titulo, Receta FROM Recetas WHERE Ingredientes = @ingredientes", conexion)
        cmd.Parameters.AddWithValue("@id", ingredientes)
        Dim dr As OleDbDataReader = cmd.ExecuteReader

        While dr.Read
            titulo = dr!Titulo.ToString
            receta = dr!Receta.ToString
        End While

        CampoTitulo.Text = titulo
        CampoReceta.Text = receta

        dr.Close()
        cmd.Dispose()
        Desconectar()
    End Sub

    Private Sub Conectar()
        Try
            conexion = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("App_data\bd.mdb") & ";Persist Security Info=False;Jet OLEDB:Database Password=prodat00")
            If conexion.State = ConnectionState.Closed Then conexion.Open()
        Catch ex As Exception
            Throw New Exception("No se ha podido conectar a la Base de datos. " + ex.Message)
        End Try
    End Sub
    Private Sub Desconectar()
        Try
            If conexion Is Nothing Then
                If conexion.State <> ConnectionState.Closed Then conexion.Close()
                conexion.Dispose()
                conexion = Nothing
            End If
        Catch ex As Exception
            Throw New Exception("No se ha podido cerrar la Base de datos")
        End Try
    End Sub
End Class
