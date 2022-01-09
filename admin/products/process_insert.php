<?php 
    require '../check_admin.php';

if(empty($_POST['name']) || empty($_FILES['image']) 
|| empty($_POST['price']) || empty($_POST['description'])
|| empty($_POST['manufacturer_id']) || empty($_POST['category_id'])){
    session_start();
    $_SESSION['error'] = 'Phải điền đầy đủ thông tin';
    header('location:form_insert.php');
    exit;
};

$name = addslashes($_POST['name']);
$image = $_FILES['image'];
$price = addslashes($_POST['price']);
$description = addslashes($_POST['description']);
$manufacturer_id = addslashes($_POST['manufacturer_id']);
$category_id = addslashes($_POST['category_id']);

$folder = "../../assets/images/products/";
$file_extension = explode(".", $image['name'])[1];
$file_name = time() . '.' . $file_extension;
$path_file = $folder . $file_name;

move_uploaded_file($image["tmp_name"], $path_file);

require '../connect.php';
$sql = "insert into products(name ,image ,price ,description ,manufacturer_id ,category_id) 
values('$name' ,'$file_name' ,'$price' ,'$description' ,'$manufacturer_id' ,'$category_id')";

mysqli_query($connection, $sql);
mysqli_close($connection);


session_start();
$_SESSION['success'] = 'Thêm thành công';
header('location:./index.php');