<html>
<body style=" background-image: url(train3.jpg);
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;" >

<?php

session_start();
$_SESSION=array();
session_destroy();

?>
<div align="center"> 
<form action="enquiry_result.php" method="post">

Starting Point: <select id="sp" name="sp" required>
        
<?php

require "db.php";
            
            $cdquery="CALL `trainNames`();";
            $cdresult=mysqli_query($conn,$cdquery);
        
	
            echo " <option value = \"\" >
                    
                </option>";

            while ($cdrow=mysqli_fetch_array($cdresult)) {
            $cdTitle=$cdrow['sname'];

            echo " <option value = \"$cdTitle\" >
                    $cdTitle
                </option>";
            
            }
?>
    
</select>
<br><br>
   
Destination Point: <select id="dp" name="dp" required>
        
<?php

require "db.php";
            
            $cdquery="CALL `trainNames`();";
            $cdresult=mysqli_query($conn,$cdquery);
        
            echo " <option value = \"\" >
                    
                </option>";

            while ($cdrow=mysqli_fetch_array($cdresult)) {
            $cdTitle=$cdrow['sname'];

            echo " <option value = \"$cdTitle\" >
                    $cdTitle
                </option>";
            
            }
?>
    
</select>
<br><br>
     
Date of Journey: <input type="date" name="doj" required><br><br><br>
<input type="submit">

</form>
<br><br><br><br><a href="index.htm">Go to Home Page!!!</a>
</body>
</html>
