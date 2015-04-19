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
public class CreateProfile extends HttpServlet {
   
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
PreparedStatement p = cn.prepareStatement("select max(guestid) from guest");
            ResultSet r = p.executeQuery();
           int guestid = 200; 
           while(r.next()){
                guestid = r.getInt(1) + 1;
           }
         String  name = request.getParameter("name");
         int phone = 9999999;//Integer.parseInt(request.getParameter("phone"));
         String email = request.getParameter("email");
         String address = request.getParameter("address");
         String city = request.getParameter("city");
         String state = request.getParameter("state");
         String country = request.getParameter("country");
         int zip = Integer.parseInt(request.getParameter("zip"));
         String payment = " ";
         String type = "";
         int loyalty = 1;
         

         PreparedStatement ps=cn.prepareStatement("insert into guest values(?,?,?,?,?,?,?,?,?,?,?,?)");
         ps.setInt(1, guestid);
         ps.setString(2, name);
         ps.setInt(3, phone);
         ps.setString(4, email);
         ps.setString(5, address);
         ps.setString(6, city);
         ps.setString(7, state);
         ps.setString(8, country);
         ps.setInt(9, zip);
         ps.setString(10, payment);
         ps.setString(11, type);
         ps.setInt(12, loyalty);
         int z=ps.executeUpdate();
               if(z>0)
         {
                   out.println("Profile Creation Successful!");
          response.sendRedirect("ProfileWelcome.jsp");
        }else{
           //  response.sendRedirect("contact.jsp");
               out.println("Sorry Something Went Wrong. Please Try Again.");
               
               out.println("<br><br><a href='index.jsp'>Click here to go to your Home Page</a>");
        }
         ps.close();
         cn.close();

        }  catch(Exception ex){
            out.println(ex);
             out.println("<br><br><a href='index.jsp'>Click here to go to your Home Page</a>");
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
