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
        require '../menu.php';
        require '../connect.php';
        $sql = "select * from manufacturers ";
        $manufacturers = mysqli_query($connection, $sql);
        $sql = "select * from categories ";
        $categories = mysqli_query($connection, $sql);
    ?>
    <div class="admin-main">
    
    <?php include '../topbar.php' ?>
  
    
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Quản lí nhà sản xuất > Thêm</h4>
            
            <div class="table-responsive">
                <form action="./process_insert.php" id="form_update-product" class="table-form" method="post" enctype="multipart/form-data">
                    <div class="form-group table-form-group">
                        <label for="name">Tên sản phẩm</label>
                        <input type="text" name="name" id="name" placeholder="Tên sản phẩm">
                    </div>
                    <div class="form-group table-form-group">
                        <label for="image">Ảnh</label>
                        <input type="file" name="image" id="image" >
                        
                    </div>
                    <div class="form-group table-form-group">
                        <label for="price">Giá</label>

                        <input type="text" name="price" placeholder="Giá">
                    </div>
                    <div class="form-group table-form-group">
                        <label for="description">Mô tả</label>

                        <textarea name="description" placeholder="Mô tả sản phẩm" id="description" rows="3"></textarea> 
                    </div>
                    <div class="form-group table-form-group">
                        <label for="manufacturer">Nhà sản xuất</label>

                        <select name="manufacturer_id">
                            <?php foreach($manufacturers as $manufacturer) {?>
                                <option value="<?php echo $manufacturer['id'] ?>" >
                                    <?php echo $manufacturer['name'] ?>
                                </option>
                            <?php } ?>
                        </select>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="category">Thể loại</label>

                        <select name="category_id">
                            <?php foreach($categories as $category) {?>
                                <option value="<?php echo $category['id'] ?>" >
                                    <?php echo $category['name'] ?>
                                </option>
                            <?php } ?>
                        </select>

                    </div>
                    <button type="submit" class="btn btn-primary">Thêm</button>
                    <button class="btn btn-secondary" onclick="history.back()">Hủy</button>
                </form>
            </div>

        </div>
    </div>

</div>
</body>
</html>