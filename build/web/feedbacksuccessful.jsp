<%-- 
    Document   : feedbacksuccessful
    Created on : 31 Mar, 2015, 8:51:14 PM
    Author     : VAIO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="head.jsp" %>

<%@ include file="header2.jsp" %>
<%@ include file="slider.jsp" %>

<%@ include file="tabs2.jsp" %>

					<div class="tab-pane" id="tab-welcome">

<%@ include file="tab-welcome.jsp" %>
</div>
<%@ include file="tab-reservation.jsp" %>


						<div class="tab-pane active" id="tab-feedback">
								<form action="CustomerFeedback" method="post">
                                                                     <center>
                                                                     <font color="blue">Feedback Successfully Submitted. Thank You!</font></center>
 						 <div class="row">
  						
 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="occID">Occupancy ID</label>

 						   <input type="text" class="form-control" id="occID" name="occID"
                                                    placeholder="Enter your Occupancy ID">
 						 </div>
 						 </div>
 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="roomservice">Please Rate Room service</label>
                                                 <input type="text" id="roomservice" name="roomservice" class="form-control" placeholder="1 - 5" />
 						 </div>
 						 </div>

 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="amenities">Please Rate Amenities</label>
                                                <input type="text" id="amenities" name="amenities" class="form-control" placeholder="1 - 5" />
 						 </div>
 						 </div>

 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="housekeeping">Please Rate House Keeping</label>
                                                       <input type="text" id="housekeeping" name="housekeeping" class="form-control" placeholder="1 - 5" />

 						 </div>
 						 </div>

 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="frontdesk">Please Rate Front-desk Experience</label>
                                         <input type="text" id="frontdesk" name="frontdesk" class="form-control" placeholder="1 - 5" />

 						 </div>
 						 </div>

 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="overall">Overall Rating</label>
                                                    <input type="text" id="overall" name="overall" class="form-control" placeholder="1 - 5" />

 						 </div>
 						 </div>
 						 </div>
 						 
					     
  						<div class="row">
  						
 						 <div class="col-xs-12">
 						 <div class="form-group">
   						 <label for="suggestion">Pleave Give Your Suggestion</label>
   						   <input type="text" class="form-control" id="suggestion" placeholder="Enter your suggestion">

 						 </div>
 						 </div>
 						 </div>
 					<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Submit</button>
 					 </div>
					</form>

								
						</div>

<%@ include file="footer1.jsp" %>
