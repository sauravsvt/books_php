<?php
include('db_config.php');

// Insert sample data into the 'books' table
$sql = "INSERT INTO books (title, author, price, stock)
    VALUES
    ('Book 1', 'Author 1', 19.99, 50),
    ('Book 2', 'Author 2', 24.99, 30),
    ('Book 3', 'Author 3', 14.99, 70)";

if (mysqli_query($conn, $sql)) {
    echo "Sample data inserted successfully";
} else {
    echo "Error inserting data: " . mysqli_error($conn);
}

// Insert sample data for other tables (customers, orders, order_items) similarly
?>
