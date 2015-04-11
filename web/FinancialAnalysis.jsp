<%-- 
    Document   : FinancialAnalysis
    Created on : Apr 10, 2015, 11:06:56 PM
    Author     : SampathYadav
--%>

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
            google.setOnLoadCallback(drawChart);

            // Callback that creates and populates a data table,
            // instantiates the pie chart, passes in the data and
            // draws it.
            function drawChart() {
                // Create the data table.
                var ChartType = document.getElementById('selRepresentationType');
                var ChartTypeSelected = ChartType.options[ChartType.selectedIndex].text;
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Topping');
                data.addColumn('number', 'Slices');
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
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Name');
                data.addColumn('number', 'Salary');
                data.addRows([
                    ['Mike',  {v: 10000, f: '$10,000'}],
                    ['Jim',   {v:8000,   f: '$8,000'}],
                    ['Alice', {v: 12500, f: '$12,500'}],
                    ['Bob',   {v: 7000,  f: '$7,000'}]
                  ]);
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
                                            <select>
                                                <option value="Month">January</option>
                                                <option value="Month">February</option>
                                                <option value="Month">March</option>
                                                <option value="Month">April</option>
                                                <option value="Month">May</option>
                                                <option value="Month">June</option>
                                                <option value="Month">July</option>
                                                <option value="Month">August</option>
                                                <option value="Month">September</option>
                                                <option value="Month">October</option>
                                                <option value="Month">November</option>
                                                <option value="Month">December</option>
                                            </select>
                                            <select>
                                                <option value="2013">2013</option>
                                                <option value="2014">2014</option>
                                                <option value="2015">2015</option>
                                            </select>
                                        </td>
                                        <td style="float:right">
                                            <label>Represent Data As: </label>
                                            <select id="selRepresentationType" style="float:right" onchange="drawChart()">
                                                <option value="valPi">Pie-Chart</option>
                                                <option value="valBar">Bar-Graph</option>
                                                <option value="valArea">Area-Chart</option>
                                            </select>
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
                                            <label>Select Year: </label>
                                            <select>
                                                <option value="2013">2013</option>
                                                <option value="2014">2014</option>
                                                <option value="2015">2015</option>
                                            </select>
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
