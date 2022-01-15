<?php 
    require '../check_super_admin.php';
if( empty($_POST['name'] 
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
$gender  = addslashes($_POST['gender']);
$birthdate  = $_POST['birthdate'];
$phone = addslashes($_POST['phone']);
$address = addslashes($_POST['address']);
$email = addslashes($_POST['email']);
$password = addslashes($_POST['password']);


require '../connect.php';
$sql = "insert into staffs(name, gender, birthdate, phone, address, email, password)
values('$name', '$gender', '$birthdate', '$phone', '$address', '$email', '$password')";

mysqli_query($connection, $sql);
mysqli_close($connection);
session_start();

$_SESSION['success'] = 'Thêm thành công';

header('location:./index.php');