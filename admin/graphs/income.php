<?php
require_once '../core/init.php';
if(!is_logged_in()){
    login_error_redirect();
}
include '../admin/include/head.php';
include '../admin/include/navigation.php';
$data ="";
$data ="";
$search = date("Y-m-d H-i-s");
$search1 = date("Y-m-d H-i-s");
if(isset($_POST['search_submit'])){
    $search = $_POST['search'];
    $search1 = $_POST['search1'];
$data=$db->query($sql = "SELECT orde.`last_action`,SUM(orde.qty),products.price,products.title FROM orde INNER JOIN products ON products.id=orde.product where
 orde.delivered=1 AND orde.last_action BETWEEN '{$search}' AND '{$search1}'  GROUP BY orde.last_action");
$json1 = [];
$json2 = [];
$sum=[];
$json3= array();
while($row = mysqli_fetch_assoc($data)){
    extract($row);
    $json1[] = $row['last_action'];
    $json2[] = $row['SUM(orde.qty)'];
    $sum[] = $row['SUM(orde.qty)'] * $row['price'];
    
    }
}
else{
$data=$db->query($sql = "SELECT orde.`last_action`,SUM(orde.qty),products.price,products.title FROM orde INNER JOIN products ON products.id=orde.product where
 orde.delivered=1 GROUP BY orde.last_action");
$json1 = [];
$json2 = [];
$sum=[];
$json3= array();
while($row = mysqli_fetch_assoc($data)){
    extract($row);
    $json1[] = $row['last_action'];
    $json2[] = $row['SUM(orde.qty)'];
    $sum[] = $row['SUM(orde.qty)'] * $row['price'];
    
    }
}

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
    <link rel="stylesheet" href="../css/bootstrap.css">
    </head>
    <body>
       <h2 class = "text-center">Daily Net Income</h2>
          <?php include 'include/nav_left.php' ?>
        <div class="chart-container col-md-6">
        <form action="income.php" method ="post" >
            <div class = "form-group text-center">
                <div class = "col-xs-2"></div>
                <div class = "col-xs-6">
                <label for="date">FILTER BY:</label><br><br>
                <div class="col-xs-6">
                <input  name="search" id="search" class ="form-control" type="date" value="<?=((!empty($search))?$search:'')?>">-
                </div>
                <div class="col-xs-6">
                <input  name="search1" id="search1" class ="form-control" type="date" value="<?=((!empty($search1))?$search1:'')?>">
                </div><br><br><br>
                <input type="submit" name="search_submit" value="Search" class="btn btn-lg btn-success">
                </div>
                <div class = "col-xs-3"></div>
            </div>
            </form>
            <canvas id="mycanvas"></canvas>
        </div>
        <div class ="col-md-2"></div>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/Chart.min.js"></script>
        <script type="text/javascript">
    var ctx = document.getElementById('mycanvas').getContext('2d');
    var chart = new Chart(ctx,{
       type: 'bar',

       data: {
           labels: <?php
                 echo json_encode($json1);
                
            ?>,
           datasets : [{
               label : "₱",
               backgroundColor: ['#6aae7a','#5bc0de','#2390b0','#5cb85c','#86840d','#860d68','#cd4378','#3cf','#c21f25','#4460ae','#5cb85c','#86840d','#860d68','#cd4378'],
               borderColor : '#6aae7a',
               borderColor : 'rgba(200,200,200,0.75)',
                 hoverBackgroundColor: 'rgba(200,200,200,1)',
                 hoverBorderColor: 'rgba(200,200,200,1)',
               data :<?php
               echo json_encode($sum); ?>,
                
           },]
       }
    });
    </script>
    </body>
</html>