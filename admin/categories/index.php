<?php session_start() ?>
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
    $sql = "select * from categories order by id desc";
    $result = mysqli_query($connection, $sql);
?>
<div class="admin-main">
    <?php include '../topbar.php' ?>
  
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Quản lí thể loại</h4>
            <p class="card-description">
                <a class="card-add"href="./form_insert.php">
                    Thêm thể loại
                </a>
            </p>
            <div class="table-responsive">
            <table class="table-form">
                <thead>
                    <tr>
                        <th class="table-form-thead">Mã</th>
                        <th class="table-form-thead">Tên</th>
                        <th class="table-form-thead">Ảnh</th>
                        <th class="table-form-thead">Sửa</th>
                        <th class="table-form-thead">Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($result as $each) { ?>
                    <tr>
                        <td class="table-form-item"><?php echo $each['id'] ?></td>
                        <td class="table-form-item"><?php echo $each['name'] ?></td>
                        <td class="table-form-item">
                            <img height="100" src="../../assets/images/categories/<?php echo $each['id']; ?>.png">
                        </td>
                        <td class="table-form-item">
                            <a href="./form_update.php?id=<?php echo $each['id'] ?>">Sửa</a>
                        </td>
                        <td class="table-form-item">
                            <a href="./delete.php?id=<?php echo $each['id'] ?>">Xóa</a>
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
            </div>
        </div>
        </div>


</div>

    <div id="toast"></div>


    <script src="../../assets/js/toast.js"></script>

    <?php include '../../show_message.php' ?>
    

</body>
</html>