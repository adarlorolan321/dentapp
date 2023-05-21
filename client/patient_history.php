<?php
include 'app-header.php';
include_once '../admin/dbcon.php';
$uploadDir = '../img/xray/';
$sthandler = $DB_con->prepare("SELECT * FROM patient WHERE username = :username");
$sthandler->bindParam(':username', $_SESSION['username']);
$sthandler->execute();
$trow = $sthandler->fetch();

$pid = $trow['id'];

include 'app-nav.php';

?>

<!-- Display the X-ray history -->
<div class="container">


    <label>X-ray History</label>
    <div class="row">
        <?php
        // Fetch X-ray history for the user
        $xraySql = $DB_con->prepare("SELECT * FROM xray_images WHERE patient_id = :pid");
        $xraySql->bindParam(':pid', $pid);
        $xraySql->setFetchMode(PDO::FETCH_ASSOC);
        $xraySql->execute();
        $xrayHistory = $xraySql->fetchAll();

        if (count($xrayHistory) > 0) {
            foreach ($xrayHistory as $xray) {
        ?>
                <div class="col-sm-2">
                    <div class="col text-center">
                        <a href="<?php echo $uploadDir . $xray['file_name']; ?>" target="_blank">
                            <img class="img-thumbnail img-fluid" src="<?php echo $uploadDir . $xray['file_name']; ?>" alt="X-ray Image">
                        </a>
                        <p class="upload-date"><?php echo $xray['upload_date']; ?> <?php echo $xray['fileDescription']; ?></p>
                    </div>
                </div>
            <?php
            }
        } else {
            ?>
            <div class="col-md-12">
                <p class="no-history text-center">No X-ray history found.</p>
            </div>
        <?php
        }
        ?>
    </div>
</div>