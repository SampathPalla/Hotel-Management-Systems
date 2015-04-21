<%-- 
    Document   : welcomeemployee
    Created on : 18 Apr, 2015, 12:34:32 AM
    Author     : VAIO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="head.jsp" %>

<%@ include file="header3.jsp" %>
<%@ include file="slider.jsp" %>

			
			<ul class="nav nav-tabs nav-justified">
			<li class="active">
			<a href="#tab-checkin" data-toggle="tab">Frontdesk</a>
			</li>
			<li>
			<a href="#tab-checkout" data-toggle="tab" >Check-Out</a>
			</li>
			</ul>
			<div id="content" class="tab-content">
				


					<div class="tab-pane active" id="tab-checkin">

<%@ include file="tab-checkin.jsp" %>
						</div>

<%@ include file="tab-checkout.jsp" %>

<%@ include file="footer1.jsp" %>