<?php 
    session_start();
    require '../check_admin.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>shopee</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../assets/css/base.css">
    <link rel="stylesheet" href="../../assets/css/style.css">
</head>
<body>
<?php 
    include '../menu.php';
    require '../connect.php';
    $sql = "select 
    * from details_bills
    join products on products.id = details_bills.product_id
    ";
    $result = mysqli_query($connection, $sql);
    $sum = 0;
    mysqli_close($connection);

?>
<div class="admin-main">
    <?php include '../topbar.php' ?>
  
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Quản lí đơn hàng chi tiết</h4>
            <div class="table-responsive">
            <table class="table-form">
                <thead>
                    <tr>
                        <th class="table-form-thead">Ảnh</th>
                        <th class="table-form-thead">Tên sản phẩm</th>
                        <th class="table-form-thead">Giá</th>
                        <th class="table-form-thead">Số lượng</th>
                        <th class="table-form-thead">Tổng tiền</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($result as $each) { ?>
                        <tr>
                            <td class="table-form-item">
                                <img height="100" src="../../assets/images/products/<?php echo $each['image']; ?>">
                            </td>
                            <td class="table-form-item"><?php echo $each['name'] ?></td>
                            <td class="table-form-item">đ<?php echo $each['price'] ?></td>
                            <td class="table-form-item"><?php echo $each['quantity'] ?></td>
                            <td class="table-form-item">
                                đ<?php 
                                    $result = $each['price'] * $each['quantity'];
                                    echo $result;
                                    $sum += $result ;
                                ?>
                            </td>
                        </tr>
                    <?php } ?>
                        <tr>
                            <td class="table-form-item">Tổng </td>
                            <td class="table-form-item"></td>
                            <td class="table-form-item"></td>
                            <td class="table-form-item"></td>
                            <td class="table-form-item" style="font-weight: 700">đ<?php echo $sum ?></td>
                        </tr>
                </tbody>
            </table>
            </div>
        </div>
        </div>


</div>

    <script src="../../assets/js/toast.js"></script>

    <?php include '../../show_message.php' ?>


</body>
</html>