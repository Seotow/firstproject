<!DOCTYPE html>
<html lang="en">
<head>
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
         
        if(empty($_GET['id'])) {
            $_SESSION['error'] = 'Phải truyền mã để sửa';
            header('Location:./index.php');
        };
        $id = $_GET['id'];

        include '../connect.php';
        $sql ="select * from categories
        where id = '$id'";
        $result = mysqli_query($connection,$sql);
        $numbers_row = mysqli_num_rows($result);
        if($numbers_row === 1) {
            $each = mysqli_fetch_array($result);
 
    ?>

<div class="admin-main">
    
    <?php include '../topbar.php' ?>
  
    
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Quản lí thể loại > Sửa</h4>

            <div class="table-responsive">
                <form action="./process_update.php" id="form_insert-manu" class="table-form" method="post">
                    <input type="hidden" name="id" value="<?php echo $_GET['id'];?>">
                    <div class="form-group table-form-group">
                        <label for="name">Tên thể loại</label>
                        <input type="text" name="name" id="name" value="<?php echo $each['name'] ?>">
                    </div>
                    <button type="submit" class="btn btn-primary">Sửa</button>
                    <button class="btn btn-secondary" onclick="history.back()">Hủy</button>
                </form>
        <?php } else { 

        }?>
            </div>
        </div>
        </div>


    </div>

</body>
</html>