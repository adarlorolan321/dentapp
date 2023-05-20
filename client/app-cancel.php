<?php
include 'app-header.php'; 
include_once '../admin/dbcon.php';
require 'PHPMailer/class.phpmailer.php';
require 'PHPMailer/class.smtp.php';       

if(isset($_POST['btn-del']))
{
	$id = $_GET['cancel_id']; 
    $reason = $_POST['reason'];

        $query = $DB_con->prepare("SELECT * FROM events where id = '".$id."'");
        $query->setFetchMode(PDO::FETCH_ASSOC);
        $query->execute();
        $row=$query->fetch();
        $pid = $row["patient_id"];
        $title = $row["title"];
        $dates = $row["start_event"];

        $query2= $DB_con->prepare("SELECT * FROM patient where id = '".$pid."'");
        $query->setFetchMode(PDO::FETCH_ASSOC);
        $query->execute();
        $row=$query2->fetch();
        $email = $row["email"];

        $stmt = $DB_con->prepare("UPDATE events SET status = '0', changes = 'Cancelled Appointment' WHERE id=:id");
        $stmt->bindparam(":id",$id);
        $stmt->execute();

        $sql = "INSERT INTO cancelled(app_id, title, dates, canc, reason) 
                VALUES ('".$id."','".$title."','".$dates."',NOW(),'".$reason."')";
              $stt= $DB_con->prepare($sql);
              $stt->execute(); 

              $mail = new PHPMailer();
              $mail->IsSMTP(); 
              $mail->Mailer = "smtp";
               $mail->Port = 465;
                $mail->SMTPSecure = 'ssl';
                 $mail->Host = "smtp.gmail.com";
              $mail->SMTPAuth = true; // turn on SMTP authentication
              $mail->Username = "adarlorolan14@gmail.com"; // SMTP username
              $mail->Password = "xjjydoedxqpmbhha"; // SMTP password 
              $Mail->Priority = 1;
  
              $mail->AddAddress($email,"");
              $mail->SetFrom('adarlorolan14@gmail.com', 'Search Dev');
              $mail->AddReplyTo('adarlorolan14@gmail.com', 'Search Dev');
  
              $mail->Subject  = "Order Details";
              $mail->Body     =
              $mail->WordWrap = 50;  
  
              if(!$mail->Send()) {
              echo 'Message was not sent.';
              echo 'Mailer error: ' . $mail->ErrorInfo;
              } else {
              echo 'Message has been sent.';
              }    

	header("Location: index.php?cancelled");	
}

?>

<div class="clearfix"></div>

<div class="container">

	<?php
	if(isset($_GET['cancelled']))
	{
		?>
        <div class="alert alert-success">
    	<strong>Success!</strong> ... 
		</div>
        <?php
	}
	else
	{
		?>
        <div class="alert alert-warning">
    	<strong>Sure</strong> to cancel the appointment ? 
		</div>
        <?php
	}
	?>	
</div>

<div class="container">
<p>
<?php
if(isset($_GET['cancel_id']))
{
    $pid = $_GET['pid'];
    $stm = $DB_con->prepare("SELECT * FROM events where changes = 'Cancelled Appointment' AND patient_id='".$pid."'" );
    $stm->setFetchMode(PDO::FETCH_ASSOC);
    $stm->execute();

    if($stm->rowCount() >= 30)
    {
        header("Location: index.php?6");
    } 
    else {

	?>
  	<form method="post">
    <label>Please state your reason</label>
    <input type="text" class="form-control" name="reason" id="reason" required>
    <input type="hidden" name="id" value="<?php echo $row['id']; ?>" /><br />
    <button class="btn btn-large btn-submit" type="submit" name="btn-del"><i class="glyphicon glyphicon-check"></i> &nbsp; YES</button>
    <a href="index.php" class="btn btn-large btn-submit"><i class="glyphicon glyphicon-backward"></i> &nbsp; NO</a>
    </form>  
	<?php
    }
}
else
{
	?>
    <a href="index.php" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp; Back to index</a>
    <?php
}
?>
</p>
</div>	
