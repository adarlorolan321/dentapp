<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  // Check if a file was selected
  if (isset($_FILES['xray_image']) && $_FILES['xray_image']['error'] === UPLOAD_ERR_OK) {
    // Retrieve the patient ID
    $patientId = $_POST['patient_id'];
    $fileDescription = $_POST['fileDescription'];
    
    // Define the directory where you want to store the uploaded images
    $uploadDir = '../img/xray/';

    // Generate a unique file name for the uploaded image
    $fileName = uniqid('xray_') . '_' . $_FILES['xray_image']['name'];

    // Move the uploaded file to the destination directory
    if (move_uploaded_file($_FILES['xray_image']['tmp_name'], $uploadDir . $fileName)) {
      // File uploaded successfully, you can now save the file information to the database or perform any other actions

      // Example: Save the file information to the database
      include_once '../admin/dbcon.php';
      $stmt = $DB_con->prepare("INSERT INTO xray_images (patient_id, file_name, fileDescription) VALUES (:patient_id, :file_name, :fileDescription)");
      $stmt->bindParam(':patient_id', $patientId);
      $stmt->bindParam(':file_name', $fileName);
      $stmt->bindParam(':fileDescription', $fileDescription);
      $stmt->execute();

      // Redirect back to the patient.php page or display a success message
      header('Location: patient.php');
      exit();
    } else {
      // File upload failed
      echo 'Failed to upload the file.';
    }
  } else {
    // No file selected or error occurred during the upload
    echo 'Please select a valid file.';
  }
} else {
  // Redirect back to the patient.php page if accessed directly without a POST request
  header('Location: patient.php');
  exit();
}
