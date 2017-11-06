<%@page import="Modelo.ContenidoWeb"%>
<%@page import="Modelo.HRService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>General</title>
        <link href="../../recursos/css/bootstrap.min.css" rel="stylesheet">
        <link href="../../recursos/css/estilo.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="../../recursos/js/bootstrap.min.js"></script>
        <script src="../../recursos/js/estilo.js"></script>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <ul class="nav nav-pills nav-stacked">
                    <li role="presentation"><a href="../index.jsp">Inicio</a></li>
                    <li role="presentation"><a href="../productos.jsp">Productos</a></li>
                    <li role="presentation"><a href="../ventas.jsp">Ventas</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" role="presentation" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Editar Paginas <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="inicio.jsp">Inicio</a></li>
                          <li><a href="nosotros.jsp">Nosotros</a></li>
                          <li><a href="contacto.jsp">Contacto</a></li>
                          <li><a href="#">General</a></li>
                        </ul>
                    </li>
                   <li><a href="../../validacion?accion=logout&pag=pinicio">Cerrar Sesion</a></li>
                </ul>
            </div>
            <div class="col-md-8">
                <div class="panel panel-default">
                    <h2 style="margin-left: 19px;">General <span class="glyphicon glyphicon-wrench"></span></h2>
                    <hr>
                    <div class="row">
                            <% HRService a = new HRService(); String fondo = a.general("colorfondo");
                               HRService c = new HRService(); String tipol = c.general("tipoletra");
                               HRService u = new HRService(); String sizel = u.general("tamanoletra");
                               HRService z = new HRService(); String colorl = z.general("colorletra");
                               HRService qw = new HRService(); String cfmenu = qw.general("colorfmenu");
                               HRService ee = new HRService(); String clmenu = ee.general("colorlmenu");
                               HRService gg = new HRService(); String sizem = gg.general("tamanoletram");
                               if(tipol.equals("Times New Roman")){} else {};
                            %>
                        <form method="POST" action="../../updategeneral">
                            <div class="panel-body">
                                <div class="col-md-6">
                                    <div class="form-group" style="margin-top: -5%;text-align: center;" >
                                        <h3><span class="label label-default">Color de fondo</span></h3>
                                        <input name="colorfondo" type="color"  class="form-control" value="<%=fondo%>" style="width: 20%;margin-left: 39%;"/>
                                    </div>
                                    <div class="form-group" style="margin-top: -1%;text-align: center;" >
                                        <h3><span class="label label-default">Color de letra</span></h3>
                                        <input name="letracolor" type="color"  value="<%=colorl%>" class="form-control" style="width: 20%;margin-left: 39%;"/>
                                    </div>
                                    <div class="form-group" style="margin-top: -1%;text-align: center;" >
                                        <h3><span class="label label-default">Color Fondo Menu</span></h3>
                                        <input name="menufcolor" type="color"  value="<%=cfmenu%>" class="form-control" style="width: 20%;margin-left: 39%;"/>
                                    </div>
                                    <div class="form-group" style="margin-top: -1%;text-align: center;" >
                                        <h3><span class="label label-default">Color Letra Menu</span></h3>
                                        <input name="menulcolor" type="color" value="<%=clmenu%>" class="form-control" style="width: 20%;margin-left: 39%;"/>
                                    </div>                                    
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group" style="margin-top: -5%;text-align: center;" >
                                        <h3><span class="label label-default">Tipo de letra</span></h3>
                                        <select name="tipoletra" class="form-control" value="<%=tipol%>" style="width: 49%;margin-left: 25%;" >
                                            <option value="Times New Roman" <%if(tipol.equals("Times New Roman")){%>selected<%}%>>Times New Roman</option>
                                            <option value="Garamond" <%if(tipol.equals("Garamond")){%>selected<%}%>>Garamond</option>
                                            <option value="Georgia" <%if(tipol.equals("Georgia")){%>selected<%}%>>Georgia</option>
                                            <option value="Trebuchet" <%if(tipol.equals("Trebuchet")){%>selected<%}%>>Trebuchet</option>
                                            <option value="Arial" <%if(tipol.equals("Arial")){%>selected<%}%>>Arial</option>
                                            <option value="Verdana" <%if(tipol.equals("Verdana")){%>selected<%}%>>Verdana</option>
                                            <option value="Courier" <%if(tipol.equals("Courier")){%>selected<%}%>>Courier</option>
                                            <option value="Courier New" <%if(tipol.equals("Courier New")){%>selected<%}%>>Courier New</option>
                                            <option value="Andele Mono" <%if(tipol.equals("Andele Mono")){%>selected<%}%>>Andele Mono</option>
                                            <option value="Viner Hand ITC" <%if(tipol.equals("Viner Hand ITC")){%>selected<%}%>>Viner Hand ITC</option>
                                        </select>
                                    </div>
                                    <div class="form-group" style="margin-top: -1%;text-align: center;" >
                                        <h3><span class="label label-default">Tamaño de letra</span></h3>
                                        <input name="tamanoletra" type="number" value="<%=sizel%>" min="1"  class="form-control" style="width: 20%;margin-left: 39%;"/>
                                    </div>
                                    <div class="form-group" style="margin-top: -1%;text-align: center;" >
                                        <h3><span class="label label-default">Tamaño de letra Menu</span></h3>
                                        <input name="tamanoletram" type="number" value="<%=sizem%>" min="1" class="form-control" style="width: 20%;margin-left: 39%;"/>
                                    </div>                                   
                                </div>  
                                <input type="hidden" name="nompag" value="general">
                                <input type="submit" value="Guardar Cambios" class="btn btn-success" style="margin-left: 81%;margin-top: 8px;">
                            </div>
                        </form>
                    </div>    
                </div>
            </div> 
    </body>
</html>
