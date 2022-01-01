<?php 

if(empty($_POST['name'])){
    session_start();
    $_SESSION['error'] = 'Vui lòng điền tên để sửa';
    header('location:form_insert.php');
};

$name = addslashes($_POST['name']);
$gender  = addslashes($_POST['gender']);
$level = addslashes($_POST['level']);
$birthdate  = addslashes($_POST['birthdate']);
$phone = addslashes($_POST['phone']);
$address = addslashes($_POST['address']);
$email = addslashes($_POST['email']);
$password = addslashes($_POST['password']);


require '../connect.php';
$sql = "insert into staffs(name, gender, birthdate, phone, address, email, password, level)
values('$name', '$gender', '$birthdate', '$phone', '$address', '$email', '$password', '$level'
)";
die($sql);

mysqli_query($connection, $sql);
mysqli_close($connection);
session_start();

$_SESSION['success'] = 'Thêm thành công';

header('location:./index.php');