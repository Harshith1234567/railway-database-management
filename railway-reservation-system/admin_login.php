<html>
<body style=" background-image: url(index2.png);
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">
<div align="center">
<?php 
session_start();
if($_POST["uid"]=='admin' AND $_POST["password"]=='admin' )
{
$_SESSION["admin_login"]=True;
}

if($_SESSION["admin_login"]==True)
{
echo " <h3><a href=\"insert_into_stations.php\"> <b>Show All Stations</b> </a></h3> ";
echo " <h3><a href=\"show_trains.php\"><b> Show All Trains</b> </a></h3>";
echo " <h3><a href=\"show_users.php\"> <b>Show All Users </b></a></h3> ";
echo " <h3><a href=\"insert_into_train_3.php\"><b> Enter New Train</b> </a></h3> ";
echo " <h3><a href=\"insert_into_classseats_3.php\"><b> Enter Train Schedule</b> </a></h3> ";
echo " <h3><a href=\"booked.php\"><b> View all booked tickets </b></a></h3> ";
echo " <h3><a href=\"cancelled.php\"> <b>View all cancelled tickets </b></a></h3> ";
echo " <h3><a href=\"logout.php\"><b> Logout</b> </a></h3>";
}
else 
{

echo "
<form action=\"admin_login.php\" method=\"post\">
User ID: <input type=\"text\" name=\"uid\" required><br>
Password: <input type=\"password\" name=\"password\" required><br>
<input type=\"submit\">
</form>
";
}


?>
 
</div>
</body>
</html>
