	<!DOCTYPE html>
	<html>
	<head>
	<title>Ride Along</title>
	<link href="Resources/css.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="color.css">
	</head>
	<body>
    <style>
    	input {

    	}
    </style>
	<!-----------------Wrapper----------------->
    
	<div id="wrapper"> 
    
	<!-----------------Header & Navigation Bar----------------->
    
	<?php include('header.php');?>
    
     <!----------------- main frame----------------->
	<div id="mainframe">
 	<div class="sub_framefullpage">
	<h3>Account Login</h3>
    <p>
    <div class="row"> 
	<div class="col_3">
	<h3>New Customers</h3>
	<form method="post" id="form2">
	<p id="pp">If you create an account with us, you will get additional benefits such as order history, prioritised delivery and much more.</p>
	<input id="register"name="NewAccount" type="button" value="Create a New Account" onclick="document.location = 'register.php'">
	</form>
	<?php
    if (isset($_SESSION['crumbs'])) {
	?>
    	<h3>Place Order as a Guest</h3>
	<form method="post" id="form2">
	<p id="pp">If you want to place this order quickly without any
registrations, then continue here. </p>
    <input name="continueguest" type="submit" value="Continue">
	<input name="deliveryidguest" type="hidden" value="<?php echo $result_delivery_id['delivery_id']; ?>" readonly>
    </form>
    <?php
	}
    ?>
	

	</div>
	<div class="col_3">
	<h3>Login</h3>
	<form method="POST" id="form2">
	<p>If you already have an account, please enter your e-mail and password here.</p>
	<label>Username</label><br>
 	<input name="username" type="text" placeholder="Enter Username" id="text2"><br>
	<label>Password</label><br>
	<input name="password" type="password" placeholder="Password"><br>
	<input name="login" type="submit" value="Login">
    <?php echo $MESSAGE_LOGIN; ?>
	</form> 
	</div>  
	</div>
 	</p>
	</div>
    <div class="clear"></div>
	<!-----------------Footer----------------->
	<?php include('Resources/footer.php');?>
    
	</div>
	</div>	
</body>
	</html>