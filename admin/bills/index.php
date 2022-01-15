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
    bills.*,
    customers.name as customer_name,
    customers.phone as customer_phone,
    customers.address as customer_address
    from bills 
    join customers on customers.id= bills.customer_id
    order by bills.status asc, bills.created_at asc
    ";
    $result = mysqli_query($connection, $sql);
    mysqli_close($connection);

?>
<div class="admin-main">
    <?php include '../topbar.php' ?>
  
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Quản lí đơn hàng</h4>
            
            <div class="table-responsive">
            <table class="table-form">
                <thead>
                    <tr>
                        <th class="table-form-thead">Mã</th>
                        <th class="table-form-thead">Thời gian đặt</th>
                        <th class="table-form-thead">Thông tin người đặt</th>
                        <th class="table-form-thead">Thông tin người nhận</th>
                        <th class="table-form-thead">Trạng thái</th>
                        <th class="table-form-thead">Tổng tiền</th>
                        <th class="table-form-thead">Xem</th>
                        <th class="table-form-thead">Sửa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($result as $each) { ?>
                        <tr>
                            <td class="table-form-item"><?php echo $each['id'] ?></td>
                            <td class="table-form-item"><?php echo date( "m/d/Y", strtotime($each['created_at'])); ?></td>
                            <td class="table-form-item">
                                <?php echo $each['customer_name'] ?> <br> 
                                <?php echo $each['customer_phone'] ?> <br> 
                                <?php echo $each['customer_address'] ?> <br> 
                            </td>
                            <td class="table-form-item">
                                <?php echo $each['receiver_name'] ?> <br> 
                                <?php echo $each['receiver_phone'] ?> <br> 
                                <?php echo $each['receiver_address'] ?> <br> 
                            </td>
                            <td class="table-form-item">
                                <?php 
                                    switch($each['status']) {
                                        case '0':
                                            echo "Mới đặt";
                                            break;
                                        case '1':
                                            echo "Đã duyệt";
                                            break;
                                        case '-1':
                                            echo "Đã hủy";
                                            break;
                                    }
                                ?>
                            </td>
                            <td class="table-form-item">đ<?php echo $each['total_price'] ?></td>
                            

                            <td class="table-form-item">
                                <a href="./details.php?id=<?php echo $each['id'] ?>">Xem</a>
                            </td>
                            <td class="table-form-item">
                                <?php 
                                    if($each['status'] == 0){
                                ?>
                                <a href="./update.php?id=<?php echo $each['id'] ?>&status=1">Duyệt</a> <br>
                                <a href="./update.php?id=<?php echo $each['id'] ?>&status=-1">Hủy</a> <br>
                                <?php } ?>
                            </td>
                        </tr>
                    <?php } ?>
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