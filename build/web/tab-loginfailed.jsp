<%-- 
    Document   : tab-loginfailed
    Created on : 29 Mar, 2015, 2:05:02 AM
    Author     : VAIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


					<div class="tab-pane active" id="tab-login">
					
                                         <form method="post" action="Login">
  						<div class="form-group">
  						<h6>Login</h6>
   						 <label for="email">Email address</label>
 						   <input type="text" class="form-control" id="email" name="email" placeholder="example@domain.com">
 						 </div>
					     <div class="form-group">
   						 <label for="pswd">Password</label>
   						 <input type="password" class="form-control" id="pswd" name="pswd" placeholder="Password">
  						 </div>

 					<div class="text-center">
 				<!--	 <button type="submit" class="btn btn-primary">Submit</button> -->
                                 <font color="red"> Wrong Username/Password</font>
                                 <br>
                                             <input type="submit" value="Login" name="sub1">
 					 <button type="button" class="btn btn-link">Forgot password?</button>
 					 <button type="button" class="btn btn-link">Don't Have an Account? Sign-up for Free</button>
 					 </div>
					</form>
						</div>



