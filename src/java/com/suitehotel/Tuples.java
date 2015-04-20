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
public class Tuples extends HttpServlet {
   
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

            PreparedStatement p = cn.prepareStatement("select count(*) from feedback");
            ResultSet r = p.executeQuery();
           int count = 0; 
           while(r.next()){
                count += r.getInt(1);
           }
           
           p = cn.prepareStatement("select count(*) from guest");
           r = p.executeQuery();
           while(r.next()){   count += r.getInt(1);     }
           
            p = cn.prepareStatement("select count(*) from reservation");
           r = p.executeQuery();
           while(r.next()){   count += r.getInt(1);     }
           
            p = cn.prepareStatement("select count(*) from hotel");
           r = p.executeQuery();
           while(r.next()){   count += r.getInt(1);     }
           
            p = cn.prepareStatement("select count(*) from room");
           r = p.executeQuery();
           while(r.next()){   count += r.getInt(1);     }
           
            p = cn.prepareStatement("select count(*) from roomtype");
           r = p.executeQuery();
           while(r.next()){   count += r.getInt(1);     }
           
            p = cn.prepareStatement("select count(*) from roomoccupancy");
           r = p.executeQuery();
           while(r.next()){   count += r.getInt(1);     }
           
            p = cn.prepareStatement("select count(*) from feedback");
           r = p.executeQuery();
           while(r.next()){   count += r.getInt(1);     }
           
             p = cn.prepareStatement("select count(*) from employee");
           r = p.executeQuery();
           while(r.next()){   count += r.getInt(1);     }
           
             p = cn.prepareStatement("select count(*) from charges");
           r = p.executeQuery();
           while(r.next()){   count += r.getInt(1);     }
           
             p = cn.prepareStatement("select count(*) from payment");
           r = p.executeQuery();
           while(r.next()){   count += r.getInt(1);     }
           
             p = cn.prepareStatement("select count(*) from login");
           r = p.executeQuery();
           while(r.next()){   count += r.getInt(1);     }
           
           HttpSession hs1=request.getSession();
            hs1.setAttribute("tuples", count);
            
            response.sendRedirect("index3" +
                    ".jsp");
        }
        catch(Exception ex){
            out.print(ex);
        }finally {
        } 
            out.close();
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
