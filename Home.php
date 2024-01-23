	<!DOCTYPE html>
	<html>
	<head>
	<title>Ride Along</title>
    <!-----------------CSS sheet----------------->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <style>
      html, body {
        overflow-x: hidden;

      }
    </style>
	<link href="Resources/css.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="color.css">
    
	</head>
	<body>
         <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
  </script>
    
	<!-----------------Wrapper----------------->
    
	<div id="wrapper"> 
    
	<!-----------------Header & Navigation Bar----------------->
    
	<?php include('header.php');
	///////////////////////Display reviews///////////////////////
	    $select_recently_reviewed_products = "SELECT DISTINCT (tblproductreviews.ProductID), tblProducts.ProductName, tblProducts.ProductImage, tblProducts.ProductPrice, tblProducts.ProductDiscountAmount FROM tblproductreviews INNER JOIN tblProducts ON tblproductreviews.ProductID=tblProducts.ProductID ORDER BY tblproductreviews.ReviewDate DESC LIMIT 5";
    $result_recently_reviewed_products = mysqli_query($con, $select_recently_reviewed_products);
			$select_latest_products = "SELECT * FROM `tblproducts` ORDER BY CreatedDate ASC LIMIT 5";
        $result_latest_products = mysqli_query($con, $select_latest_products);

	
	
	?>
    
	<!-----------------Main Frame----------------->
    
	<div id="mainframe">
     <div class="sub_framefullpage">
	<!-----------------Products Frame----------------->
	<h3>Welcome to Ride Along !</h3>
   <div class="row">
              <div id="carouselId" class="carousel slide" data-bs-ride="carousel" >
                <ol class="carousel-indicators">
                  <li data-bs-target="#carouselId" data-bs-slide-to="0" class="active" aria-current="true" aria-label="First slide"></li>
                  <li data-bs-target="#carouselId" data-bs-slide-to="1" aria-label="Second slide"></li>
                  <li data-bs-target="#carouselId" data-bs-slide-to="2" aria-label="Third slide"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                  <div class="carousel-item active">
                    <img src="Resources/designimages/fuel.jpg" class="w-100 d-block" alt="First slide">
                  </div>
                  <div class="carousel-item">
                    <img src="Resources/designimages/3brown.jpg" class="w-100 d-block" alt="Second slide" >
                  </div>
                  <div class="carousel-item">
                    <img src="Resources/designimages/fuel2.jpg" class="w-100 d-block" alt="Third slide" >
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                  </button>
          </div>
        </div>
        <div>
	</div>
    </div>

    <!-----------------Latest Products----------------->
    	<div class="sub_framefullpage">
        <h3>Latest Products</h3>
    	<div class="productframe">
 <?php
//Count number of rows
	$no_of_rows=mysqli_num_rows($result_latest_products);
	if($no_of_rows>0)
	{
	///////////Fetch products from variavle and display
	while($data = mysqli_fetch_array($result_latest_products))
	{
?>
         <!-----------------Products----------------->
         <div class="product" style="width:18%">
         <?php if ($data['ProductDiscountAmount']!="0"){ ?> 
         <span class="product-discount-label">-<?php echo  $data['ProductDiscountAmount'];?> %</span>
         <?php } else  {?>  <span class="product-discount-label" style="background-color:#FFF; color:#FFF">-<?php echo  $data['ProductDiscountAmount'];?> %</span>
         <?php } ?>
         
         <img src="<?php echo $data['ProductImage']; ?>" >
         <br>
         <br>
         <div class="product_name">
         <?php echo  $data['ProductName']; ?>
         </div>
         <div class="product_price">
         PHP:<?php echo $data['ProductPrice']; ?>
         </div>
         <a href="viewproduct.php?pid=<?php echo $data['ProductID']; ?>"><input name="" type="button" value="See Details" id="seedetailes"></a>
         </form> 
         </div>
         <?php } } else {?>
         <h3>Oops! No Products Found!</h3>
         <?php } ?>	
	</div>
    </div>
    
    
    
        <!-----------------Recently Reviewed Products----------------->
        <div class="sub_framefullpage">
    	<h3></h3>
    	<div class="productframe">
 <?php
//Count number of rows
	$no_of_rows=mysqli_num_rows($result_recently_reviewed_products);
	if($no_of_rows>0)
	{
	///////////Fetch products from variavle and display
	while($data = mysqli_fetch_array($result_recently_reviewed_products))
	{
?>
         <div class="product" style="width:18%">
         <?php if ($data['ProductDiscountAmount']!="0"){ ?> 
         <span class="product-discount-label">-<?php echo  $data['ProductDiscountAmount'];?> %</span>
         <?php } else  {?>  <span class="product-discount-label" style="">-<?php echo  $data['ProductDiscountAmount'];?> %</span>
         <?php } ?>
         
         <img src="<?php echo $data['ProductImage']; ?>" >
         <br>
         <br>
         <div class="product_name">
         <?php echo  $data['ProductName']; ?>
         </div>
         <div class="product_price">
         PHP:<?php echo $data['ProductPrice']; ?>
         </div>
         <a href="viewproduct.php?pid=<?php echo $data['ProductID']; ?>"><input name="" type="button" value="See Details" id="seedetailes"></a>
         </form> 
         </div>
         <?php } } else {?>
         <h3></h3>
         <?php } ?>	
	</div>
</div>
    
	<div class="clear"></div>
    
	<!-----------------Footer----------------->
	<?php include('Resources/footer.php');?>
    
	</div>
	</div>
	</body>
	</html>