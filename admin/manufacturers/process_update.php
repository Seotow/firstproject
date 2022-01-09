<?php 
    require '../check_super_admin.php';

if(empty($_POST['id'])){
    session_start();
    $_SESSION['error'] = 'Phải truyền mã để sửa';
    header('location:index.php');
    exit;
};
$id = $_POST['id'];

$name = addslashes($_POST['name']);

require '../connect.php';
$sql = "update manufacturers
set
name = '$name'
where id = '$id'
";
// die($sql);

mysqli_query($connection, $sql);

$error = mysqli_error($connection);
session_start();
if(empty($error)) {
    $_SESSION['success'] = 'Sửa thành công';
    header('location:./index.php');
    exit;
} else {
    $_SESSION['error'] = 'Lỗi truy vấn';
    header("location:./form_update.php?id=$id");
    exit;
};

mysqli_close($connection);
