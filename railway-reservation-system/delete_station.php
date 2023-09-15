<html>
<body style=" background-image: url(blue.png);
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">

<?php

require "db.php";

$sql = "DELETE from station where id= ('".$_GET["id"]."')";
echo $_GET["id"];

if ($conn->query($sql) === TRUE) {
    echo " '".$_POST["sname"]."': Record deleted successfully";
} else {
    echo "Error:" . $conn->error;
}

echo "<br> <a href=\"admin_login.php\">Go back to Admin Menu!!!</a> ";

$conn->close();
?>


</body>
</html>


