/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Conexion;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author GRLIMA
 */
@WebServlet(name = "nuevoproducto", urlPatterns = {"/nuevoproducto"})
@MultipartConfig(maxFileSize = 16177215)
public class nuevoproducto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        }
    

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
              String nombre = request.getParameter("nom");
              String modelo = request.getParameter("nomm");
              String marca = request.getParameter("nmarca");
              String descripcion = request.getParameter("descripcion");
              String ncat = request.getParameter("ncat");
              String pre = request.getParameter("pre");
              String stock = request.getParameter("stock");
        InputStream inputStream = null; // input stream of the upload file
         PrintWriter out = response.getWriter();
         out.println(ncat + " " + nombre + " " + modelo  + " " + marca  + " "  + descripcion + " " + pre + " " + stock);
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
        
        FileOutputStream fos = new FileOutputStream(dirUploadFiles + nombreimagen);
	int data = 0;
        
        File file2 = new File(dirUploadFiles+nombreimagen);
        
        if (file2.createNewFile()){
	        System.out.println("File is created!");
	}else{
	        System.out.println("File already exists.");
	}
        
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
             cst = conex.prepareCall("CALL NEW_PRODUCTO (?,?,?,?,?,?,?,?)");

//            if (inputStream != null) {
//                // fetches input stream of the upload file for the blob column
//                cst.setBlob(1, inputStream);
//            }
             
             cst.setString(1, nombreimagen);
             cst.setString(2, modelo);
             cst.setString(3, marca);
             cst.setString(4, descripcion);
             cst.setString(5, nombre);
             cst.setString(6, ncat);
             cst.setString(7, pre);
             cst.setString(8, stock); 
             
            // sends the statement to the database server
            int row = cst.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conex != null) {
                // closes the database connection
                try {
                    conex.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
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
