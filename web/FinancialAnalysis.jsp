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
            //google.setOnLoadCallback(drawChart);

            // Callback that creates and populates a data table,
            // instantiates the pie chart, passes in the data and
            // draws it.
            function drawChart() {
                // Create the data table.
                var ChartType = document.getElementById('selRepresentationType');
                var ChartTypeSelected = ChartType.options[ChartType.selectedIndex].text;
                var month = document.getElementById('monthlyMonthSelect');
                var monthSelected = month.options[month.selectedIndex].value;
                var monthlyYear = document.getElementById('monthlyYearSelect');
                var monthlyYearSelected = monthlyYear.options[monthlyYear.selectedIndex].text;
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Hotel Location');
                data.addColumn('number', 'Income');
                data.addRows([
                  ['Mushrooms', 3],
                  ['Onions', 1],
                  ['Olives', 1],
                  ['Zucchini', 1],
                  ['Pepperoni', 2]
                ]);
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
            function drawChartforYearly() {
                // Create the data table.
                var ChartType = document.getElementById('selYearlyRepresentationType');
                var ChartTypeSelected = ChartType.options[ChartType.selectedIndex].text;
                var yearlyYear = document.getElementById('YearlyYearSelect');
                var yearlyYearSelected = yearlyYear.options[yearlyYear.selectedIndex].text;
                document.getElementById("lblyear").value = yearlyYearSelected;
                document.getElementById("lblyear").style.display = 'none';
                <%
                    String yearSelected = request.getParameter("selYearlyRepresentationType");
                    Connection conn = null; 
                    Statement stmt = null;
                    ResultSet dataBasedOnSelection = null; 
                    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                    conn = DriverManager.getConnection("jdbc:oracle:thin:@oracle1.cise.ufl.edu:1521:orcl","spratap","oracle2015");
                    stmt = conn.createStatement();
                    if(yearSelected == null)
                    {
                        //getYear = stmt2.executeQuery ("select Max(Extract Year from StartDate) from reservation");
                        yearSelected = "2015";
                    }
                    //yearSelected = yearlyYearSelected;
                    
                    // dynamic query
                    //int numberOfColumns = 2;                        
                    dataBasedOnSelection = stmt.executeQuery ("select r.location, sum(c.amount) as Revenue from reservation r, roomoccupancy ro, charges c where r.reservationid = ro.reservationid and ro.occupancyid = c.occupancyid and c.settled='Y' and r.enddate between '01-JAN-2006' and '31-DEC-2006' GROUP BY Location" );
                    //out.println("Sorry Something Went Wrong");
                    //ResultSet resultset = rset;
                %>
                
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Location');
                data.addColumn('number', 'Revenue');
                alert("<%=yearSelected%>");
                //var Locations[] = null;
                <%  while(dataBasedOnSelection.next()){ %>
                    data.addRow(["<%= dataBasedOnSelection.getString(1)%>",<%= dataBasedOnSelection.getString(2)%>]);
                <% } %>
                
                /*data.addRows([
                    ['Mike',  {v: 10000, f: '$10,000'}],
                    ['Jim',   {v:8000,   f: '$8,000'}],
                    ['Alice', {v: 12500, f: '$12,500'}],
                    ['Bob',   {v: 7000,  f: '$7,000'}]
                  ]);
                */
                // Set chart options
                var options = {'width':500,
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
                monthlyYearSelect = document.getElementById('monthlyYearSelect');
                yearlyYearSelect = document.getElementById('YearlyYearSelect');
                <%
                    
                    //String yearSelected = request.getAttribute("YearlyYearSelect").toString();
                    //Connection conn = null; 
                    Statement stmt1 = null; 
                    ResultSet rset1 = null; 
                    //DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                    //conn = DriverManager.getConnection("jdbc:oracle:thin:@oracle1.cise.ufl.edu:1521:orcl","spratap","oracle2015");
                    stmt1 = conn.createStatement();
                    // dynamic query
                    //int numberOfColumns = 2;                        
                    rset1 = stmt1.executeQuery ("select distinct Extract(Year from StartDate) AS Year from Reservation");
                    //out.println("Sorry Something Went Wrong");
                    //ResultSet resultset = rset;
                %>
                //var Locations[] = null;
                <%  while(rset1.next()){ %>
                    monthlyYearSelect.options[monthlyYearSelect.options.length] = new Option('<%= rset1.getString(1)%>','<%= rset1.getString(1)%>');
                    yearlyYearSelect.options[yearlyYearSelect.options.length] =new Option('<%= rset1.getString(1)%>','<%= rset1.getString(1)%>');
                
                <% } %>
                
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
                <li id="liYearly">
                    <a href="#tab-YearlyAnalysis" data-toggle="tab" onclick="drawChartforYearly()"><span class="glyphicon glyphicon-th-large"></span>
                        <span>Yearly</span>
                    </a>
                </li>
            </ul>
            <div id="content" class="tab-content">
                    <div class="tab-pane active" id="tab-MonthlyAnalysis">
                        <div class="container">
                            <div class="col-xs-12 col-sm-11">
                                <table style="width:100%">
                                    <tr>
                                        <td style="width: 50%">
                                            <label>Select Month: </label>
                                            <select id="monthlyMonthSelect" onchange="drawChart()">
                                                <option value="Jan">January</option>
                                                <option value="Feb">February</option>
                                                <option value="Mar">March</option>
                                                <option value="Apr">April</option>
                                                <option value="May">May</option>
                                                <option value="Jun">June</option>
                                                <option value="Jul">July</option>
                                                <option value="Aug">August</option>
                                                <option value="Sep">September</option>
                                                <option value="Oct">October</option>
                                                <option value="Nov">November</option>
                                                <option value="Dec">December</option>
                                            </select>
                                            <select id="monthlyYearSelect" onchange="drawChart()">
                                            </select>
                                        </td>
                                        <td style="float:right">
                                            <label>Represent Data As: </label>
                                            <select id="selRepresentationType" style="float:right" onchange="drawChart()">
                                                <option value="valPi">Pie-Chart</option>
                                                <option value="valBar">Bar-Graph</option>
                                                <option value="valArea">Area-Chart</option>
                                            </select>
                                            <br>
                                            <input type="Submit" id="btnGenerate" value="Generate Statistics" onclick="drawChart()">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div id="chart_div">
                        </div>
                    </div>
                    <div class="tab-pane" id="tab-YearlyAnalysis">
                        <div class="container">
                            <div class="col-xs-12 col-sm-11">
                                <table style="width:100%">
                                    <tr>
                                        <td style="width: 50%">
                                            <form action="post">
                                                <label>Select Year: </label>
                                                <select id="YearlyYearSelect" name="YearlyYearSelect" onchange="drawChartforYearly()">
                                                </select>
                                                <input action="post" type="hidden" name="lblyear" id="lblyear"/>
                                            </form>
                                        </td>
                                        <td style="float:right">
                                            <label>Represent Data As: </label>
                                            <select id="selYearlyRepresentationType" style="float:right">
                                                <option value="valPie">Pie-Chart</option>
                                                <option value="valBar">Bar-Graph</option>
                                                <option value="valArea">Area-Chart</option>
                                            </select>
                                            <br>
                                            <input type="Submit" id="btnGenerateYearly" value="Generate Statistics" onclick="drawChartforYearly()">
                                        </td>
                                    </tr>
                                </table>
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
