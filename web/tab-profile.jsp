<%-- 
    Document   : tab-profile
    Created on : 17 Apr, 2015, 6:51:58 PM
    Author     : VAIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


					<div class="tab-pane" id="tab-profile">
					
					<form method="post" action="CreateProfile">
  						<div class="form-group">
  						<h6>Profile</h6>
   						 <label for="loginid">Name</label>
 						   <input type="text" name="name" class="form-control" id="name" >
 						 </div>
					    <!-- <div class="form-group">
   						 <label for="phone">Phone Number</label>
   						 <input type="number" class="form-control" name="phone" id="phone">
  						 </div>
                                                  -->
  						 <div class="form-group">
   						 <label for="email">Email ID</label>
   						 <input type="text" class="form-control" id="email" name="email">
  						 </div>
  						 <div class="form-group">
   						 <label for="address">Address</label>
   						 <input type="text" class="form-control" id="address"name="address">
  						 </div>
                                                  <div class="form-group">
   						 <label for="city">City</label>
   						 <input type="text" class="form-control" id="city"name="city">
  						 </div>
                                                  
                                                  <div class="form-group">
   						 <label for="state">State</label>
   						 <input type="text" class="form-control" id="state" name="state">
  						 </div>
                                                  
                                                  <div class="form-group">
   						 <label for="country">Country</label>
   						 <input type="text" class="form-control" id="country"name="country">
  						 </div>
                                                  <div class="form-group">
   						 <label for="zip">ZIP Code</label>
   						 <input type="text" class="form-control" id="zip"name="zip">
  						 </div>
                                                 
 					<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Submit</button>
 					 </div>
					</form>




						</div>
