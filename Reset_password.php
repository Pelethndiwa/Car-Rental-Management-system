<?php
include('includes/config.php'); // Ensure the config.php path is correct

$newPassword = md5('123'); // Replace with your desired new password
$username = 'admin'; // Replace with the admin username you want to reset the password for

$sql = "UPDATE admin SET Password = :newPassword WHERE UserName = :username";
$query = $dbh->prepare($sql);

// Bind the parameters to prevent SQL injection
$query->bindParam(':newPassword', $newPassword, PDO::PARAM_STR);
$query->bindParam(':username', $username, PDO::PARAM_STR);

try {
    // Execute the query and check if it was successful
    if ($query->execute()) {
        echo "Password reset successfully!";
    } else {
        echo "Failed to reset password.";
    }
} catch (PDOException $e) {
    // Output error message if the query fails
    echo "Error: " . $e->getMessage();
}
?>

