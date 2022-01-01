<?php 

if(empty($_POST['id'])){
    session_start();
    $_SESSION['error'] = 'Phải truyền mã để sửa';
    header('location:index.php');
    exit;
};
$id = $_POST['id'];

$name = addslashes($_POST['name']);
$gender = addslashes($_POST['gender']);
$birthdate = addslashes($_POST['birthdate']);
$phone = addslashes($_POST['phone']);
$address = addslashes($_POST['address']);
$email = addslashes($_POST['email']);
$password = addslashes($_POST['password']);
$level = addslashes($_POST['level']);

require '../connect.php';
$sql = "update ignore staffs
set
name = '$name',
gender = '$gender',
birthdate = '$birthdate',
phone = '$phone',
address = '$address',
email = '$email',
password = '$password',
level = '$level'
";

mysqli_query($connection, $sql);

$error = mysqli_error($connection);
session_start();
if(empty($error)) {
    $_SESSION['success'] = 'Xóa thành công';
    header('location:./index.php');
} else {
    $_SESSION['error'] = 'Lỗi truy vấn';
    header("location:./form_update.php?id=$id");
};

mysqli_close($connection);
