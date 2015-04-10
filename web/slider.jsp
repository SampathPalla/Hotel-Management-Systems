<%-- 
    Document   : slider
    Created on : 29 Mar, 2015, 2:14:29 AM
    Author     : VAIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">



	</header>
			<section>
			<div class="container" id="home">
						<div id="slider">
							<div class="viewer">
								<div class="reel">
									<div class="slide"> <img src="images/1.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/23.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/3.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/4.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/5.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/6.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/2.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/8.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/9.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/10.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/11.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/12.jpg" alt="" /> </div>
									<div class="slide"> <img src="images/13.jpg" alt="" /> </div>
							</div>
						</div>
						</div>
						<script type="text/javascript">
				$('#slider').slidertron({
					viewerSelector: '.viewer',
					reelSelector: '.viewer .reel',
					slidesSelector: '.viewer .reel .slide',
					advanceDelay: 2000,
					speed: 'slow'
				});
			</script>

