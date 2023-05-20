<?php

//load.php

$connect = new PDO('mysql:host=localhost;dbname=dentapp', 'root', '');

$data = array();

$query = "SELECT * FROM events where status = '1' ORDER BY id";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

foreach($result as $row)
{
 $data[] = array(
  'id'   => $row["id"],
  'title'   => "Not Available",
  'start'   => $row["start_event"],
  'end'   => $row["end_event"]
 );
}

echo json_encode($data);

?>
