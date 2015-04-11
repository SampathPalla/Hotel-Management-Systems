<%-- 
    Document   : ownerHome
    Created on : 29 Mar, 2015, 2:39:21 AM
    Author     : VAIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Suite Hotel</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/cutlery.ico">
        <link rel="stylesheet" type="text/css" href="styles/lib/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="styles/lib/bootstrap-theme.css">
        <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/stylesheet" href="styles/style.css">
    </head>

    <body>
        <header>
            <nav class="navbar navbar-default navbar-inverse" role="navigation">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                          <span class="sr-only">Toggle navigation</span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-cutlery"></span>   Suite Hotel </a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="welcome.jsp">Home</a></li>
                            <li><a href="#">Admin</a></li>
                        </ul>
                     </div>
                </div>
            </nav>

        </header>

        <section>
            <div class="container" id="ownerHome">
                <ul class="nav nav-tabs nav-justified">
                    <li class="active">
                        <a href="#tab-status" data-toggle="tab"><span class="glyphicon glyphicon-calendar"></span>   
                            <span class="tab-text">Occupancy Analysis</span>
                        </a>
                    </li>
                    <li>
                        <a href="#tab-GuestAnalysis" data-toggle="tab"><span class="glyphicon glyphicon-th-large"></span>
                            <span class="tab-text">Guest Analysis</span>
                        </a>
                    </li>
                    <li>
                        <a href="#tab-LoyaltyProgram" data-toggle="tab"><span class="glyphicon glyphicon-th-large"></span>
                            <span class="tab-text">Loyalty Program</span>
                        </a>
                    </li>
                    <li>
                        <a href="#tab-FeedbackAnalysis" data-toggle="tab"><span class="glyphicon glyphicon-th-large"></span>
                            <span class="tab-text">Feedback Analysis</span>
                        </a>
                    </li>
                    <li>
                        <a href="#tab-Amenities" data-toggle="tab"><span class="glyphicon glyphicon-th-large"></span>
                            <span class="tab-text">Amenities</span>
                        </a>
                    </li>

                </ul>
                <div id="content" class="tab-content">
                    <div class="tab-pane active" id="tab-status">
                        <h6>Location Wise Reservation Status</h6>
                        <div class="container">
                            <div class="col-xs-12 col-sm-11">
                                <a href='#' onclick='javascript:window.open("/DBMSWeb/FinancialAnalysis.jsp", "_blank", "scrollbars=1,resizable=1,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefFinancialAnalysis'>> Financial Analysis</a>
                                <br>
                                <a href='#' onclick='javascript:window.open("/DBMSWeb/OccupancyAnalysis.jsp", "_blank", "scrollbars=1,resizable=1,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefHotelOccupancyAnalysis'>> Hotel Occupancy Trend Analysis</a>
                                <br>
                                <a href='#' onclick='javascript:window.open("/DBMSWeb/RoomOccupancyAnalysis.jsp", "_blank", "scrollbars=1,resizable=1,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefRoomOccupancyAnalysis'>> Room Occupancy Trend Analysis</a>
                                <br>
                            </div>

                        </div>
                    </div>
                    <div class="tab-pane" id="tab-GuestAnalysis">
                        <h6>Guest Analysis</h6>
                    </div>
                    <div class="tab-pane" id="tab-LoyaltyProgram">
                        <h6>Loyalty Program</h6>
                    </div>
                    <div class="tab-pane" id="tab-FeedbackAnalysis">
                        <h6>Feedback Analysis</h6>
                    </div>
                    <div class="tab-pane" id="tab-Amenities">
                        <h6>Amenities</h6>
                    </div>



                </div>
            </div>

        </section>
        <script type="text/javascript" src="scripts/lib/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="scripts/lib/bootstrap.min.js"></script>
        <script type="text/javascript" src="jquery.slidertron-1.0.js"></script>
    </body>
</html>