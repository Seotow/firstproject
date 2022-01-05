<?php 

$email = $_POST['email'];
$password = addslashes($_POST['password']);
if(isset($_POST['remember'])){
    $remember = true;
} else {
    $remember = false;
}

require './admin/connect.php';
$sql = "select * from customers
where email = '$email' and password = '$password'";

$result = mysqli_query($connection, $sql);
$number_rows = mysqli_num_rows($result);

if($number_rows != 1) {
    session_start();
    $_SESSION['error'] = 'Email hoặc mật khẩu không chính xác';
    header("location:index.php");
    exit;
};

session_start();
$each = mysqli_fetch_array($result);
$_SESSION['id'] = $each['id'];
$_SESSION['name'] = $each['name'];
if($remember){
    setcookie('remember', $each['id'], time() + 3600 * 24 * 30);
}

mysqli_close($connection);

$_SESSION['success'] = 'Đăng nhập thành công';

header("location:index.php");
