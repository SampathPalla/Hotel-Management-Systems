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
public class Checkout extends HttpServlet {
   
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
 PreparedStatement p = cn.prepareStatement("select max(chargeid) from charges");
            ResultSet r = p.executeQuery();
           int chargeid = 123; 
           while(r.next()){
                chargeid = r.getInt(1) + 1;
           }
         int id = Integer.parseInt(request.getParameter("id"));  
         PreparedStatement ps=cn.prepareStatement("update charges set settled=? where occupancyid=?");
   
         ps.setInt(2, 1073);
        ps.setString(1, "Y");
       
         int z=ps.executeUpdate();
               if(z>0)
         {
            
                   response.sendRedirect("checkoutsuccess.jsp");
        }else{
           //  response.sendRedirect("contact.jsp");
               out.println("Sorry Something Went Wrong. Please Try Again Later.");
               out.println("<br><br><a href='welcome.jsp'>Click here to go to your Home Page</a>");
        }
         ps.close();
         cn.close();
        } catch(Exception ex){
         out.print(ex);   
        }finally {
        } 
            out.close();
        }
     

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
