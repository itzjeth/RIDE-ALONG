
	<!DOCTYPE html>
	<html>
	<head>
	<title>Ride Along</title>
	<link href="Resources/css.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="color.css">
	</head>
	<body>
    
	<!-----------------Wrapper----------------->
    
	<div id="wrapper"> 
    
	<!-----------------Header & Navigation Bar----------------->
    
<?php
	include('header.php');
?>
     <!----------------- main frame----------------->
	<div id="mainframe">
 	<div class="sub_frame" style="width:100%">
    <h3>Contact Us</h3>
	<p>
    <div class="row"> 
	<div class="col_3">
	

	<!-----------------Contact us form----------------->
    
	<div class="container" id="contactt">
	<h3>Message Us</h3>
	<form name="ContactForm" method="post" class="form2">
	<br>
	<input type="text" name="txtFullname" id="txtFullname" placeholder="Your Name" required>
	<br>
	<br>
	<input type="text" name="txtemail" id="txtemail" placeholder="Email Address" required>
	<br>
    <br>
	<input type="text" name="txtSubject" id="txtSubject" placeholder="Subject" required>
	<br>
	<br>
	 <div class="form-group">
    <label for="exampleFormControlTextarea1" id="urmess">Your Message :</label>
    <br>
    <textarea rows="7"></textarea>
  </div>
	<br>
	<input class="message" name="Send Message" type="submit" id="Send Message" value="Send Message" onClick="checkEmail();"></p>
	</form>
	</div>
    
    </div>
       	<div class="col_3">
        <h3> Our Place</h3>
        
        <img src="Resources/designimages/motoshop.jpg" id="im1">
</div> 

    
        </div>
	</div>
    <div class="clear"></div>
	<!-----------------Footer----------------->
	<?php include('Resources/footer.php');?>
	</div>
	</div>
    <script src="Resources/js.js"></script>	
</body>
	</html>