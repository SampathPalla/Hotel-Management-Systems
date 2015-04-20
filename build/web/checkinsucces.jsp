<%-- 
    Document   : checkinsucces
    Created on : 18 Apr, 2015, 12:07:14 AM
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
				


					<div class="tab-pane" id="tab-welcome">

<%@ include file="tab-welcome.jsp" %>
						</div>
<%@ include file="tab-profile.jsp" %>
<%@ include file="tab-checkout.jsp" %>

				<div class="tab-pane active" id="tab-reservation">
                                     <font color = "blue"> Check-In Successful!</font>
					<h6>Check-In</h6>
					<form method="post" action="Reserve">
                                             	<div class="form-group">
  						
   						 <label for="loginid">Name</label>
 						   <input type="text" name="name" class="form-control" id="name" >
 						 </div>
					    <div class="form-group">
   						 <label for="phone">Phone Number</label>
   						 <input type="number" class="form-control" name="phone" id="phone">
  						 </div>
                                                  
  						 <div class="form-group">
   						 <label for="email">Email ID</label>
   						 <input type="text" class="form-control" id="email" name="email">
  						 </div>
  						 <div class="form-group">
   						 <label for="address">Address</label>
   						 <input type="text" class="form-control" id="address"name="address">
  						 </div>
                                                
  						<div class="row">
  						<div class="col-xs-6">
  						<div class="form-group">
  											
   						 <label for="date">From Date</label>
 						   <input type="date" class="form-control" id="fromDate" name="fromDate" placeholder="mm/dd/yyyy">
 						 </div>
 						 </div>
 						 <div class="col-xs-6">
 						 <div class="form-group">
   						 <label for="date">To Date</label>
 						   <input type="date" class="form-control" id="toDate" name="toDate" placeholder="mm/dd/yyyy">
 						 </div>
 						 </div>
 						 </div>

						<div class="row">
  						<!--
                                                 <div class="col-xs-6">
  						<div class="form-group">
  											
   						 <label for="name">Guest ID</label>
 						   <input type="number" class="form-control" id="guestid" name="guestid" placeholder="Enter your GuestID">
 						 </div>
 						 </div>
                                                  -->
 						 
 						 </div>
                                                  
						<div class="row">
                                                 <div class="col-xs-3">
 						 <div class="form-group">
   						 <label for="people">Hotel Location</label>
                                                    <select id="location" name="location">
                                                     <option value="Gainesville">Gainesville</option>
                                                     <option value="Orlando">Orlando</option>
                                                     <option value="Miami">Miami</option>
                                                     <option value="San Francisco">San Francisco</option>
                                                     <option value="New York">New York</option>
                                                 </select>
                                                <!-- <input type="text" 
                                                 class="form-control" placeholder="GNV/ORLNDO/MIA/SF/NYC" id="location" name="location" />
                                                    -->
 						 </div>
                                              </div>
  						<div class="col-xs-3">
 						 <div class="form-group">
   						 <label for="people">Type of Room</label>
                                                <!-- <input type="text" 
                                                 class="form-control" placeholder="Queen/King/Double Bed" id="roomtype" name="roomtype" />
                                                 -->
                                                 <select id="roomtype" name="roomtype">
                                                     <option value="Suite">Suite</option>
                                                     <option value="Single">Single</option>
                                                     <option value="Presidential Suite">Presidential Suite</option>
                                                     <option value="Double">Double</option>
                                                 </select>
						</div>
 						 </div>
                                              
 						 <div class="col-xs-3">
 						 <div class="form-group">
   						 <label for="people"># of Rooms </label>
 						   <input type="number" class="form-control" id="roomnum" name="roomnum" placeholder="">
 						 </div>
 						 </div>
                                                  
                                                  <div class="col-xs-3">
 						 <div class="form-group">
   						 <label for="roomno">Room No.</label>
                                                 <input type="text" 
                                                 class="form-control" id="roomno" name="roomno" />
						</div>
 						 </div>
 						 </div>
 						 
					     
 					<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Check-In</button>
 					 </div>
					</form>
					</div>




<%@ include file="footer1.jsp" %>
