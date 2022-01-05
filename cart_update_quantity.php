<?php 

session_start();
$id = $_GET['id'];



if($_GET['type'] == 'decrease'){
    if($_SESSION['cart'][$id]['quantity'] > 1){
        $_SESSION['cart'][$id]['quantity']--;
    }
    
} else {
    $_SESSION['cart'][$id]['quantity']++;

}



header('Location: ' . $_SERVER["HTTP_REFERER"] );
