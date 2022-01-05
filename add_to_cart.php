<?php 
session_start();
unset($_SESSION['cart']);
$id = $_GET['id'];
$_SESSION['cart_id'] = $id;

if(empty($_SESSION['cart'][$id])){
    require './admin/connect.php';
    $sql = "select * from products
    where id = '$id'";
    $result = mysqli_query($connection, $sql);
    $each = mysqli_fetch_array($result);
    $_SESSION['cart'][$id]['name'] = $each['name'];
    $_SESSION['cart'][$id]['image'] = $each['image'];
    $_SESSION['cart'][$id]['price'] = $each['price'];
    $_SESSION['cart'][$id]['quantity'] = 1;
    
} else {
    $_SESSION['cart'][$id]['quantity']++;
}

$_SESSION['success'] = 'Thêm thành công';

// echo json_encode($_SESSION['cart']['id']);
// echo json_encode($_SESSION['cart']);
header('Location: ' . $_SERVER["HTTP_REFERER"] );


