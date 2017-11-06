<%@page import="Modelo.*"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%   
   String categoria = request.getParameter("cat");
   if(request.getParameter("cat") == null){
       categoria = "0";
   }else{
       categoria = request.getParameter("cat");
   }
%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Productos</title>
        <link href="../recursos/css/bootstrap.min.css" rel="stylesheet">
        <link href="../recursos/css/estilo.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="../recursos/js/bootstrap.min.js"></script>
        <script src="../recursos/js/estilo.js"></script>
    </head>
    <body>
        <main>
            <section>
                <div class="row" >
                    <div class="col-md-2" >
                        <ul class="nav nav-pills nav-stacked">
                            <li role="presentation"><a href="index.jsp">Inicio</a></li>
                            <li role="presentation"><a href="#">Productos</a></li>
                            <li role="presentation"><a href="ventas.jsp">Ventas</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" role="presentation" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Editar Paginas <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Paginas/inicio.jsp">Inicio</a></li>
                                    <li><a href="Paginas/nosotros.jsp">Nosotros</a></li>
                                    <li><a href="Paginas/contacto.jsp">Contacto</a></li>
                                    <li><a href="Paginas/general.jsp">General</a></li>
                                </ul>
                            </li>
                            <li><a href="../validacion?accion=logout&pag=ventas">Cerrar Sesion</a></li>
                        </ul>
                    </div>
                    <div class="col-md-2" >
                        <h2>Categorias</h2>
                        <div class="list-group">
                        <a href="productos.jsp" class="list-group-item">TODOS</a>
                             <% HRService cl = new HRService(); 
                        for(Modelo.Categoria cat: cl.Categorias()){ %> 
                        <a href="productos.jsp?cat=<%=cat.getId()%>" class="list-group-item"><%=cat.getNom()%></a>
                        <% } %>
                        </div>
                    </div>                     
                     <div class="col-md-8">
                         <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="margin-top: 4px;" >Nuevo Producto <span class="glyphicon glyphicon-plus"></span></button></li>
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
                                  <div class="modal-dialog" role="document" style="    width: 73%;margin-top: -264px;">
                                    <div class="modal-content" id="login">
                                      <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">Registrar Producto</h4>
                                      </div>   
                                      <div class="modal-body">
                                          <form  method="POST" action="../nuevoproducto" enctype="multipart/form-data">
                                                <table>
                                                    <div class="form-group">
                                                    <label for="nom">Nombre</label>
                                                    <p><input type="text" name="nom" ></p>
                                                    </div>
                                                    <div class="form-group">
                                                    <label for="nom">Modelo</label>
                                                    <p><input type="text" name="nomm" ></p>
                                                    </div>
                                                    <div class="form-group">
                                                    <label for="nat">Categoria</label>
                                                    <p><select name="ncat" >
                                                    <%
                                                        HRService kkk = new HRService();
                                                        for(Producto p: kkk.ListaCategorias()){
                                                    %>
                                                    <option name="ncat" value="<%=p.getCategoria()%>" ><%=p.getNom_categoria()%></option>
                                                    <% } %>
                                                    </select></p>
                                                    </div> 

                                                    <div class="form-group">
                                                    <label for="nmarca">Marca</label>
                                                    <p><select name="nmarca" >
                                                    <%
                                                        HRService kk = new HRService();
                                                        for(Producto p: kk.ListaMarcas()){
                                                    %>
                                                    <option name="nmarca" value="<%=p.getId_marca()%>" ><%=p.getNom_marca()%></option>
                                                    <% } %>
                                                    </select></p>
                                                    </div> 
                                                    <div class="form-group">
                                                    <label for="pre">Precio</label>
                                                    <p><input type="text" name="pre" ></p>
                                                    </div>
                                                    <div class="form-group">
                                                    <label for="stock">Stock</label>
                                                    <p><input type="text" name="stock" ></p>
                                                    </div>                                                 
                                                    <div class="form-group">
                                                        <label for="descripcion">Descripcion</label>
                                                    <td><textarea rows="2" name="descripcion" style="margin: 0px; width: 334px; height: 77px;"></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="imagen">Imagen</label>
                                                        <input type="file" name="imagen" size="30" url="">
                                                    </div>
                                                    <button type="submit" class="btn btn-default" style="margin-left: 74%;margin-top:2%;" >Guardar Cambios</button>
                                                </table>
                                            </form> 
                                      </div>
                                    </div>
                                  </div>
                                </div>
                         <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal2" style="margin-top: 4px;" >Nueva Categoria <span class="glyphicon glyphicon-plus"></span></button></li>
                                <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                  <div class="modal-dialog" role="document">
                                    <div class="modal-content" id="login">
                                      <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">Registrar Categoria</h4>
                                      </div>   
                                      <div class="modal-body">
                                          <form  method="POST" action="../nuevacategoria" >
                                                <table>
                                                <div class="form-group">
                                                <label for="nom">Nombre</label>
                                                <p><input type="text" name="nom" ></p>
                                                </div>
                                                <div class="form-group">
                                                <label for="descripcion">Descripcion</label>
                                                <td><textarea rows="2" name="descripcion" style="margin: 0px; width: 205px; height: 77px;"></textarea>
                                                </div>
                                                </table>
                                               <button type="submit" class="btn btn-default" style="margin-left: 56%;margin-top:2%;" >Guardar</button>
                                          </form>
                                      </div>
                                    </div>
                                  </div>
                                </div>                     
                        <div class="table-responsive cart_info" id="cart-container">
                            <table class="table table-hover" style="margin-top: 13px;">
					<thead>
						<tr class="cart_menu">
							<th>Imagen</th>
							<th>Nombre</th>
							<th>Marca</th>
							<th>Categoria</th>
                                                        <th>Descripcion</th>
                                                        <th>Precio</th>
                                                        <th>Stock</th>
                                                        <th></th>
                                                        <th></th>
						</tr>
					</thead>
					<tbody>
                                    <% HRService b = new HRService();
                                        int i = 3;
                                    for(Producto pro: b.Productos(categoria)){ %> 
						<tr>
							<td>
								<img src="../recursos/imagenes/productos/<%=pro.getImagen()%>" alt="..." width="150"  height="200">
							</td>
							<td>
								<p><%= pro.getNom_modelo() %></p>
							</td>
							<td>
                                                                <p><%= pro.getNom_marca() %></p>
							</td>
							<td>
                                                                <p><%= pro.getNom_categoria() %></p>
							</td>
                                                        <td>
                                                                <p><%= pro.getDescripcion() %></p>
							</td>
							<td>
                                                                <p><%= pro.getPrecio() %></p>
							</td>
                                                        <td>
                                                                <p><%= pro.getStock() %></p>
							</td>
                                                                                                                
                                                        <td>
                                                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal<%=i%>" style="margin-top: 4px;" ><span class="glyphicon glyphicon-pencil"></span></button>
                                                                 <div class="modal fade" id="myModal<%=i%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                                  <div class="modal-dialog" role="document">
                                                                    <div class="modal-content">
                                                                      <div class="modal-header">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                                        <h4 class="modal-title" id="myModalLabel">Editar Producto</h4>
                                                                      </div>   
                                                                      <div class="modal-body">
                                                                          <div class="row">
                                                                              <div class="col-md-10">
                                                                                <img class="refixsize" src="../recursos/imagenes/productos/<%=pro.getImagen()%>" >

                                                                                <form  method="POST" action="../updateproducto" enctype="multipart/form-data">
                                                                                  <table>
                                                                                     <div class="form-group">
                                                                                      <label for="nom">Nombre</label>
                                                                                      <p><input type="text" name="nom" value="<%= pro.getNombre()%>" name="nom"></p>
                                                                                    </div>
                                                                                   
                                                                                    <div class="form-group">
                                                                                      <label for="nomm">Modelo</label>
                                                                                      <p><input type="text" value="<%= pro.getNom_modelo() %>" name="nomm"></p>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                      <label for="nomm">Marca</label>
                                                                                          <p><select name="nommarca" >
                                                                                          <%
                                                                                              HRService mn = new HRService();
                                                                                              String mar = pro.getNom_marca();
                                                                                              for(Producto p: mn.ListarMarcas(pro.getCategoria().toString())){
                                                                                                 
                                                                                          %>
                                
                                                                                          <option value="<%=p.getId_marca()%>" <%if(mar.equals(p.getNom_marca())){%>selected<%}%> ><%=p.getNom_marca()%></option>
                                                                                          <% } %>
                                                                                          </select></p>
                                                                                    </div>                                                                                    
                                                                                     <div class="form-group">
                                                                                      <label for="pre">Precio</label>
                                                                                      <p><input type="text" name="pre" value="<%= pro.getPrecio()%>" ></p>
                                                                                    </div>
                                                                                      <div class="form-group">
                                                                                      <label for="stock">Stock</label>
                                                                                      <p><input type="text" name="stock" value="<%= pro.getStock()%>"></p>
                                                                                    </div>                                                                                   
                                                                                    <div class="form-group">
                                                                                      <label for="apm">Categoria</label>
                                                                                      <p><%= pro.getNom_categoria() %></p>
                                                                                    </div> 
                                                                                    <div class="form-group">
                                                                                      <label for="descripcion">Descripcion</label>
                                                                                      <td><textarea rows="2" name="descripcion" style="margin: 0px; width: 334px; height: 77px;"><%= pro.getDescripcion() %></textarea>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                      <label for="imagen">Imagen</label>
                                                                                      <input type="file" name="imagen"  isize="30"  >
                                                                                      <img id="output"/>
                                                                                    </div>
                                                                                    <input type="hidden" value="<%=pro.getId()%>" name="id">
                                                                                    <input type="hidden" value="<%=pro.getId_modelo()%>" name="idm">
                                                                                    <button type="submit" class="btn btn-default" style="margin-left: 74%;margin-top:2%;" >Guardar Cambios</button>
                                                                                </table>
                                                                              </form> 
                                                                              </div>
                                                                                    <div class="col-md-2">
                                                                                    </div>
                                                                                  
                                                                                    <style>
                                                                                        .refixsize{
                                                                                            width:100%;
                                                                                            max-width: 200px;
                                                                                            position: absolute;
                                                                                            right: 2px;
                                                                                            top:0;

                                                                                        }
                                                                                    </style>
                                                                          </div>
                                                                      </div>
                                                                    </div>
                                                                </div> 
                                                                  </div>
                                                        </td>
                                                        <td>
                                                            <a href="../eliminarproducto?id=<%=pro.getId()%>&idm=<%=pro.getId_modelo()%>" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></a>
                                                        </td>                                                        
                                                </tr>
                                                <tr>
                                                </tr>
                                                <% i++; }  %>
					</tbody>                 
                            </table> 
            </div>
        </div>
                </div>    
            </section>
        </main>
    
    </body>

</html>
