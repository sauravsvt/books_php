<?php
$host = "localhost";
$username = "your_username";
$password = "your_password";
$database = "bookworm_haven_db"; // Your database name

$conn = mysqli_connect($host, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
