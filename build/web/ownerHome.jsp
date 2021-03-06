<%-- 
    Document   : ownerHome
    Created on : 29 Mar, 2015, 2:39:21 AM
    Author     : VAIO
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
                            <li><a href="WelcomeAdmin.jsp">Home</a></li>
                        </ul>
                     </div>
                </div>
            </nav>

        </header>

        <section>
            <div class="container" id="ownerHome">
                <ul class="nav nav-tabs nav-justified">
                    <li class="active">
                        <a href="#tab-financialAnalysis" data-toggle="tab"><span class="glyphicon glyphicon-calendar"></span>   
                            <span class="tab-text">Financial Analysis</span>
                        </a>
                    </li>
                    <li>
                        <a href="#tab-GuestAnalysis" data-toggle="tab"><span class="glyphicon glyphicon-th-large"></span>
                            <span class="tab-text">Guest Analysis</span>
                        </a>
                    </li>
                    <li>
                        <a href="#tab-LoyaltyProgram" data-toggle="tab"><span class="glyphicon glyphicon-th-large"></span>
                            <span class="tab-text">Change Privileges</span>
                        </a>
                    </li>
                    <li>
                        <a href="#tab-FeedbackAnalysis" data-toggle="tab"><span class="glyphicon glyphicon-th-large"></span>
                            <span class="tab-text">Feedback Analysis</span>
                        </a>
                    </li>
                </ul>
                <div id="content" class="tab-content">
                    <div class="tab-pane active" id="tab-financialAnalysis">
                        <h6>Financial Analysis</h6>
                        <div class="container">
                            <div class="col-xs-12 col-sm-11">
                                <h6>Annual Financial Analysis</h6>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("YearlyFinancialAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefYearlyFinancialAnalysis'>> Yearly</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("MonthlyFinancialAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefMonthlyFinancialAnalysis'>> Monthly</a>
                                <br>
                                <h6>Seasonal Financial Analysis</h6>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("SpringFinancialAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefSpringFinancialAnalysis'>> Spring</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("SummerFinancialAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefSpringSummerAnalysis'>> Summer</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("FallFinancialAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefSpringFallAnalysis'>> Fall</a>
                                <br>
                            </div>

                        </div>
                    </div>
                    <div class="tab-pane" id="tab-GuestAnalysis">
                        <h6>Guest Analysis</h6>
                        <div class="container">
                            <div class="col-xs-12 col-sm-11">
                                <h6>Analysis Based on Nationality</h6>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("DomesticGuestOccupancyAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefDomesticGuests'>> Domestic Guests</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("ForeignGuestOccupancyAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefForeignGuests'>> Foreign Guests</a>
                                <br>
                                <h6>Analysis Based on Type of Booking</h6>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("PersonalBookingAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefPersonalBooking'>> Personal</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("OrganizationalBookingAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefOrganizational'>> Organizational</a>
                                <br>
                            </div>

                        </div>
                    </div>
                    <div class="tab-pane" id="tab-LoyaltyProgram">
                        <h6>Change Privileges</h6>
                        &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("GrantEmpPriv.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefGrantEmpPriv'>> Grant Employee Privileges</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("GrantAdminPrivs.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefGrantAdminPriv'>> Grant Administrator Privileges</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("RevokePrivs.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefRevokePrivs'>> Revoke All Privileges</a>
                                <br>
                    </div>
                    <div class="tab-pane" id="tab-FeedbackAnalysis">
                        <h6>Feedback Analysis</h6>
                        <div class="container">
                            <div class="col-xs-12 col-sm-11">
                                <h6>Analysis Based on Guest's Feedback</h6>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("OverallFeedbackAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefOverallFeedbackAnalysis'>> Overall Ratings</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("RoomServiceFeedbackAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefRoomServiceFeedbackAnalysis'>> Room Service Ratings</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("HouseKeepingFeedbackAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefHouseKeepingFeedbackAnalysis'>> Housekeeping Ratings</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("FrontDeskFeedbackAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefFrontDeskFeedbackAnalysis'>> Front Desk Ratings</a>
                                <br>
                                &nbsp;&nbsp;&nbsp;
                                <a href='#' onclick='javascript:window.open("AmenitiesFeedbackAnalysis.jsp", "_blank", "scrollbars=1,resizable=0,height="+(screen.height/2)+",width="+(screen.width/2)+" ,left = "+(screen.width/4)+",top =" + (screen.height/4)+"");' title='hrefAmenitiesFeedbackAnalysis'>> Amenities Ratings</a>
                                <br>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </section>
        <script type="text/javascript" src="scripts/lib/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="scripts/lib/bootstrap.min.js"></script>
        <script type="text/javascript" src="jquery.slidertron-1.0.js"></script>
    </body>
</html>