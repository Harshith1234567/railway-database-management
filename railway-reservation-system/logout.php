<?indexhindex
session_start();
$_SESSION=array();
session_destroy();
echo "YOU HAVE SUCCESSFULLY LOGGED OUT";
mysqli_query($con,"delete from chat where sender_id='$username'");
?><script>
	alert("LOGGED OUT SUCCESSFULLY");
	document.location="index.htm";
  </script>


?>
