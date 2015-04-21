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
public class CustomerFeedback extends HttpServlet {
   
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

            PreparedStatement p = cn.prepareStatement("select max(feedbackid) from feedback");
            ResultSet r = p.executeQuery();
           int feedbackid = 200; 
           while(r.next()){
                feedbackid = r.getInt(1) + 1;
           }
         int overall = Integer.parseInt(request.getParameter("overall"));
         int roomservice = Integer.parseInt(request.getParameter("roomservice"));
         int housekeeping = Integer.parseInt(request.getParameter("housekeeping"));
         int frontdesk = Integer.parseInt(request.getParameter("frontdesk"));
         int amenities = Integer.parseInt(request.getParameter("amenities"));
         int occupancyid = Integer.parseInt(request.getParameter("occID"));
         
         

         PreparedStatement ps=cn.prepareStatement("insert into feedback values(?,?,?,?,?,?,?)");
         ps.setInt(1,feedbackid);
         ps.setInt(2,overall);
         ps.setInt(3,roomservice);
         ps.setInt(4,housekeeping);
         ps.setInt(5,frontdesk);
         ps.setInt(6,amenities);
         ps.setInt(7,occupancyid);
         int z=ps.executeUpdate();
               if(z>0)
         {
              // out.println("Your Feedback Has Been Submitted Successfully. Thank You!");
              // out.println("<br><br><a href='feedbacksuccessful.jsp'>Click here to go to your Home Page</a>");
                   response.sendRedirect("feedbacksuccessful.jsp");
        }else{
           //  response.sendRedirect("contact.jsp");
               out.println("Sorry Something Went Wrong");
               out.println("<br><br><a href='welcome.jsp'>Click here to go to your Home Page</a>");
        }
         ps.close();
         cn.close();

        }  catch(Exception ex){
           response.sendRedirect("feedbacksuccessful.jsp");
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
