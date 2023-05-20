<?php
require_once '../core/init.php';
if(!is_logged_in()){
    login_error_redirect();
}
include '../admin/include/head.php';
include '../admin/include/navigation.php';
$data ="";
$search = date("Y-m-d H-i-s");
$data ="";
$search = date("Y-m-d H-i-s");
$search1 = date("Y-m-d H-i-s");
if(isset($_POST['search_submit'])){
    $search = $_POST['search'];
    $search1 = $_POST['search1'];
$data=$db->query($sql = "SELECT `product`,`last_action`,SUM(qty) FROM orde WHERE `cancel`=1 AND `last_action` BETWEEN '{$search}' AND '{$search1}' GROUP BY `product`");
$data2=$db->query($sql = "SELECT `product`,`last_action`,SUM(qty) FROM orde WHERE `delivered`=1 AND `last_action` BETWEEN '{$search}' AND '{$search1}' GROUP BY `product`");
$json1 = [];
$json2 = [];
$del1 = [];
$del2 =[];
$del3 = array();
$json3= array();
while($row = mysqli_fetch_assoc($data)){
    extract($row);

   $tit = $row['product'];
    $json1[] = $row['last_action'];
    $json2[] = $row['SUM(qty)'];
    $sql2 = $db->query("SELECT `price` FROM products WHERE id =  '$tit' ");
    $res  = mysqli_fetch_assoc($sql2);
    $json3[]= $res['price'];
    }

    while($row = mysqli_fetch_assoc($data2)){
        extract($row);
    
       $tit = $row['product'];
        $del1[] = $row['last_action'];
        $del2[] = $row['SUM(qty)'];
        $sql2 = $db->query("SELECT `price` FROM products WHERE id =  '$tit' ");
        $res  = mysqli_fetch_assoc($sql2);
        $del3[]= $res['price'];
        }
}
    else{
        $sql1 = $db->query("SELECT `product`,`last_action` ,SUM(qty) FROM orde WHERE `cancel`=1 GROUP BY `last_action`");
        $json1 = [];
        $json2 = [];
        $json3= array();
        while($row = mysqli_fetch_assoc($sql1)){
            extract($row);

            $tit = $row['product'];
                $json1[] = $row['last_action'];
                $json2[] = $row['SUM(qty)'];
                $sql2 = $db->query("SELECT `price` FROM products WHERE id =  '$tit' ");
                $res  = mysqli_fetch_assoc($sql2);
                $json3[]= $res['price'];
    
    }
    $sql2 = $db->query("SELECT `product`,`last_action` ,SUM(qty) FROM orde WHERE `delivered`=1 GROUP BY `last_action`");
    $del1 = [];
    $del2 = [];
    $del3= array();
    while($row = mysqli_fetch_assoc($sql2)){
        extract($row);

        $tit = $row['product'];
            $del1[] = $row['last_action'];
            $del2[] = $row['SUM(qty)'];
            $sql2 = $db->query("SELECT `price` FROM products WHERE id =  '$tit' ");
            $res  = mysqli_fetch_assoc($sql2);
            $del3[]= $res['price'] * $row['SUM(qty)'];
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
       
      <h2 class = "text-center">Daily Actions</h2>
      <?php include 'include/nav_left.php' ?>
        </div>
        <div class="chart-container col-md-6">
        <form action="net_action.php" method ="post" >
            <div class = "form-group text-center">
                <div class = "col-xs-2"></div>
                <div class = "col-xs-8">
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
       type: 'line',

       data: {
           labels: <?php
                 echo json_encode($json1);
                
            ?>,
           datasets : [{
               label : "CANCELLED Products",
               
               backgroundColor: 'rgba(49, 173, 214, 0.486)',
               borderColor : '#6aae7a',
               borderColor : 'rgba(200,200,200,0.75)',
                 hoverBackgroundColor: 'rgba(200,200,200,1)',
                 hoverBorderColor: 'rgba(200,200,200,1)',
               data : <?php 
               echo json_encode($json2); ?>,
                
           },{
               label : "delivered Products",
               backgroundColor : 'rgba(75,75,75,0.4)',
               borderColor : 'rgba(200,200,200,0.75)',
                 hoverBackgroundColor: 'rgba(200,200,200,1)',
                 hoverBorderColor: 'rgba(200,200,200,1)',
               data : <?php 
               echo json_encode($del2); ?>,
                
           }]
       }
    });
    </script>
    </body>
</html>