<?php 
session_start();

if(empty($_POST['receiver_name']) || empty($_POST['receiver_phone'])
|| empty($_POST['receiver_address'])) {
    $_SESSION['error'] = 'Vui lòng điền đầy đủ thông tin';
    header('Location: ' . $_SERVER["HTTP_REFERER"] );
    exit;
}

$receiver_name = addslashes($_POST['receiver_name']);
$receiver_phone = addslashes($_POST['receiver_phone']);
$receiver_address = addslashes($_POST['receiver_address']);
$note = addslashes($_POST['note']);

require './admin/connect.php';

$cart = $_SESSION['cart'];
$customer_id = $_SESSION['id'];

$sql = "update customers 
set address = $receiver_address
where id ='$customer_id'";
mysqli_query($connection, $sql);


$total_price = 0;
foreach ($cart as $each) {
    $total_price += $each['quantity'] * $each['price'];
}

$status = 0; // Mới đắt


$sql = "INSERT INTO bills(customer_id, receiver_name, receiver_phone, receiver_address, note, status, total_price) 
VALUES ('$customer_id', '$receiver_name', '$receiver_phone', '$receiver_address', '$note', '$status', '$total_price')";
mysqli_query($connection, $sql);

$sql = "select max(id) as max from bills where customer_id = '$customer_id'";
$result = mysqli_query($connection, $sql);

$bill_id = mysqli_fetch_array($result)['max'];

foreach ($cart as $product_id => $each) {
    $quantity = $each['quantity'];
    $sql = "insert into details_bills(bill_id, product_id, quantity)
    values('$bill_id', '$product_id', '$quantity')";
    mysqli_query($connection, $sql);
}

mysqli_close($connection);
unset($_SESSION['cart']);
unset($_SESSION['quantity']);
$_SESSION['success'] = 'Đặt hàng thành công';
header("location:index.php");
