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
            function drawChart() {
                // Create the data table.
                var ChartType = document.getElementById('selRepresentationType');
                var ChartTypeSelected = ChartType.options[ChartType.selectedIndex].text;
                var month = document.getElementById('monthlyMonthSelect');
                var monthSelected = month.options[month.selectedIndex].value;
                var monthlyYear = document.getElementById('monthlyYearSelect');
                var monthlyYearSelected = monthlyYear.options[monthlyYear.selectedIndex].text;
                document.getElementById("lblyear").value = monthlyYearSelected;
                document.getElementById("lblMonth").value = monthSelected;
                <%
                    String yearSelected = request.getParameter("lblyear");
                    String monthSelected = request.getParameter("lblMonth");
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
                    if(monthSelected == null)
                    {
                        monthSelected = "January";
                    }
                    dataBasedOnSelection = stmt.executeQuery ("select r.location, sum(c.amount) as Revenue from reservation r, roomoccupancy ro, charges c where r.reservationid = ro.reservationid and ro.occupancyid = c.occupancyid and c.settled='Y' and r.enddate between '01-"+monthSelected+"-"+ yearSelected +"' and '31-"+monthSelected+"-"+ yearSelected +"'Group By Location");
                %>
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Location');
                data.addColumn('number', 'Revenue');
                
                <%  while(dataBasedOnSelection.next()){ %>
                    data.addRow(["<%= dataBasedOnSelection.getString(1)%>",<%= dataBasedOnSelection.getString(2)%>]);
                <% } %>
                // Set chart options
                var options = {'width':500,
                               'height':500};
                var chart = null;
                if(ChartTypeSelected === "Pie-Chart")
                {
                    chart = new google.visualization.PieChart(document.getElementById('chart_div'));
                }
                else if(ChartTypeSelected === "Bar-Graph")
                {
                    var chart = new google.visualization.BarChart(document.getElementById("chart_div"));
                }
                else if(ChartTypeSelected === "Area-Chart")
                {
                    var chart = new google.visualization.AreaChart(document.getElementById("chart_div"));
                }
                chart.draw(data, options); 
            }
            function pageLoad()
            {
                monthlyYearSelect = document.getElementById('monthlyYearSelect');
                <%
                    Statement stmt1 = null; 
                    ResultSet rset1 = null; 
                    stmt1 = conn.createStatement();
                    rset1 = stmt1.executeQuery ("select distinct Extract(Year from StartDate) AS Year from Reservation order by Year desc");
                    while(rset1.next()){ %>
                    monthlyYearSelect.options[monthlyYearSelect.options.length] = new Option('<%= rset1.getString(1)%>','<%= rset1.getString(1)%>');
                
                <% } %>
                document.getElementById('monthlyYearSelect').value = "<%=yearSelected%>";
                document.getElementById('monthlyMonthSelect').value = "<%=monthSelected%>";
                if("<%=ChartTypeSelected%>"=== null)
                {
                    document.getElementById('selYearlyRepresentationType').value = "valPie";
                }
                
                drawChart();
            }
            window.onload=pageLoad;
        </script>
    </head>
    <body>
        <div class="container" id="ownerHome">
            <ul class="nav nav-tabs nav-justified" id="tabAnalysis">
                <li class="active" id="liMonthly">
                    <a href="#tab-MonthlyAnalysis" data-toggle="tab" onclick="drawChart()"><span class="glyphicon glyphicon-calendar"></span>   
                        <span>Monthly</span>
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
                                                <label>Select Month: </label>
                                                <select id="monthlyMonthSelect" name="monthlyMonthSelect">
                                                    <option value="January">January</option>
                                                    <option value="February">February</option>
                                                    <option value="March">March</option>
                                                    <option value="April">April</option>
                                                    <option value="May">May</option>
                                                    <option value="June">June</option>
                                                    <option value="July">July</option>
                                                    <option value="August">August</option>
                                                    <option value="September">September</option>
                                                    <option value="October">October</option>
                                                    <option value="November">November</option>
                                                    <option value="December">December</option>
                                                </select>
                                                <select id="monthlyYearSelect" name="monthlyYearSelect">
                                                </select>
                                                <input type="hidden" name="lblMonth" id="lblMonth"/>
                                                <input type="hidden" name="lblyear" id="lblyear"/>
                                                <br>
                                                <input type="submit" value="Generate Statistics" id="btnGenerateYearly" Name="btnGenerateYearly" onclick="drawChart()">
                                            </td>
                                            <td style="float:right">
                                                <label>Represent Data As: </label>
                                                <select id="selRepresentationType" style="float:right" onchange="drawChart()">
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
