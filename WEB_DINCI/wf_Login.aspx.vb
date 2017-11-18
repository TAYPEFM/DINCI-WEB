Imports System.Data
Imports System.Data.SqlClient


Public Class wf_Login
    Inherits System.Web.UI.Page


    Dim conexion As New SqlConnection("data source=.;Integrated Security=SSPI;Initial Catalog=DINCI;")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

       


    End Sub

    Protected Sub BTN_Acceder_Click(ByVal sender As Object, ByVal e As EventArgs) Handles BTN_Acceder.Click
        Dim usuario As String = TXT_usuario.Text
        Dim contraseña As String = TXT_Contraseña.Text
        Dim cmd As New SqlCommand("select area_employee,name_employee from employee where name_employee='" + usuario + "' and password_employee='" + contraseña + "' ")
        Dim dr As SqlDataReader

        dr = cmd.ExecuteReader

        If (dr.read) Then

            Response.Write("Entro")
            Response.Redirect("wf_MantenimientoIncidente.aspx")


        End If

        conexion.Open()


    End Sub
End Class