<?php
class Database
{   
    /* $DB_HOST = 'localhost';
    $DB_USER = 'u655308956_tutor';
    $DB_PASS = 'www.g2ix.com';
    $DB_NAME = 'dentapp';
    */
    private $host = "localhost";
    private $db_name = "dentapp";
    private $username = "root";
    private $password = "";
    public $conn;
     
    public function dbConnection()
	{
     
	    $this->conn = null;    
        try
		{
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
			$this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);	
        }
		catch(PDOException $exception)
		{
            echo "Connection error: " . $exception->getMessage();
        }
         
        return $this->conn;
    }
}
$db=mysqli_connect('localhost','root','','dentapp');
if(mysqli_connect_errno())
{
    echo 'Database connection failed with following errors' .mysqli_connect_error();
    die();
}

?>