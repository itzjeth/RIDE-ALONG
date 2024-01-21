
	<!DOCTYPE html>
	<html>
	<head>
	<title>Yamaha</title>
	<link href="Resources/css.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="color.css">
	</head>
	<body>
    
	<!-----------------Wrapper----------------->
    
	<div id="wrapper"> 
    
	<!-----------------Header & Navigation Bar----------------->
    
<?php
	include('header.php');
	if(!isset($_SESSION["username"])){
	header("Location: login.php");
	unset($_SESSION['crumbs']);
	}
	else
{
    $USER = $_SESSION["username"];
    $select_track_orders = "SELECT tblorder.DeliveryID, tblordertrack.`Status`, tblorder.OrderDate, tbldelivery.RecipientName, tbldelivery.TotalPrice FROM tblordertrack join tblorder ON tblordertrack.`OrderID` = tblorder.`OrderID` join tbldelivery ON tblorder.`DeliveryID` = tbldelivery.`DeliveryID` WHERE tblorder.Username = '" . $USER . "'";
    $result_track_orders = mysqli_query($con, $select_track_orders);
}
	
?>
     <!----------------- main frame----------------->
	<div id="mainframe">
 	<div class="sub_framefullpage" style="width:100%">
    <h3>Welcome to your account - <i id="uwelcome"><?php echo $_SESSION["username"] ?></i></h3>
	<p>
    <div class="row"> 
	<div class="col_2">
	<h3>Track Orders</h3>
            <table width="600" border="1" id="tablee">
  <tr>  
    <th scope="col">Tracking ID</th>
    <th scope="col">Recipient Name</th>
    <th scope="col">Order Date</th>
    <th scope="col">Status</th>
	<th scope="col">TotalPrice</th>
  </tr>
<!----------------- Update email address----------------->
	
	
    
    </div>
    
    
    
       <?php
//Count number of rows
	$no_of_track_orders=mysqli_num_rows($result_track_orders);
	if($no_of_track_orders>0)
	{
	///////////Fetch products from variavle and display
	while($tracking_data = mysqli_fetch_array($result_track_orders))
	{
?> 
      
      

   <tr id="trackorderr">
   <td width="20%"><?php echo  $tracking_data['DeliveryID']; ?></td>
   <td width="26%"><?php echo  $tracking_data['RecipientName']; ?></td>
   <td width="30%"><?php echo  date("Y-m-d",strtotime($tracking_data['OrderDate'])); ?></td>
   <td width="23%"><?php echo  $tracking_data['Status']; ?></td>
   <td width="23%"><?php echo  $tracking_data['TotalPrice']; ?></td>
   </tr>


	<?php } } else {?>
     <td>Oops! No Orders Have Been Placed!</td>
	<?php } ?>
    </table>
    <form method="POST" id="logout">
    <input name="logout" class="cart_btn" type="submit" value="Log Out">
  </form>
    </p>
</div> 

    
        </div>
	</div>
    <div class="clear"></div>
	<!-----------------Footer----------------->
	<?php include('Resources/footer.php');?>
	</div>
	</div>	
</body>
	</html>