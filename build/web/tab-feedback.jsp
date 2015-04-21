<%-- 
    Document   : tab-feedback
    Created on : 29 Mar, 2015, 2:07:55 AM
    Author     : VAIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


						<div class="tab-pane" id="tab-feedback">
								<form action="CustomerFeedback" method="post">
  			
 						 <div class="row">
  						
 						 <div class="col-xs-12">
 						 <div class="form-group">
   						 <label for="occID">Reservation ID</label>

 						   <input type="text" class="form-control" id="occID" name="occID"
                                                    placeholder="Enter your Reservation ID">
 						 </div>
 						 </div>
                                              </div>
                                          
                                              <div class="row">
 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="roomservice">Please Rate Room service</label>
                                                <!-- <input type="text" id="roomservice" name="roomservice" class="form-control" placeholder="1 - 5" />
                                                -->
                                                <select name="roomservice">
                                                    <option value="1">1</option>
                                                        <option value="2">2</option>
                                                            <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                </select>
                                                  </div>
 						 </div>

 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="amenities">Please Rate Amenities</label>
                                              <!--  <input type="text" id="amenities" name="amenities" class="form-control" placeholder="1 - 5" />
 						-->
                                                 
                                                <select name="amenities">
                                                    <option value="1">1</option>
                                                        <option value="2">2</option>
                                                            <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                </select></div>
 						 </div>

 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="housekeeping">Please Rate House Keeping</label>
                                                    <!--   <input type="text" id="housekeeping" name="housekeeping" class="form-control" placeholder="1 - 5" />
                                                        -->
                                                        
                                                <select name="housekeeping">
                                                    <option value="1">1</option>
                                                        <option value="2">2</option>
                                                            <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                </select>
 						 </div>
 						 </div>

 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="frontdesk">Please Rate Front-desk Experience</label>
                                       <!--  <input type="text" id="frontdesk" name="frontdesk" class="form-control" placeholder="1 - 5" />
                                        -->
                                        
                                                <select name="frontdesk">
                                                    <option value="1">1</option>
                                                        <option value="2">2</option>
                                                            <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                </select>
 						 </div>
 						 </div>

 						 <div class="col-xs-4">
 						 <div class="form-group">
   						 <label for="overall">Overall Rating</label>
                                             <!--       <input type="text" id="overall" name="overall" class="form-control" placeholder="1 - 5" />
                                                -->
                                                
                                                <select name="overall">
                                                    <option value="1">1</option>
                                                        <option value="2">2</option>
                                                            <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                </select>
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
					