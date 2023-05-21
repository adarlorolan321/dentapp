<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
// Import necessary libraries
require_once '../PHPMailer/src/Exception.php';

require_once '../PHPMailer/src/PHPMailer.php';

require_once '../PHPMailer/src/SMTP.php';
require_once 'class.user.php';

// Check if the user is logged in
$session = new USER();
if (!$session->is_loggedin()) {
    // Redirect the user if not logged in
    $session->redirect('../');
}

// Create a new PHPMailer instance
$mail = new PHPMailer();
$mail->isSMTP();
$mail->Host = 'smtp.gmail.com';  // Specify your SMTP server
$mail->SMTPAuth = true;
$mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS; 
$mail->Username = 'Adarlo Rolan Morante';
$mail->Password = 'Sasuke17*';
$mail->SMTPSecure = 'tls';
$mail->Port = 587;

// Set the sender and recipient email addresses
$mail->setFrom('adarlorolan14@gmail.com', 'Sender Name');
$mail->addAddress('jeaniah.arevir@gmail.com', 'Recipient Name');

// Set the email subject and body
$mail->Subject = 'Test Email';
$mail->Body = 'This is a test email sent from the server.';

// Attempt to send the email
if ($mail->send()) {
     'success'; // Return 'success' if the email is sent successfully
} else {
    echo 'error'; // Return 'error' if there's an error sending the email
}
