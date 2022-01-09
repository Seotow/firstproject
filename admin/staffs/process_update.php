<?php 
    require '../check_super_admin.php';

if(empty($_POST['id'])){
    session_start();
    $_SESSION['error'] = 'Phải truyền mã để sửa';
    header('location:index.php');
    exit;
};
$id = $_POST['id'];

if( empty($_POST['name'] || empty($_POST['name']) 
    || empty($_POST['gender']) 
    || empty($_POST['birthdate']) || empty($_POST['phone']) 
    || empty($_POST['address']) || empty($_POST['email']) 
    || empty($_POST['password'])
)){
    session_start();
    $_SESSION['error'] = 'Vui lòng điền đầy đủ thông tin';
    header('location:form_insert.php');
    exit;
};

$name = addslashes($_POST['name']);
$gender = addslashes($_POST['gender']);
$birthdate = addslashes($_POST['birthdate']);
$phone = addslashes($_POST['phone']);
$address = addslashes($_POST['address']);
$email = addslashes($_POST['email']);
$password = addslashes($_POST['password']);

require '../connect.php';
$sql = "update ignore staffs
set
name = '$name',
gender = '$gender',
birthdate = '$birthdate',
phone = '$phone',
address = '$address',
email = '$email',
password = '$password'
";

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
