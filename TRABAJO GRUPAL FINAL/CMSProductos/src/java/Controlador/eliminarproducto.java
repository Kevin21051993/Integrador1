/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author GRLIMA
 */
@WebServlet(name = "eliminarproducto", urlPatterns = {"/eliminarproducto"})
public class eliminarproducto extends HttpServlet {

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
         String id = request.getParameter("id");
        String idm = request.getParameter("idm");
         PrintWriter out = response.getWriter();
         out.println(id + " " + idm );
         
                 Conexion cn = new Conexion();
         Connection conex = cn.MySQLConnect();
         CallableStatement cst ;
        try {
            // connects to the database

  
            // constructs SQL statement
             cst = conex.prepareCall("CALL DELETE_PRODUCTO (?,?)");

             cst.setString(1, id);
             cst.setString(2, idm);             
             
            // sends the statement to the database server
            cst.executeUpdate();

        } catch (SQLException ex) {
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
