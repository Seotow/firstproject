<?php 

if(empty($_GET['id'])){
    header('location:index.php?error=Phải truyền mã để xóa');
    exit;
};

$id = $_GET['id'];

require '../connect.php';
$sql = "delete from products where id = '$id'";


mysqli_query($connection, $sql);
header('location:./index.php?success=Xóa thành công');
mysqli_close($connection);
