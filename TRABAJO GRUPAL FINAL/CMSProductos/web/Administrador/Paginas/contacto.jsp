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
        <title>Editar Contacto</title>
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
                          <li><a href="#">Contacto</a></li>
                          <li><a href="general.jsp">General</a></li>
                        </ul>
                    </li>
                   <li><a href="../../validacion?accion=logout&pag=pinicio">Cerrar Sesion</a></li>
                </ul>
            </div>
            <div class="col-md-8">
                    <form action="../../subirimagen" method="POST" enctype="multipart/form-data">
                    <table>
                        <tr>
                                <label>Imagen Contactanos</label>
                            <td>
                                <input type="file" name="contacto" size="30" >
                            </td>
                            <br>
                            <td>      
                                <input type="submit" class="btn btn-primary" value="Guardar" style="margin-left: 22px;">
                            </td>
                        </tr>
                    </table>
                </form>   
            </div>
    </body>
</html>
