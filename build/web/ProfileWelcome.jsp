<%-- 
    Document   : ProfileWelcome
    Created on : 17 Apr, 2015, 7:26:42 PM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="head.jsp" %>

<%@ include file="header2.jsp" %>
<%@ include file="slider.jsp" %>


			<ul class="nav nav-tabs nav-justified">
			<li class="active">
			<a href="#tab-welcome" data-toggle="tab">Welcome Visitors!</a>
			</li>
                         <li>
                         <a href="#tab-profile" data-toggle="tab" >Profile</a>
			</li>
			<li>
			<a href="#tab-checkin" data-toggle="tab">Frontdesk</a>
			</li>
			<li>
			<a href="#tab-checkout" data-toggle="tab" >Check-Out</a>
			</li>
			</ul>
			<div id="content" class="tab-content">
				

					<div class="tab-pane active" id="tab-welcome">
                                             <h6><font color="blue"> Profile Successfully Updated</font></h6>
<%@ include file="tab-welcome.jsp" %>
						</div>
<%@ include file="tab-profile.jsp" %>
<%@ include file="tab-checkin.jsp" %>
<%@ include file="tab-checkout.jsp" %>
<%@ include file="footer1.jsp" %>
