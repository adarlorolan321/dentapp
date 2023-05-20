<?php
require_once '../core/init.php';
if(!is_logged_in()){
    login_error_redirect();
}
include '../admin/include/head.php';
include '../admin/include/navigation.php';
if(isset($_GET['search_submit'])){
    $search = $_GET['search'];
    $search1 = $_GET['search1'];
    $sql =  "SELECT orde.`product`,orde.last_action,SUM(orde.qty), products.title from 
    orde INNER JOIN products on products.id=orde.product WHERE orde.delivered=1 AND orde.last_action BETWEEN
    '$search' AND '$search1'
    GROUP BY `product` ORDER BY SUM(orde.qty) ASC";
    $res = $db->query($sql);
} 
else{
    $sql = "SELECT orde.`product`,orde.last_action,SUM(orde.qty), products.title from 
    orde INNER JOIN products on products.id=orde.product WHERE orde.delivered=1
    GROUP BY `product` ORDER BY SUM(orde.qty) ASC";
    $res = $db->query($sql);
}  
?>
<?php include 'include/nav_left.php' ?>

<div class = "col-md-9 text-center">
<h2 class = "text-center">Lowest Selling Items</h2><hr>
<div class = "col-xs-4"></div>
   <div class = "col-xs-4">
    <form action="lowest.php" method ="get" class ="form-group" >
<input  name="search" id="search" class ="form-control" type="date" value="<?=((!empty($search))?$search:$search)?>">
<input  name="search1" id="search1" class ="form-control" type="date" value="<?=((!empty($search1))?$search1:$search1)?>">
<br>
<input type="submit" name="search_submit" value="Search" class="btn btn-lg btn-warning">
<a href="../reports/low.php?search=<?=$search?>&search1=<?=$search1?>" class="btn btn-lg btn-info">Print <span class="glyphicon glyphicon-print"></span></a>

</form>

<br>
<br>
</div>

<table class="table table-bordered text-center">
<thead class = "bg-danger ">
<th class ="text-center">#</th>
<th class ="text-center">Product</th>
<th class ="text-center">Qty</th>
<th class ="text-center">Date</th>
</thead>
<tbody>
<tr>
    <?php
      $i=0;
    while($row= mysqli_fetch_assoc($res)): 
        $i++;
        ?>
<td><?=$i?></td>
<td><?=$row['title']?></td>
<td><?=$row['SUM(orde.qty)']?></td>
<td><?=$row['last_action']?></td>
</tr>
    <?php
endwhile; ?>
</tbody>
</table