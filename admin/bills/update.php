<?php 
require '../check_admin.php';
require '../connect.php';

$id = $_GET['id'];
$status = $_GET['status'];

$sql = "update bills 
set status = '$status' where id = '$id'";

switch ($status) {
    case '1':
        $msg = "Duyệt";
        break;
    case '-1':
        $msg = "Hủy";
        break;
}

session_start();
$_SESSION['success'] = "$msg Thành công";
header("Location:./index.php");

mysqli_query($connection, $sql);