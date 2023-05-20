<?php  
//check.php  
$connect = mysqli_connect("localhost", "root", "", "dentapp"); 
if(isset($_POST["username"]))
{
 $username = mysqli_real_escape_string($connect, $_POST["username"]);

 $query = "SELECT username FROM patient WHERE username = '".$username."'";
 $result = mysqli_query($connect, $query);
 echo mysqli_num_rows($result);
}

if(isset($_POST["email"]))
{
 $email = mysqli_real_escape_string($connect, $_POST["email"]);
 
 $query = "SELECT email FROM patient WHERE email = '".$email."'";
 $result = mysqli_query($connect, $query);
 echo mysqli_num_rows($result);
}
?>