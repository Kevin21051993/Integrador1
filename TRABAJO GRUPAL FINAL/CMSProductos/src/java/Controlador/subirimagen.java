/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Conexion;
import Modelo.HRService;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 *
 * @author GRLIMA
 */
@WebServlet(name = "subirimagen", urlPatterns = {"/subirimagen"})	 
public class subirimagen extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        ServletContext servletContext = request.getSession().getServletContext();
        String ruta =  servletContext.getRealPath("");
        String dirUploadFiles = ruta + "\\recursos\\imagenes\\"; 
        out.println(ruta + dirUploadFiles );
        if( ServletFileUpload.isMultipartContent( request ) ){
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload( factory );
        upload.setSizeMax( new Long( getServletContext().getInitParameter( "maxFileSize" ) ).longValue() ); // 1024 x 300 = 307200 bytes = 300 Kb
        List listUploadFiles = null;
        FileItem item = null;

 try{
     listUploadFiles = upload.parseRequest( request );
     Iterator it = listUploadFiles.iterator();
     String nombre = null,id=null,p= null,pag=null;
     while( it.hasNext() ){
         item = ( FileItem ) it.next();
         String n = item.getFieldName();
         out.println(n);
         if( !item.isFormField() ){
             //9. verificamos si el archivo es > 0
             if( item.getSize() > 0 ){
                 // 10. obtener el nombre del archivo
                 nombre   = item.getName();                 
                 // 11. obtener el tipo de archivo
                 // e. .jpg = "image/jpeg", .txt = "text/plain"
                 String tipo     = item.getContentType();
                 // 12. obtener el tamaño del archivo
                 long tamanio    = item.getSize();
                 // 13. obtener la extension
                 String extension = nombre.substring( nombre.lastIndexOf( "." ) );
      
                 out.println( "Nombre: " + nombre + "<br>");
                 out.println( "Tipo: " + tipo + "<br>");
                 out.println( "Extension: " + extension + "<br>");
                 
                 
                
                File file2;
                HRService h = new HRService();
                if(n.equals("txtImagen1")){
                        id = "carrousel1";
                        pag = "index\\";
                       p = h.Imagen(id);
                       String ruta2 = dirUploadFiles + pag + p;
                       file2 = new File(ruta2);
                       file2.delete();   
                }else if(n.equals("txtImagen2")){
                        id = "carrousel2";
                        pag = "index\\";
                       p = h.Imagen(id);
                       String ruta2 = dirUploadFiles + pag + p;
                       file2 = new File(ruta2);
                       file2.delete();               
                }else if(n.equals("txtImagen3")){
                        id = "carrousel3";
                        pag = "index\\";
                       p = h.Imagen(id);
                       String ruta2 = dirUploadFiles + pag + p;
                       file2 = new File(ruta2);
                       file2.delete();               
                }else if(n.equals("nosotros1")){
                        id = "PORTADA";
                        pag = "nosotros\\";
                       p = h.Imagen(id);
                       String ruta2 = dirUploadFiles + pag + p;
                       file2 = new File(ruta2);
                       file2.delete();               
                }else if(n.equals("nosotros2")){
                        id = "FMISION";
                        pag = "nosotros\\";
                       p = h.Imagen(id);
                       String ruta2 = dirUploadFiles + pag + p;
                       file2 = new File(ruta2);
                       file2.delete();               
                }else if(n.equals("nosotros3")){
                        id = "FVISION";
                        pag = "nosotros\\";
                       p = h.Imagen(id);
                       String ruta2 = dirUploadFiles + pag + p;
                       file2 = new File(ruta2);
                       file2.delete();               
                }else if(n.equals("nosotros4")){
                        id = "FUBICANOS";
                        pag = "nosotros\\";
                       p = h.Imagen(id);
                       String ruta2 = dirUploadFiles + pag + p;
                       file2 = new File(ruta2);
                       file2.delete();               
                }else if(n.equals("contacto")){
                        id = "FCONTACTO";
                        pag = "contacto\\";
                       p = h.Imagen(id);
                       String ruta2 = dirUploadFiles + pag + p;
                       file2 = new File(ruta2);
                       file2.delete();               
                }
                
                 
                 File archivo = new File( dirUploadFiles + pag, nombre );
                 // 18. Write the uploaded file to the system
                 item.write( archivo );
                 if ( archivo.exists() ){
                        out.println( "GUARDADO " + archivo.getAbsolutePath() + "</p>");
                 }else{
                     // nunca se llega a ejecutar
                     out.println( "FALLO AL GUARDAR. NO EXISTE " + archivo.getAbsolutePath() + "</p>");
                 }

             }
         }
         
         // Guardar Nombre de Imagen en la Bd
         HRService hr = new HRService();
         hr.subirImagen(nombre, id);
         ////////////////////////////////////
         
         
        // Redireccion //////////////////////
        if(n.equals("txtImagen1") || n.equals("txtImagen2") || n.equals("txtImagen3")){
                response.sendRedirect("Administrador/Paginas/inicio.jsp");  
        }else if(n.equals("nosotros1") || n.equals("nosotros2") || n.equals("nosotros3")  || n.equals("nosotros4")){
                response.sendRedirect("Administrador/Paginas/nosotros.jsp");
        }else if(n.equals("contacto")){
                response.sendRedirect("Administrador/Paginas/contacto.jsp");
        }
               
        }
         
         
     }      catch (Exception ex) {
                Logger.getLogger(subirimagen.class.getName()).log(Level.SEVERE, null, ex);
            }


 }
out.println( "Fin de la operacion! ;)");
out.close();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
