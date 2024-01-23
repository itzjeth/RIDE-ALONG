

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
         <?php include('header.php');?>
         <!-----------------Main Frame----------------->
         <div id="mainframe">
            <div class="sub_framefullpage">
               <!-----------------Products Frame----------------->
               <h3>Account Register</h3>
               <p>
              <div class="row">
                  <div class="col_3">
                     <h3>Account Benefits</h3>
                     <p>If you create an account with us, you will get additional benefits such as order history, prioritized delivery and much more.</p>
                     <img src="Resources/designimages/gif.gif" height="450" width="700" style="mix-blend-mode: multiply; margin-left: -50px">
                  </div>
                  <div class="col_3">
                     <h3>Create a New Account</h3>
                     <form method="POST" >
                        <p>Create your free account here and enjoy the benefits.</p>
                        <p><?php echo $MESSAGE_REGISTER; ?></p>
                        <?php if($MESSAGE_REGISTER == "successful"){ ?> 
                       <p>Successfully Registered! Click here to <a href='login.php'>Login</a></p>
                         <?php } else{ ?> 
                        <label>Username</label><br>
                        <input name="username" type="text"><br>
                        <label>First Name</label><br>
                        <input name="firstname" type="text"><br>
                        <label>Last Name</label><br>
                        <input name="lastname" type="text"><br>
                        <label>Email Address</label><br>
                        <input name="email" type="text" ><br>
                        <label>Phone Number</label><br>    
                        <input name="phonenumber" type="text" maxlength="11"><br>
                        <label>Password</label><br>
                        <input name="password" type="password"><br>
                        <label>Re-Type Password</label><br>
                        <input name="retypepassword" type="password"><br>
                        <input name="register" type="submit" value="Register">
               
                        <?php } ?>
                     </form>
                  </div>
               </div>
               </p>
            </div>
            <!-----------------Footer----------------->
           <div class="clear"></div>
    
   <!-----------------Footer----------------->
   <?php include('Resources/footer.php');?>
         </div>
      </div>
   </body>
</html>