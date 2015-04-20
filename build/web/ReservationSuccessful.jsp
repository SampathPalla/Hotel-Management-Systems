<%-- 
    Document   : ReservationSuccessful
    Created on : 31 Mar, 2015, 8:46:29 PM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<%@ include file="head.jsp" %>

<%@ include file="header1.jsp" %>
<%@ include file="slider.jsp" %>
<%@ include file="tabs1.jsp" %>
		
					<div class="tab-pane" id="tab-welcome">

<%@ include file="tab-welcome.jsp" %>
						</div>

				<div class="tab-pane active" id="tab-reservation">
                                     
                                     <center>  <font color="blue"> Reservation Successful! Thank You!</font></center>
					<h6>Make A reservation</h6>
					<form method="post" action="Reserve">
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
  						<div class="col-xs-6">
  						<div class="form-group">
  											
   						 <label for="name">Guest ID</label>
 						   <input type="number" class="form-control" id="guestid" name="guestid" placeholder="Enter your GuestID">
 						 </div>
 						 </div>
 						 <div class="col-xs-6">
 						 <div class="form-group">
   					 	<label for="tel">Phone</label>
 						   <input type="phone" class="form-control" placeholder="Enter your contact number">
 						 </div>
 						 </div>
 						 </div>

 						 <div class="row">
  						<div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="people">Type of Room</label>
                                                 <input type="text" 
                                                 class="form-control" placeholder="Queen/King/Double Bed" id="roomtype" name="roomtype" />
						</div>
 						 </div>
 						 
 						 

 						 	<div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="people">Hotel Location</label>

                                                 <input type="text" 
                                                 class="form-control" placeholder="GNV/ORLNDO/MIA/SF/NYC" id="location" name="location" />

 						 </div>
                                              </div>
 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="people"># of Rooms </label>
 						   <input type="number" class="form-control" id="roomnum" name="roomnum" placeholder="">
 						 </div>
 						 </div>
 						 </div>
 						 
					     
 					<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Make Reservation</button>
 					 </div>
					</form>
					</div>

<%@ include file="tab-login.jsp" %>
<%@ include file="tab-signup.jsp" %>
<%@ include file="tab-feedback.jsp" %>
<%@ include file="footer1.jsp" %>
