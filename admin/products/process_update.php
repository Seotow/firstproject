<?php 
    require '../check_admin.php';

if(empty($_POST['id'])){
    session_start();
    $_SESSION['error'] = 'Phải truyền mã để sửa';
    header('location:index.php');
    exit;
};
$id = $_POST['id'];

if(empty($_POST['name']) || empty($_POST['image_old']) 
|| empty($_POST['price']) || empty($_POST['description'])
|| empty($_POST['manufacturer_id']) || empty($_POST['category_id'])){
    session_start();
    $_SESSION['error'] = 'Phải điền đầy đủ thông tin';
    header('location:form_update.php');
    exit;
};

$name = addslashes($_POST['name']);
$image_new = $_FILES['image_new'];
$file_name = $_POST['image_old'];

if($image_new['size'] > 0) {
    $folder = "../../assets/images/products/";
    $file_extension = explode(".", $image_new['name'])[1];
    $file_name = time() . '.' . $file_extension;
    $path_file = $folder . $file_name;
    move_uploaded_file($image_new["tmp_name"], $path_file);
};

$price = addslashes($_POST['price']);
$description = addslashes($_POST['description']);
$manufacturer_id = addslashes($_POST['manufacturer_id']);
$category_id = addslashes($_POST['category_id']);


require '../connect.php';
$sql = "update products
set  
name = '$name',
image = '$file_name',
price = '$price',
description = '$description',
manufacturer_id = '$manufacturer_id',
category_id = '$category_id'
where id = '$id' 
";

mysqli_query($connection, $sql);
mysqli_close($connection);

session_start();
$_SESSION['success'] = 'Sửa thành công';
header('location:./index.php');