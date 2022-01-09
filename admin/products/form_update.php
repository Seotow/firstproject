<?php 
    session_start();
    require '../check_admin.php'
?>
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
        $id = $_GET['id'];
        include '../menu.php';
        include '../connect.php';
    
        require '../menu.php';
        require '../connect.php';
        $sql = "select * from products 
        where id = '$id'";
        $result = mysqli_query($connection, $sql);
        $each = mysqli_fetch_array($result);
        
        $sql = "select * from manufacturers ";
        $manufacturers = mysqli_query($connection, $sql);

        $sql = "select * from categories ";
        $categories = mysqli_query($connection, $sql);
        mysqli_close($connection);

    ?>

<div class="admin-main">
    
    <?php include '../topbar.php' ?>
  
    
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Quản lí sản phẩm > Sửa</h4>
            <div class="table-responsive">
                <form action="./process_update.php" id="form_update-prod" class="table-form" enctype="multipart/form-data" method="post">
                    <input type="hidden" name="id" value="<?php echo $_GET['id'];?>">
                    <div class="form-group table-form-group">
                        <label for="name">Tên sản phẩm</label>
                        <input rules="required" class="form-control" type="text" name="name" id="name" value="<?php echo $each['name'];?>">
                        <span class="form-message"></span>
                    </div>
                    <div class="form-group table-form-group">
                        <label for="image_new">Ảnh</label>
                        <input type="file" name="image_new">
                        <label for="image_old">Hoặc giữ ảnh cũ</label>

                        <input type="hidden" name="image_old" value="<?php echo $each['image']; ?>"/>
                        <img src="../../assets/images/products/<?php echo $each['image']; ?>" height="100px" >
                    </div>
                    <div class="form-group table-form-group">
                        <label for="price">Giá</label>

                        <input rules="required" class="form-control" type="text" name="price" value="<?php echo $each['price']; ?>">
                        <span class="form-message"></span>
                    </div>
                    <div class="form-group table-form-group">
                        <label for="description">Mô tả</label>

                        <textarea name="description" placeholder="Mô tả sản phẩm" id="description" rows="3">
                            <?php echo $each['description']; ?>
                        </textarea> 
                    </div>
                    <div class="form-group table-form-group">
                        <label for="manufacturer">Nhà sản xuất</label>

                        <select name="manufacturer_id">
                            <?php foreach($manufacturers as $manufacturer) {?>
                                <option
                                    value="<?php echo $manufacturer['id'] ?>"
                                    <?php if($each['manufacturer_id'] == $manufacturer['id']) { ?>
                                        selected
                                    <?php } ?>
                                >
                                    <?php echo $manufacturer['name'] ?>
                                </option>
                            <?php } ?>
                        </select>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="category">Thể loại</label>

                        <select name="category_id">
                            <?php foreach($categories as $category) {?>
                                <option
                                    value="<?php echo $category['id'] ?>"
                                    <?php if($each['category_id'] == $category['id']) { ?>
                                        selected
                                    <?php } ?>
                                >
                                    <?php echo $category['name'] ?>
                                </option>
                            <?php } ?>
                        </select>

                    </div>
                    <button type="submit" class="btn btn-primary">Sửa</button>
                    <a class="btn btn-secondary" href="./index.php">Hủy</a>
                </form>
            </div>

        </div>
    </div>

</div>

    <div id="toast"></div>

    <script src="../../assets/js/validator.js"></script>
    <script src="../../assets/js/toast.js"></script>

    <script>
        Validator('#form_update-prod')
    </script>

    <?php include '../../show_message.php' ?>
    
</body>
</html>