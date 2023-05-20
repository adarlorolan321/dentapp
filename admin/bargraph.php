<?php
session_start();
  
require_once 'class.user.php';
$session = new USER();

if(!$session->is_loggedin())
{
  
  $session->redirect('../');
}
  
  $auth_user = new USER();
  
  $user_id = $_SESSION['user_session'];
  
  $stmt = $auth_user->runQuery("SELECT * FROM users WHERE user_id=:user_id");
  $stmt->execute(array(":user_id"=>$user_id));
  
  $userRow=$stmt->fetch(PDO::FETCH_ASSOC);
require_once 'dbconfig.php';

$sql =$db->query("SELECT count(address),address FROM `patient` GROUP BY address");
while($row = mysqli_fetch_assoc($sql)){
    extract($row);


    $json1[] = $row['address'];
    $json2[] = $row['count(address)'];
   
    }
    include('header.php');
    include('nav.php');
?>



<!DOCTYPE html>
<html>
    <head>
       <title> CANCELLED Products</title>
       <style type="text/css">
         #chart-container{
             width: 320px;
             height: 320px;
         }
    </style>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    </head>
    <body>
      
        <h2 class ="text-center">Location Of Patients</h2>  
        <br><br><br>
        <!-- <?php include 'graphs/include/nav_left.php' ?> -->
      
        <div class="chart-container col-md-6">
            <canvas id="mycanvas"></canvas>
        </div>
        <div class="chart-container col-md-6 panel-body">
      
      <canvas id="mycanvas2"></canvas>
  </div>
        <div class="chart-container col-md-12 panel-body">
      
            <canvas id="mycanvas1"></canvas>
        </div>
        <hr>
        <div class ="col-md-2"></div>
        <script type="text/javascript" src="graphs/js/jquery.js"></script>
        <script type="text/javascript" src="graphs/js/Chart.min.js"></script>
        <script type="text/javascript">
    var ctx = document.getElementById('mycanvas').getContext('2d');
    var chart = new Chart(ctx,{
       type: 'bar',

       data: {
           labels:<?php   echo json_encode($json1);?>,
           datasets : [{
               label : "Location",
               backgroundColor: ['#6aae7a','#5bc0de','#2390b0','#5cb85c','#86840d','#860d68','#cd4378','#3cf','#c21f25','#4460ae','#5cb85c','#86840d','#860d68','#cd4378'],
               borderColor : '#6aae7a',
               borderColor : 'rgba(200,200,200,0.75)',
                 hoverBackgroundColor: 'rgba(200,200,200,1)',
                 hoverBorderColor: 'rgba(200,200,200,1)',
               data :<?php   echo json_encode($json2);?>,
                
           },]
       }
    });

    var ctx = document.getElementById('mycanvas1').getContext('2d');
    var chart = new Chart(ctx,{
       type: 'pie',

       data: {
           labels:<?php   echo json_encode($json1);?>,
           datasets : [{
               label : "Location",
               backgroundColor: ['#6aae7a','#5bc0de','#2390b0','#5cb85c','#86840d','#860d68','#cd4378','#3cf','#c21f25','#4460ae','#5cb85c','#86840d','#860d68','#cd4378'],
               borderColor : '#6aae7a',
               borderColor : 'rgba(200,200,200,0.75)',
                 hoverBackgroundColor: 'rgba(200,200,200,1)',
                 hoverBorderColor: 'rgba(200,200,200,1)',
               data :<?php   echo json_encode($json2);?>,
                
           },]
       }
    });
    var ctx = document.getElementById('mycanvas2').getContext('2d');
    var chart = new Chart(ctx,{
       type: 'doughnut',

       data: {
           labels:<?php   echo json_encode($json1);?>,
           datasets : [{
               label : "Location",
               backgroundColor: ['#6aae7a','#5bc0de','#2390b0','#5cb85c','#86840d','#860d68','#cd4378','#3cf','#c21f25','#4460ae','#5cb85c','#86840d','#860d68','#cd4378'],
               borderColor : '#6aae7a',
               borderColor : 'rgba(200,200,200,0.75)',
                 hoverBackgroundColor: 'rgba(200,200,200,1)',
                 hoverBorderColor: 'rgba(200,200,200,1)',
               data :<?php   echo json_encode($json2);?>,
                
           },]
       }
    });
    </script>
    </body>
</html>