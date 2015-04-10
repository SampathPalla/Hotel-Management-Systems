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
 * @author VAIO
 */
public class SignUp extends HttpServlet {
   
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
         String usertype = request.getParameter("usertype");
         String password= request.getParameter("pswd");
         String question = request.getParameter("question");
         String answer = request.getParameter("answer");
         int typeid = Integer.parseInt(request.getParameter("typeid"));
         
         

         PreparedStatement ps=cn.prepareStatement("insert into login values(?,?,?,?,?,?)");
         ps.setString(1, loginid);
         ps.setString(2, usertype);
         ps.setString(3, password);
         ps.setString(4, question);
         ps.setString(5, answer);
         ps.setInt(6,typeid);
         int z=ps.executeUpdate();
               if(z>0)
         {
               out.println("Sign-Up Successful. Thank You!");
               
               out.println("<br><br><a href='welcome.jsp'>Click here to go to your Home Page</a>");
        }else{
           //  response.sendRedirect("contact.jsp");
               out.println("Sorry Something Went Wrong. Please Try Again.");
               
               out.println("<br><br><a href='welcome.jsp'>Click here to go to your Home Page</a>");
        }
         ps.close();
         cn.close();

        }  catch(Exception ex){
            out.println(ex);
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
