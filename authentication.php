<?php      
    include('connection.php'); 
    $username = $_POST['username'];  
    $password = $_POST['password'];  
      
       
        $username = stripcslashes($username);  
        $password = stripcslashes($password);  
        $username = mysqli_real_escape_string($con, $username);  
        $password = mysqli_real_escape_string($con, $password);  
      
        $sql = "select *from login where username = '$username' and password = '$password'";  
        $result = mysqli_query($con, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  
          
        if($count == 1){  
            echo "<h1><center> Yo Jeth is back! </center></h1>";  

	header("Location: category.php");
	exit();
        } 
        else{ 
           
		header("Location: rr.php");
		exit();

        }     
?>  