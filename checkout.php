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
     
	<!-----------------Main Frame----------------->
    
	<div id="mainframe">
	<div class="sub_frame">
    <h3>Checkout</h3>
	<hr>
    <form method="post">
    
    
    
    
                       <div class="col_3">
                       
                  <table id="billingtable">
                     <tr>
                        <th>Delivery Address</th>
                     </tr>
                     <tr>
                        <td><br>Recipient Name: <input name="recipientname" type="text" value="" required> </td>
                         </tr>
                         <tr>
                        <td>Recipient Phone: <input name="recipientphone" type="text" value="" maxlength="11" required> </td>
                        <tr>
                        </tr>
                        <td>Delivery Address:<br><textarea name="deliveryaddress" type="text" value="" rows="4" required> </textarea>
                        <tr>
                        </tr>
                        <td>Delivery City: <br><select name="deliverycity">
                        <option value="MOLINO I, BACOOR">MOLINO I, BACOOR</option>
                        <option value="MOLINO II, BACOOR">MOLINO II, BACOOR</option>
<option value="MOLINO III, BACOOR">MOLINO III, BACOOR</option>
<option value="MOLINO IV, BACOOR">MOLINO IV, BACOOR</option>
<option value="MOLINO V, BACOOR">MOLINO V, BACOOR</option>
<option value="MOLINO V, BACOOR">MOLINO V, BACOOR</option>
<option value="MOLINO V, BACOOR">MOLINO VI, BACOOR</option>
<option value="MOLINO V, BACOOR">MOLINO VII, BACOOR</option>
<option value="TALON II, LAS PINAS">TALON II, LAS PINAS</option>
<option value="TALON III, LAS PINAS">TALON III, LAS PINAS</option>
<option value="TALON IV, LAS PINAS">TALON IV, LAS PINAS</option>
<option value="ZAPOTE I, BACOOR">ZAPOTE I, BACOOR</option>
<option value="ZAPOTE II, BACOOR">ZAPOTE II, BACOOR</option>
<option value="ZAPOTE III, BACOOR">ZAPOTE III, BACOOR</option>
<option value="ZAPOTE IV, BACOOR">ZAPOTE IV, BACOOR</option>
<option value="ZAPOTE V, BACOOR">ZAPOTE V, BACOOR</option>

                        </select>
                        </td>
                        </tr>
                        <tr>
                        <td>Location Type: <select name="locationtype">
                        <option value="home">Home</option>
                        <option value="workplace">Workplace</option>
                        <option value="other">Other</option>
                        </select> </td>
                        </tr>
						<tr>
                        <td>Shipping Type: <select name="shippingtype">
                        
                        <option value="0">Free Shipping: 0.00 PHP (7 Days)</option>
                        <option value="200">Standard Shipping: 200.00 PHP (3 Days)</option>
                        <option value="500">Express Shipping: 500.00 PHP (1 Days)</option>
                        </select>
                        </td>
                        </tr>
                     </tr>
                  </table>
                  </div>
                   <div id="checkoutform" class="col_3">
                   
                  <table id="billingtable">
                     <tr>
                        <th>Billing Summary</th>
                     </tr>
                     <tr>
                        <td><b><br>Total Products:</b> <?php echo $_SESSION['totalproducts']; ?></td>
                     </tr>
                     <tr>
                        <td><b><br>Total Price:</b> <?php echo $_SESSION['totalprice']; ?>.00 PHP <br><br><sub>*Excluding Shipping Charges</sub></td>
                        
                     </tr>
                     <tr>
                        <td><b><br>Tax:</b> 0 PHP</li>
                     </tr>
                  </table>   
               
                     
                        <br>
                        <td colspan="6" class="tf"><input type="submit" name="placeorder" class="cart_btn" value="Place Order"></td>
                     
                 
                  

                  
                  </div>

    </form>
	</div>    
	<div class="clear"></div>
	<!-----------------Footer----------------->
	<?php include('Resources/footer.php');?>
	</div>
    </div>
	</body>
	</html>