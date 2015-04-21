<%-- 
    Document   : FinancialAnalysis
    Created on : Apr 10, 2015, 11:06:56 PM
    Author     : SampathYadav
--%>

<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Grant Administrator Privileges</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/cutlery.ico">
        <link rel="stylesheet" type="text/css" href="styles/lib/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="styles/lib/bootstrap-theme.css">
        <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/stylesheet" href="styles/style.css">
        <!--Load the AJAX API-->
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">
            function grantEmpPriv() {
                // Create the data table.
                document.getElementById("lblyear").value = document.getElementById("txtUserID").value;
                <%
                    String yearSelected = request.getParameter("lblyear");
                    if(yearSelected == null)
                    {
                    }
                    else
                    {
                    Connection conn = null; 
                    Statement stmt = null;
                    ResultSet dataBasedOnSelection = null;
                    ResultSet rst1 = null;
                    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                    conn = DriverManager.getConnection("jdbc:oracle:thin:@oracle1.cise.ufl.edu:1521:orcl","spratap","oracle2015");
                    stmt = conn.createStatement();
                    //dataBasedOnSelection = stmt.executeQuery ("update login set UserType='E' where loginid='"+yearSelected+"'");
                    dataBasedOnSelection = stmt.executeQuery ("select * from login where loginid='"+yearSelected+"'");
                    if(dataBasedOnSelection.next())
                    {
                        rst1 = stmt.executeQuery ("update login set UserType='A' where loginid='"+yearSelected+"'");
                    }
                    else
                    {
                        %>alert("Login ID Doesnot Exist");<%
                    }
                    }
                %>
                       
                
            }
            function pageLoad()
            {
                grantEmpPriv();
            }
            window.onload=pageLoad;
        </script>
    </head>
    <body>
        <div class="container" id="ownerHome">
            <ul class="nav nav-tabs nav-justified" id="tabAnalysis">
                <li class="active" id="liMonthly">
                    <a href="#tab-MonthlyAnalysis" data-toggle="tab" onclick="drawChart()"><span class="glyphicon glyphicon-calendar"></span>   
                        <span>Employee Privileges</span>
                    </a>
                </li>
            </ul>
            <div id="content" class="tab-content">
                    <div class="tab-pane active" id="tab-MonthlyAnalysis">
                        <div class="container">
                            <div class="col-xs-12 col-sm-11">
                                <form method="post" action="">
                                    <table style="width:100%">
                                        <tr>
                                            <td style="width: 50%">
                                                <label>Enter User ID: </label>
                                                <input type="text" id="txtUserID" name="txtUserID">
                                                <input type="hidden" name="lblMonth" id="lblMonth"/>
                                                <input type="hidden" name="lblyear" id="lblyear"/>
                                                <br>
                                                <input type="submit" value="Grant Administrator Privilege" id="btnGenerateYearly" Name="btnGenerateYearly" onclick="grantEmpPriv()">
                                            </td>
                                            
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div>
                        <div id="chart_div">
                        </div>
                    </div>
            </div>
        </div>
        <script type="text/javascript" src="scripts/lib/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="scripts/lib/bootstrap.min.js"></script>
        <script type="text/javascript" src="jquery.slidertron-1.0.js"></script>
    </body>
</html>
