<?php
$servername = "192.168.50.5";
$username = "leonardo"; 
$password = "admin@123";
$dbname = "myapp";


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO MyGuests (firstname, lastname)
VALUES ('".$_POST["fname"]."', '".$_POST["lname"]."')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

