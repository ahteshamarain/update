<?php
include("config.php");

if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['id'])) {
    $user_id = $_GET['id'];
    

    // Perform the deletion query
    $delete_query = "DELETE FROM `userdata` WHERE id = $user_id";
    $result = mysqli_query($connection, $delete_query);

    if ($result) {
        // Return a success message (you can customize this response)
        echo json_encode(['status' => 'success', 'message' => 'User deleted successfully']);
    } else {
        // Return an error message (you can customize this response)
        echo json_encode(['status' => 'error', 'message' => 'Error deleting user']);
    }
} else {
    // Return an error message if the request is invalid
    echo json_encode(['status' => 'error', 'message' => 'Invalid request']);
}
?>
