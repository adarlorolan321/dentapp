<?php
include_once '../admin/dbcon.php';
session_start();

require_once 'class.user.php';
$session = new USER();

if (!$session->is_loggedin()) {
    $session->redirect('../');
}

$auth_user = new USER();

$user_id = $_SESSION['user_session'];

$stmt = $auth_user->runQuery("SELECT * FROM users WHERE user_id=:user_id");
$stmt->execute(array(":user_id" => $user_id));

$userRow = $stmt->fetch(PDO::FETCH_ASSOC);

include('header.php');
include('nav.php');

// Retrieve the patient ID from the URL or any other source
$patientId = $_GET['patient_id'];
$uploadDir = '../img/xray/';
// Query the database to fetch the X-ray history for the specified patient
$stmt = $DB_con->prepare("SELECT * FROM xray_images WHERE patient_id = :patient_id ORDER BY upload_date DESC");
$stmt->bindParam(':patient_id', $patientId);
$stmt->execute();
$xrayHistory = $stmt->fetchAll(PDO::FETCH_ASSOC);


$stmt = $DB_con->prepare("SELECT * FROM patient WHERE id = :patient_id");
$stmt->bindParam(':patient_id', $patientId);
$stmt->execute();
$patient = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<!-- Display the X-ray history -->
<div class="container">
    <div class="xray-history bottom">
        <div class="">
            <a href="patient.php" class="">Go Back</a>
        </div>
        <div class="patient-details mt-3">
            <h2><?php echo $patient['lastname'], ', ', $patient['firstname']; ?></h2>
            <p><strong>Date of Birth:</strong> <?php echo $patient['birthday']; ?></p>
            <p><strong>Gender:</strong> <?php echo $patient['gender']; ?></p>
            <!-- Add more patient details here -->
        </div>
        <h3 class="mt-3">X-ray History</h3>
        <div class="row">
            <?php if (count($xrayHistory) > 0) { ?>
                <?php foreach ($xrayHistory as $xray) { ?>
                    <div class="col-md-4 col-lg-3 mb-4 ">
                        <div class="card ">
                            <img class="card-img-top" style="height: 170px; object-fit: cover;" src="<?php echo $uploadDir . $xray['file_name']; ?>" alt="X-ray Image">
                            <div class="card-body">
                                <p class="card-text"><strong>Uploaded:</strong> <?php echo $xray['upload_date']; ?></p>
                                <p class="card-text"><strong>Description:</strong> <?php echo $xray['fileDescription']; ?></p>
                                <a href="<?php echo $uploadDir . $xray['file_name']; ?>" target="_blank" class="btn btn-primary btn-sm">View Image</a>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            <?php } else { ?>
                <div class="col-md-12">
                    <p class="no-history text-center">No X-ray history found.</p>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<style>
.bottom{
    margin-bottom: 100px;
}
.mb-4{
    margin-bottom: 20px;
}
.mx{
    margin-left: 10px ;
    margin-right: 10px ;
}
</style>
