<%-- 
    Document   : tuples
    Created on : 18 Apr, 2015, 1:10:09 AM
    Author     : VAIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="head.jsp" %>

<%@ include file="header2.jsp" %>
<%@ include file="slider.jsp" %>

<%@ include file="tabs2.jsp" %>

					<div class="tab-pane active" id="tab-welcome">

<%@ include file="tab-welcome.jsp" %>
						</div>
<%@ include file="tab-profile.jsp" %>
<%@ include file="tab-checkin.jsp" %>
<%@ include file="tab-checkout.jsp" %>
<div class="tab-pane" id="tab-tuples">
					<font color = "blue">Click The Button Below To See Total Number Of Tuples</font>
					<form method="post" action="Tuples">
                                             	
 					<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Click Me</button>
                                          <h6>The Total Number of Tuples In The Database: ${tuples}</h6>
 					 </div>
					</form>
					</div>
<%@ include file="footer1.jsp" %>