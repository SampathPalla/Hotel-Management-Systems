/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.suitehotel;

import java.io.*;
import java.net.*;
import java.util.Date;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.*;
import javax.servlet.http.*;
/**
 *
 * @author VAIO
 */
public class Reserve extends HttpServlet {
   
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

           
           
         PreparedStatement p2 = cn.prepareStatement("select max(guestid) from guest");
            ResultSet r2 = p2.executeQuery();
           int guestid2 = 200; 
           while(r2.next()){
                guestid2 = r2.getInt(1) + 1;
           }
           
          
             //  out.println("Reservation Completed Successfully. Thank You!");               
             //  out.println("<br><br><a href='reservationsuccesful.jsp'>Click here to go to your Home Page</a>");
               //     ps.setInt(7,guestid);
         String  name = request.getParameter("name");
         int phone = Integer.parseInt(request.getParameter("phone"));
         String email = request.getParameter("email");
         String address = request.getParameter("address");
         String city = " ";
         String state = " ";
         String country = " ";
         int zip = 31235;
         String payment = " ";
         String type = "";
         int loyalty = 1;
            
         PreparedStatement ps2=cn.prepareStatement("insert into guest values(?,?,?,?,?,?,?,?,?,?,?,?)");
         ps2.setInt(1, guestid2);
         ps2.setString(2, name);
         ps2.setInt(3, phone);
         ps2.setString(4, email);
         ps2.setString(5, address);
         ps2.setString(6, city);
         ps2.setString(7, state);
         ps2.setString(8, country);
         ps2.setInt(9, zip);
         ps2.setString(10, payment);
         ps2.setString(11, type);
         ps2.setInt(12, loyalty);
         int a = ps2.executeUpdate();
         if(a > 0){
             
            PreparedStatement p = cn.prepareStatement("select max(reservationid) from reservation");
            ResultSet r = p.executeQuery();
           int id = 200; 
           while(r.next()){
                id = r.getInt(1) + 1;
           }
           
           HttpSession hs1=request.getSession();
           hs1.setAttribute("reservationid", id);
          
           int roomnum = Integer.parseInt(request.getParameter("roomnum"));
         String roomtype = request.getParameter("roomtype");
         String location = request.getParameter("location");
         DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
         Date fromDate = format.parse(request.getParameter("fromDate"));
         Date toDate = format.parse(request.getParameter("toDate"));
         int guestid =200;
       /* PreparedStatement p2 = cn.prepareStatement("select max(guestid) from guest");
            ResultSet r2 = p2.executeQuery();
           int guestid = 200; 
           while(r2.next()){
                guestid = r.getInt(1) + 1;
           }
         */  
         PreparedStatement ps=cn.prepareStatement("insert into reservation values(?,?,?,?,?,?,?)");
         ps.setInt(1,id);
         ps.setInt(2,roomnum);
        // ps.setDate(3, new java.sql.Date(Calendar.getInstance().getTime().getTime()));
         //ps.setDate(4, new java.sql.Date(Calendar.getInstance().getTime().getTime()));
         ps.setDate(3, new java.sql.Date(fromDate.getTime()));
         ps.setDate(4, new java.sql.Date(toDate.getTime()));
         ps.setString(5,roomtype);
         ps.setString(6,location);
         ps.setInt(7,guestid2);
         
         
           
         
         int z=ps.executeUpdate();
               if(z>0)
         {
          
                   response.sendRedirect("reservationsuccess.jsp");   
             
         }
         else{
             out.println("Sorry Something Went Wrong. Please Try Again Later.");
               out.println("<br><br><a href='welcome.jsp'>Click here to go to your Home Page</a>");
         }
         
             
        }else{
           //  response.sendRedirect("contact.jsp");
               out.println("Sorry Something Went Wrong. Please Try Again Later.");
               out.println("<br><br><a href='welcome.jsp'>Click here to go to your Home Page</a>");
        }
         ps2.close();
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
