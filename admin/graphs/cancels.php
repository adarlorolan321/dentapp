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
$sql = "SELECT orde.`product`,orde.`last_action`,products.price,products.title,orde.qty FROM `orde` 
INNER JOIN products on products.id=orde.product WHERE last_action BETWEEN '$search' AND '$search1' AND cancel = 1";
$res = $db->query($sql);
}
else
{
    $sql = "SELECT orde.`product`,orde.`last_action`,products.price,products.title,orde.qty FROM `orde` 
    INNER JOIN products on products.id=orde.product WHERE cancel = 1";
    $res = $db->query($sql);   
}
?>
<br><br><br>

<?php include 'include/nav_left.php' ?>

<div class = "col-md-9 text-center">
<h2 class = "text-center">Income Loss</h2><hr>
<div class = "col-xs-2"></div>
   <div class = "col-xs-6">
    <form action="cancels.php" method ="get" class ="form-group" >
    <div class = col-md-6>
<input name="search" id="search" class ="form-control" type="date" value="<?=((!empty($search))?$search:$search)?>">
</div>
<div class = col-md-6>
<input name="search1" id="search1" class ="form-control" type="date" value="<?=((!empty($search1))?$search1:$search1)?>">
</div>
<br><br>
<input type="submit" name="search_submit" value="Search" class="btn btn-lg btn-warning">
<a href="../reports/cancel.php?search=<?=$search?>&search1=<?=$search1?>" class="btn btn-lg btn-info">Print <span class="glyphicon glyphicon-print"></span></a>

</form>

<br>
<br>
</div>

<table class="table table-bordered text-center">
<thead class = "bg-danger ">
<th class ="text-center">#</th>
<th class ="text-center">Product</th>
<th class ="text-center">Date</th>
<th class ="text-center">Total Price</th>
</thead>
<tbody>
<tr>
    <?php
    $gt=0;
    $i=0;
    while($row= mysqli_fetch_assoc($res)): 
    $tot =  $row['price'] *$row['qty']; 
    $i++;  
        ?>
<td><?=$i?></td>
<td><?=$row['title']?></td>
<td><?=pretty($row['last_action'])?></td>
<td><?=money($tot)?></td>
</tr>
    <?php
$gt+=$tot;
endwhile; ?>
</tbody>
</table>

<h2>Total <?=money($gt)?></h2>
