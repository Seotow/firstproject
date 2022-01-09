<?php 
    require '../check_super_admin.php';

if(empty($_GET['id'])){
    $_SESSION['error'] = 'Phải truyền mã để xóa';
    header('location:index.php');
    exit;
};

$id = $_GET['id'];

if($id == $_SESSION['id']){
    $_SESSION['error'] = 'Không thể xóa bản thân';
    header('location:index.php');
    exit;
}

require '../connect.php';
$sql = "delete from staffs where id = '$id'";


mysqli_query($connection, $sql);
session_start();
$_SESSION['success'] = 'Xóa thành công';
header('location:./index.php');
mysqli_close($connection);
