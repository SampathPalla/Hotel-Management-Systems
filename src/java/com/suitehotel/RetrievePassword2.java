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
public class RetrievePassword2 extends HttpServlet {
   
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
            String answer = request.getParameter("answer");
            String pswd = request.getParameter("pswd");
        PreparedStatement ps=cn.prepareStatement("select SecurityAnswer from Login where LoginID=?");
        ps.setString(1, loginid);
        ResultSet r = ps.executeQuery(); 
        String question = "";
           while(r.next()){
                question = r.getString(1);
                if(question.equals(answer)){
                  PreparedStatement p=cn.prepareStatement("update Login set Password=? where LoginID=?");  
                  p.setString(1, pswd);
                  p.setString(2, loginid);
                  int z=p.executeUpdate();
               if(z>0){
                response.sendRedirect("login2.jsp");   
               }
               else{
                        out.println("Sorry Something Went Wrong. Please Try Again Later.");
               out.println("<br><br><a href='welcome.jsp'>Click here to go to your Home Page</a>");
               }
               }
         {
                }
           }
          HttpSession hs1=request.getSession();
           hs1.setAttribute("question",question);
           response.sendRedirect("forgotpassword2.jsp");
            
            
        }
        catch(Exception ex){
               out.println(ex);
        }
        finally {
        } 
            out.close();
        }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    } 
 
