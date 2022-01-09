<?php 
    require '../check_admin.php';

if(empty($_POST['name']) || empty($_FILES['image'])){
    session_start();
    $_SESSION['error'] = 'Vui lòng điền đầy đủ thông tin';
    header('location:./form_insert.php');
    exit;
};

$name = addslashes($_POST['name']);
$image = $_FILES['image'];

require '../connect.php';
$sql = "insert into categories(name) values ('$name');";
mysqli_query($connection, $sql);


$sql = "select max(id) as lastID from categories";
$result = mysqli_query($connection, $sql);
$lastID = mysqli_fetch_array($result)['lastID'];

$folder = "../../assets/images/categories/";
$file_name = $lastID . '.png';
$path_file = $folder . $file_name;

move_uploaded_file($image["tmp_name"], $path_file);


mysqli_close($connection);

session_start();

$_SESSION['success'] = 'Thêm thành công';

header('location:./index.php');