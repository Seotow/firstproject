<?php 

if(empty($_POST['id'])){
    session_start();
    $_SESSION['error'] = 'Phải truyền mã để sửa';
    header('location:index.php');
    exit;
};
$id = $_POST['id'];

if(empty($_POST['name']) ){
    session_start();
    $_SESSION['error'] = 'Phải điền đầy đủ thông tin';
    header("location:form_update.php?id=$id");
};


$name = addslashes($_POST['name']);
$image_new = $_FILES['image_new'];


if($image_new['size'] > 0) {
    unlink("../../assets/images/categories/$id.png");

    $folder = "../../assets/images/categories/";
    $file_name = $id . '.png';
    $path_file = $folder . $file_name;
    move_uploaded_file($image_new["tmp_name"], $path_file);
};

require '../connect.php';
$sql = "update categories
set
name = '$name'
where id = '$id'
";
// die($sql);

mysqli_query($connection, $sql);

$error = mysqli_error($connection);
session_start();
if(empty($error)) {
    $_SESSION['success'] = 'Sửa thành công';
    header('location:./index.php');
} else {
    $_SESSION['error'] = 'Lỗi truy vấn';
    header("location:./form_update.php?id=$id");
};

mysqli_close($connection);
