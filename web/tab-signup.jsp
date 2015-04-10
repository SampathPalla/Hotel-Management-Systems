<%-- 
    Document   : tab-signup
    Created on : 29 Mar, 2015, 2:06:55 AM
    Author     : VAIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


					<div class="tab-pane" id="tab-signup">
					
					<form method="post" action="SignUp">
  						<div class="form-group">
  						<h6>Create Your Account</h6>
   						 <label for="loginid">Username</label>
 						   <input type="text" name="loginid" class="form-control" id="loginid" placeholder="Username">
 						 </div>
					     <div class="form-group">
   						 <label for="pswd">Password</label>
   						 <input type="password" class="form-control" name="pswd" id="pswd" placeholder="Password">
  						 </div>
  						 <div class="form-group">
   						 <label for="usertype">User Type</label>
   						 <input type="text" class="form-control" id="usertype" name="usertype" placeholder="User Type">
  						 </div>
  						 <div class="form-group">
   						 <label for="question">Security Question</label>
   						 <input type="text" class="form-control" id="question" name="question" placeholder="Please Enter A Security Question">
  						 </div>
  						 <div class="form-group">
   						 <label for="answer">Security Answer</label>
   						 <input type="text" class="form-control" id="answer"name="answer" placeholder="Please Enter Your Security Answer">
  						 </div>
  						 <div class="form-group">
   						 <label for="typeid">Type</label>
   						 <input type="text" class="form-control" id="typeid" name="typeid" placeholder="TypeID">
  						 </div>
 					<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Submit</button>
 					 </div>
					</form>




						</div>
