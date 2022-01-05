<?php 

session_start();
$id = $_GET['id'];

unset($_SESSION['cart'][$id]);

$_SESSION['success'] = 'Xóa thành công';

header('Location:./view_all_cart.php');