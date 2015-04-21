<%-- 
    Document   : checkoutsuccess
    Created on : 18 Apr, 2015, 12:28:21 AM
    Author     : VAIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
				


					<div class="tab-pane" id="tab-welcome">

<%@ include file="tab-welcome.jsp" %>
						</div>
<%@ include file="tab-profile.jsp" %>
<%@ include file="tab-checkin.jsp" %>

<div class="tab-pane active" id="tab-feedback">
    <font color="blue"> Check-Out Successful!</font>
					<h6>Enter Resrvation ID To Check-Out</h6>
					<form method="post" action="Checkout">
                                             	<div class="form-group">
  						
   						 <label for="id">Reservation ID</label>
 						   <input type="text" name="id" class="form-control" id="id" >
 						 </div>
					   	 
 						 
					     
 					<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Check-Out</button>
 					 </div>
					</form>
					</div>
                                         
   <%@ include file="footer1.jsp" %>
