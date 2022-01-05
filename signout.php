<?php 

session_start();
unset($_SESSION['id']);
unset($_SESSION['name']);
unset($_SESSION['error']);
setcookie('remember', null, -1 );

$_SESSION['success'] = 'Đăng xuất thành công';

header("location:index.php");
