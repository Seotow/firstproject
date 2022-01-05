<?php 

if(empty($_GET['id'])){
    $_SESSION['error'] = 'Phải truyền mã để xóa';
    header('location:index.php');
    exit;
};

$id = $_GET['id'];



require '../connect.php';
$sql = "delete from categories where id = '$id'";


mysqli_query($connection, $sql);
session_start();
$_SESSION['success'] = 'Xóa thành công';
header('location:./index.php');
mysqli_close($connection);
