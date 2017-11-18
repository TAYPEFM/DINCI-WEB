<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="wf_EvaluarIncidente.aspx.vb"
    Inherits="WEB_DINCI.wf_EvaluarIncidente" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DINCI | Evaluar Incidentes</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <body>
        <form id="form1" runat="server">
        <div id="wrapper">
            <nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="img/profile_small.jpg" />
                             </span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>                    
                </div>
                <div class="logo-element">
                    dinci
                </div>
            </li>
            <li>
                <a href="wf_MantenimientoIncidente.aspx"><i class="fa fa-th-large"></i> <span class="nav-label">Listado Incidentes</span> <span class="fa arrow"></span></a>                
            </li> 
            <li>
                <a href="wf_EstadoIncidente.aspx"><i class="fa fa-th-large"></i> <span class="nav-label">Estado Incidentes</span> <span class="fa arrow"></span></a>
            </li>                              
        </ul>

    </div>
</nav>
            <div id="page-wrapper" class="gray-bg">
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">       
        <ul class="nav navbar-top-links navbar-right">
            <li>
                <span class="m-r-sm text-muted welcome-message">Bienvenido a DINCI  .</span>
            </li>
           
           <li>
                <a href="wf_Login.aspx">
                    <i class="fa fa-sign-out"></i> Salir
                </a>
            </li>
        </ul>

    </nav>
                </div>
                <div class="row wrapper border-bottom white-bg page-heading">
                    <div class="col-lg-10">
                        <h2>
                            Evaluar de Incidentes</h2>
                    </div>
                    <div class="col-lg-2">
                    </div>
                </div>
                <div class="wrapper wrapper-content animated fadeInRight">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <asp:Button ID="TXT_EVALUAR" Text="EVALUAR" runat="server" CssClass="btn btn-primary" />
                                    <asp:Button ID="TXT_ANULAR" Text="ANULAR" runat="server" CssClass="btn btn-default" />
                                    <p>
                                    </p>
                                </div>
                                <!-- tabla de listado -->
                                <div class="ibox-content">
                                    <asp:GridView ID="GV_ListadoIncidentes" runat="server">
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer">
                    <div class="pull-right">
                        <strong></strong>
                    </div>
                    <div>
                        <strong>Copyright</strong> DINCI company &copy; 2017
                    </div>
                </div>
            </div>
        </div>
        <!-- Mainly scripts -->
        <script src="js/jquery-2.1.1.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/plugins/metisMenu/jquery.metisMenu.js" type="text/javascript"></script>
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <!-- Custom and plugin javascript -->
        <script src="js/inspinia.js" type="text/javascript"></script>
        <script src="js/plugins/pace/pace.min.js" type="text/javascript"></script>
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {


            });
        </script>
        </form>
    </body>
</html>
