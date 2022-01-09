<?php 

session_start();
unset($_SESSION['id']);
unset($_SESSION['name']);
unset($_SESSION['level']);
unset($_SESSION['error']);

$_SESSION['success'] = 'Đăng xuất thành công';

header("location:index.php");
