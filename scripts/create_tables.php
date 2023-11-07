<?php
include('db_config.php');

$sql = "CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
)";

if (mysqli_query($conn, $sql)) {
    echo "Table 'books' created successfully";
} else {
    echo "Error creating table: " . mysqli_error($conn);
}

// Create other tables (customers, orders, order_items) similarly
?>
