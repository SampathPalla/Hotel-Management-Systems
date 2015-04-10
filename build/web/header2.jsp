<%-- 
    Document   : header1
    Created on : 29 Mar, 2015, 2:28:00 AM
    Author     : VAIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    <%@ include file="head.jsp" %>
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
      <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-cutlery"></span>    Welcome <b> ${name} </b> </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
       <li><a href="#">Home</a></li>
        <li><a href="ownerHome.html">Admin</a></li>
       <li><a href="index.jsp">Logout</a></li>  
          </ul>
        </li>
      </ul>
    </div>
    </div>


</nav>
