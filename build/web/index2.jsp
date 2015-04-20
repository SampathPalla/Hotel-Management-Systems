<%-- 
    Document   : index2
    Created on : 17 Apr, 2015, 6:22:14 PM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<%@ include file="head.jsp" %>

<%@ include file="header1.jsp" %>
<%@ include file="slider.jsp" %>
<%@ include file="tabs1.jsp" %>
		
					<div class="tab-pane active" id="tab-welcome">
                                             <br><h6> <font color="blue">Congratulations! You have successfully signed up! </font></h6>
                                             <br>

					<form role="form">
  						<div class="form-group">
  						<h6>Welcome to Suite Hotels!</h6>
   					Refined elegance and understated luxury welcome you here at the Suite Hotel.  Every one of our 772 rooms and suites offer flat-screen televisions, luxury bedding, and Suite Hotel's signature Plug-In technology panels. Additional hotel amenities include a modern fitness center, an indoor pool and whirlpool. Stop by our award-winning hotel restaurant, or order room service any time of the day or night.  We invite you to experience the charm and quiet luxury of Suite Hotel.
 						 
 						 </div>
					     <div  class="form-group" style="float : left">
   						<h6>Key Amenities </h6>
							<ul>
							<li>
						    Fitness Center
						    </li><li>
						    Pool
						    </li>
						    <li>
						    Meeting Event Space &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
						    </li>
						    <li>
						    Airport Taxi
						    </li>
						    </ul>
						</div>
						<div class="form-group" style="float : left">
   						<h6>Locations </h6>
							<ul>
							</li>
						    <li>
						    New York
						    </li>
							<li>
						    Gainesville
						    </li><li>
						    Orlando
						    </li>
						    <li>
						    Miami
						    </li>
							</li>
						    <li>
						    Chicago
						    </li>
							<li>
						    Los Angeles  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;
						    </li>

						    </ul>
						</div>
						<div class="form-group" >
  						<h6>Gallery</h6>
  						<img src="images/23.jpg" width="100" height="75">
  						<img src="images/32.jpg" width="100" height="75">
  						<img src="images/31.jpg" width="100" height="75">
  						<img src="images/33.jpg" width="100" height="75">
  						<br>
  						<img src="images/35.jpg" width="100" height="75">
  						<img src="images/1A.jpg" width="100" height="75">
  						<img src="images/2A.jpg" width="100" height="75">
  						<img src="images/13.jpg" width="100" height="75">
 						 </div>
 				<!--	<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Submit</button>
 					 <button type="button" class="btn btn-link">Forgot password?</button>
 					 <button type="button" class="btn btn-link">Don't Have an Account? Sign-up for Free</button>
 					 </div>-->
					</form>
						</div>

<%@ include file="tab-reservation.jsp" %>
<%@ include file="tab-login.jsp" %>
<%@ include file="tab-signup.jsp" %>
<%@ include file="tab-feedback.jsp" %>
<%@ include file="footer1.jsp" %>
