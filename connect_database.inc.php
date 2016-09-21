<?php
    // Create connection
    $conn = new mysqli('localhost', 'root', '', 'lab');

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
        exit;
    }
    
    mysqli_set_charset($conn, 'utf8');
?>