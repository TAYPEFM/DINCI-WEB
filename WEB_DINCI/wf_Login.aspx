<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="wf_Login.aspx.vb" Inherits="WEB_DINCI.wf_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DINCI | Login</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body class="gray-bg">
    <form id="form1" runat="server">
    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>
                <h1 class="logo-name">
                    LOG</h1>
            </div>
            <h3>
                BIENVENIDO A DINCI</h3>
            <p>
                
            </p>
            <p>
                Loguese.</p>
            <form class="m-t" role="form" action="index.html">
            <div class="form-group">                
                <asp:TextBox CssClass="form-control" placeholder="Usuario" ID="TXT_usuario" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" placeholder="Contraseña" ID="TXT_Contraseña"
                    runat="server"></asp:TextBox>                
            </div>            
                <asp:Button ID="BTN_Acceder" Text="Ingresar" runat=server 
                CssClass="btn btn-primary block full-width m-b" 
                PostBackUrl="~/wf_MantenimientoIncidente.aspx" />          
            </form>
            <p class="m-t">
                <small>DINCI - Divulgacion de incidentes</small>
            </p>
        </div>
    </div>
    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
