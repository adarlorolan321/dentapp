<?php

//insert.php

$connect = new PDO('mysql:host=localhost;dbname=dentapp', 'u655308956_tutor', 'www.g2ix.com');

if(isset($_POST["title"]))
{
	

 $query = "
 INSERT INTO events 
 (title, start_event, end_event, dates) 
 VALUES (:title, :start_event, :end_event, :dates)
 ";
 $statement = $connect->prepare($query);
 $statement->execute(
  array(
   ':title'  => $_POST['title'],
   ':start_event' => $_POST['start'],
   ':end_event' => $_POST['end'],
   ':dates' =>  $_POST['start']

  )
 );
}


?>