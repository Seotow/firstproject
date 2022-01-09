<?php 

$email = addslashes($_POST['email']);
$password =  addslashes($_POST['password']);
if(isset($_POST['remember'])){
    $remember = true;
} else {
    $remember = false;
}

require 'connect.php';

$sql = "select * from staffs 
where email = '$email' and password = '$password'";

$result = mysqli_query($connection, $sql);

if(mysqli_num_rows($result) != 1){
    session_start();
    $_SESSION['error'] = 'Sai tài khoản hoặc mật khẩu';
    header("Location:./index.php");
    exit;
}

$each = mysqli_fetch_array($result);

session_start();

$_SESSION['id'] = $each['id'];
$_SESSION['name'] = $each['name'];
$_SESSION['level'] = $each['level'];
$_SESSION['success'] = 'Đăng nhập thành công';


mysqli_close($connection);
header('location:root/index.php');

