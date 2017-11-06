/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Conexion;
import Modelo.HRService;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import sun.misc.IOUtils;

/**
 *
 * @author GRLIMA
 */
@WebServlet(name = "updateproducto", urlPatterns = {"/updateproducto"})
@MultipartConfig(maxFileSize = 16177215) 
public class updateproducto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              String id = request.getParameter("id");
              String nombre = request.getParameter("nom");
              String modelo = request.getParameter("nomm");
              String marca = request.getParameter("nommarca");
              String descripcion = request.getParameter("descripcion");
              String idm = request.getParameter("idm");
              String pre = request.getParameter("pre");
              String stock = request.getParameter("stock");
         PrintWriter out = response.getWriter();
         out.println(id + " " + nombre + " " + modelo  + " " + marca  + " "  + descripcion + " " + idm);

            InputStream inputStream = null; // input stream of the upload file
        
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("imagen");
        ServletContext servletContext;
        String ruta;
        String dirUploadFiles = null;
        String nombreimagen = null;
        out.println(filePart + "------" + filePart.getSize() + "<---");
        
        if (filePart.getSize() != 0) {
            // prints out some information for debugging
            servletContext = request.getSession().getServletContext();
            ruta =  servletContext.getRealPath("");
            dirUploadFiles = ruta + "\\recursos\\imagenes\\productos\\"; 
            nombreimagen = null;
            out.println(filePart.getName());
            out.println(filePart.getSize());
            out.println(filePart.getContentType());
            out.println(filePart.getHeaderNames());
            out.println(filePart.getInputStream());
           
            nombreimagen = filePart.getSubmittedFileName();
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();

        }else{
            out.println("error");
        }
        HRService h = new HRService();
        String p,ruta2;
	
        FileOutputStream fos = new FileOutputStream(dirUploadFiles + nombreimagen);
	int data = 0;
        p = h.ImagenPro(id);
        ruta2 = dirUploadFiles + p;
        File file2 = new File(ruta2);
        file2.delete(); 
	while((data = inputStream.read()) != -1) {
            fos.write(data);
	}
	fos.close();
	inputStream.close();
        

        Conexion cn = new Conexion();
         Connection conex = cn.MySQLConnect();
        String message = null;  // message will be sent back to client
         CallableStatement cst ;
        try {
            // connects to the database

  
            // constructs SQL statement
             cst = conex.prepareCall("CALL UPDATE_PRODUCTO (?,?,?,?,?,?,?,?,?)");

            if (filePart != null) {
                cst.setString(1, nombreimagen);
            }else{
                inputStream = null;
                cst.setString(1, nombreimagen);
            }
             cst.setString(2, id);
             cst.setString(3, modelo);
             cst.setString(4, marca);
             cst.setString(5, descripcion);
             cst.setString(6, nombre);
             cst.setString(7, idm); 
             cst.setString(8, pre);
             cst.setString(9, stock);             
             
            // sends the statement to the database server
            int row = cst.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
          
        } finally {
            if (conex != null) {
                // closes the database connection
                try {
                    conex.close();
                } catch (SQLException ex) {
                   out.println("error2");
                }
            }
        }
                response.sendRedirect("Administrador/productos.jsp");
            
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
