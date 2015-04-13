<%-- 
    Document   : YearlyFinancialAnalysis
    Created on : Apr 12, 2015, 5:07:43 PM
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
        <title>Financial Analysis</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/cutlery.ico">
        <link rel="stylesheet" type="text/css" href="styles/lib/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="styles/lib/bootstrap-theme.css">
        <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/stylesheet" href="styles/style.css">
        <!--Load the AJAX API-->
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">
            google.load('visualization', '1.0', {'packages':['corechart']});
            function drawChartforYearly() {
                // Create the data table.
                var ChartType = document.getElementById('selYearlyRepresentationType');
                var ChartTypeSelected = ChartType.options[ChartType.selectedIndex].text;
                var yearlyYear = document.getElementById('YearlyYearSelect');
                var yearlyYearSelected = yearlyYear.options[yearlyYear.selectedIndex].text;
                document.getElementById("lblyear").value = yearlyYearSelected;
                <%
                    String yearSelected = request.getParameter("lblyear");
                    String ChartTypeSelected = request.getParameter("selYearlyRepresentationType");
                    Connection conn = null; 
                    Statement stmt = null;
                    ResultSet dataBasedOnSelection = null; 
                    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                    conn = DriverManager.getConnection("jdbc:oracle:thin:@oracle1.cise.ufl.edu:1521:orcl","spratap","oracle2015");
                    stmt = conn.createStatement();
                    if(yearSelected == null)
                    {
                        yearSelected = "2015";
                        
                    }                      
                    dataBasedOnSelection = stmt.executeQuery ("select r.location, sum(c.amount) as Revenue from reservation r, roomoccupancy ro, charges c where r.reservationid = ro.reservationid and ro.occupancyid = c.occupancyid and c.settled='Y' and r.enddate between '01-JAN-"+ yearSelected +"' and '31-DEC-"+ yearSelected +"' GROUP BY Location" );
                %>
                
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Location');
                data.addColumn('number', 'Revenue');
                
                <%  while(dataBasedOnSelection.next()){ %>
                    data.addRow(["<%= dataBasedOnSelection.getString(1)%>",<%= dataBasedOnSelection.getString(2)%>]);
                <% } %>
                // Set chart options
                var options = {'title':"Financial Analysis for the Year" + "<%=yearSelected%>",
                               'width':500,
                               'height':500,
                               'left':(screen.width/2)
                              };
                var chart = null;
                if(ChartTypeSelected === "Pie-Chart")
                {
                    chart = new google.visualization.PieChart(document.getElementById('yearlychart_div'));
                }
                else if(ChartTypeSelected === "Bar-Graph")
                {
                    var chart = new google.visualization.BarChart(document.getElementById("yearlychart_div"));
                }
                else if(ChartTypeSelected === "Area-Chart")
                {
                    var chart = new google.visualization.AreaChart(document.getElementById("yearlychart_div"));
                }
                chart.draw(data, options); 
            }
            function pageLoad()
            {
                yearlyYearSelect = document.getElementById('YearlyYearSelect');
                <%
                    Statement stmt1 = null; 
                    ResultSet rset1 = null; stmt1 = conn.createStatement();
                    rset1 = stmt1.executeQuery ("select distinct Extract(Year from StartDate) AS Year from Reservation order by Year desc");
                    while(rset1.next()){ %>
                    yearlyYearSelect.options[yearlyYearSelect.options.length] =new Option('<%= rset1.getString(1)%>','<%= rset1.getString(1)%>');
                <% } %>
                document.getElementById('YearlyYearSelect').value = "<%=yearSelected%>";
                if("<%=ChartTypeSelected%>"=== null)
                {
                    document.getElementById('selYearlyRepresentationType').value = "valPie";
                }
                drawChartforYearly();
            }
            window.onload=pageLoad;
        </script>
    </head>
    <body>
        <div class="container" id="ownerHome">
            <ul class="nav nav-tabs nav-justified" id="tabAnalysis">
                <li class="active" id="liYearly">
                    <a href="#tab-YearlyAnalysis" data-toggle="tab"><span class="glyphicon glyphicon-th-large"></span>
                        <span>Yearly</span>
                    </a>
                </li>
            </ul>
            <div id="content" class="tab-content">
                    <div class="tab-pane-active" id="tab-YearlyAnalysis">
                        <div class="container">
                            <div class="col-xs-12 col-sm-11">
                                <form method="post" action="">
                                    <table style="width:100%">
                                        <tr>
                                            <td style="width: 50%">
                                                    <label>Select Year: </label>
                                                    <select id="YearlyYearSelect" name="YearlyYearSelect">
                                                    </select>
                                                    <input type="hidden" name="lblyear" id="lblyear"/>
                                                    <br>
                                                    <input type="submit" value="Generate Statistics" id="btnGenerateYearly" Name="btnGenerateYearly" onclick="drawChartforYearly()">
                                            </td>
                                            <td style="float:right">
                                                <label>Represent Data As: </label>
                                                <select id="selYearlyRepresentationType" style="float:right" onchange="drawChartforYearly()">
                                                    <option value="valPie">Pie-Chart</option>
                                                    <option value="valBar">Bar-Graph</option>
                                                    <option value="valArea">Area-Chart</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div>
                        <div id="yearlychart_div"></div>
                    </div>
            </div>
        </div>
        <script type="text/javascript" src="scripts/lib/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="scripts/lib/bootstrap.min.js"></script>
        <script type="text/javascript" src="jquery.slidertron-1.0.js"></script>
    </body>
</html>
