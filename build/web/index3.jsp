<%-- 
    Document   : index3
    Created on : 18 Apr, 2015, 2:02:08 AM
    Author     : VAIO
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

<%@ include file="tab-reservation.jsp" %>
<%@ include file="tab-login.jsp" %>
<%@ include file="tab-signup.jsp" %>
<%@ include file="tab-feedback.jsp" %>
<div class="tab-pane active" id="tab-tuples">
    <center>	<h6>Click The Button Below To See Total Number Of Tuples In Our database</h6></center>
					<form method="post" action="Tuples">
                                             	
 					<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Click Me</button>
                                          <br><font color="blue">The Total Number of Tuples In The Database: ${tuples}</font>
 					 </div>
					</form>
					</div>
<%@ include file="footer1.jsp" %>