<?php 
if(isset($_SESSION['error'])){
    $error = $_SESSION['error'];
    echo "
        <script type=\"text/javascript\">
            showErrorMessage('$error');
        </script>
    ";

    unset($_SESSION['error']);
    unset($error);

}

if(isset($_SESSION['success'])){
    $success = $_SESSION['success'];
    
    echo "
        <script type=\"text/javascript\">
            showSuccessMessage('$success')
        </script>
    ";

    unset($_SESSION['success']);
    unset($success);

}