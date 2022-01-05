<?php 

if(empty($_POST['name'])){
    session_start();
    $_SESSION['error'] = 'Vui lòng điền đầy đủ thông tin';
    header('location:form_insert.php');
};

$name = addslashes($_POST['name']);

require '../connect.php';
$sql = "insert into manufacturers(name) 
values('$name')";


mysqli_query($connection, $sql);
mysqli_close($connection);
session_start();

$_SESSION['success'] = 'Thêm thành công';

header('location:./index.php');