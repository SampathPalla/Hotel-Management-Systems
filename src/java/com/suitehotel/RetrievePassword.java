/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.suitehotel;

import java.io.*;
import java.net.*;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Abhishek Dey
 */
public class RetrievePassword extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@oracle1.cise.ufl.edu:1521:orcl","spratap","oracle2015");
            String loginid = request.getParameter("loginid");
        PreparedStatement ps=cn.prepareStatement("select SecurityQuestion from Login where LoginID=?");
        ps.setString(1, loginid);
        ResultSet r = ps.executeQuery(); 
        String question = "";
           while(r.next()){
                question = r.getString(1);
           }
          HttpSession hs1=request.getSession();
           hs1.setAttribute("question",question);
           response.sendRedirect("forgotpassword2.jsp");
        }
        catch(Exception ex){
        
        }
        finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
    * Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
    * Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
