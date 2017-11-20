Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security


Public Class wf_Login
    Inherits System.Web.UI.Page

    Dim conexion As New SqlConnection("data source=.;Integrated Security=SSPI;Initial Catalog=DINCI;")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If (IsPostBack = False) Then

        End If





    End Sub

    Protected Sub BTN_Acceder_Click(ByVal sender As Object, ByVal e As EventArgs) Handles BTN_Acceder.Click
        Try

            If TXT_usuario.Text = "" Or TXT_Contraseña.Text = "" Then

                TXT_usuario.Text = "" : TXT_Contraseña.Text = ""
                Response.Write("<script>alert 'Ingrese datos' </script>")

            Else

                Dim userId As Integer = 0
                Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
                Using con As New SqlConnection(constr)
                    Using cmd As New SqlCommand("Usp_LoginEmployee")
                        cmd.CommandType = CommandType.StoredProcedure
                        cmd.Parameters.AddWithValue("@name_employee", TXT_usuario.Text)
                        cmd.Parameters.AddWithValue("@password_employee", TXT_Contraseña.Text)
                        cmd.Connection = con
                        con.Open()
                        userId = Convert.ToInt32(cmd.ExecuteScalar())
                        con.Close()
                    End Using
                    Select Case userId
                        Case 0
                            Response.Write("<div class=" + "alert alert-warning" + ">Ingrese correctamente sus datos</div>")
                            Exit Select
                        Case -2
                            Response.Write("<div class=" + "alert alert-warning" + ">Ingrese correctamente sus datos</div>")
                            Exit Select
                        Case Else
                            Session("IdEmployee") = userId.ToString(0)
                            Session("name_employee") = userId.ToString(1)
                            Session("area_employee") = userId.ToString(2)
                            Response.Redirect("wf_MantenimientoIncidente.aspx")
                            Exit Select
                    End Select
                End Using

            End If
        Catch ex As Exception

        End Try

    End Sub
End Class