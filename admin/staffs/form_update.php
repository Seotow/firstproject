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
        $sql ="select * from staffs
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
            <h4 class="card-title">Quản lí nhân viên > Sửa</h4>
            
            <div class="table-responsive">
                <form action="./process_update.php" id="form_update-staff" class="table-form" enctype="multipart/form-data" method="POST">
                    <input type="hidden" name="id" value="<?php echo $_GET['id'];?>">
                    <div class="form-group table-form-group">
                        <label for="name">Tên nhân viên</label>
                        <input class="form-control" type="text" rules="required" name="name" id="name" value="<?php echo $each['name']; ?>">
                        <span class="form-message"></span>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="gender">Giới tính</label>
                        <select name="gender" id="gender">
                            <?php 
                                if($each['gender'] == 0) {
                            ?>
                                <option value="1">Nam</option>
                                <option value="0" selected>Nữ</option>
                            <?php } else {?>
                                <option value="1" selected>Nam</option>
                                <option value="0">Nữ</option>
                            <?php }?>
                        </select>
                        <label for="level">Cấp độ </label>
                        <select name="level" id="level">
                            <?php 
                                if($each['level'] == 0) {
                            ?>
                                <option value="1">Quản lí</option>
                                <option value="0" selected>Nhân viên</option>
                            <?php } else {?>
                                <option value="1" selected>Quản lí</option>
                                <option value="0">Nhân viên</option>
                            <?php }?>
                        </select>
                    </div>
                    <div class="form-group table-form-group">
                        <label for="birthdate">Ngày sinh</label>
                        <input class="form-control" type="date" rules="required" name="birthdate" id="birthdate" value="<?php echo $each['birthdate']; ?>"> 
                        <span class="form-message"></span>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="phone">Số điện thoại</label>
                        <input class="form-control" type="text" rules="required" name="phone" id="phone" placeholder="Số điện thoại" value="<?php echo $each['phone']; ?>">
                        <span class="form-message"></span>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="address">Địa chỉ</label>
                        <input class="form-control" type="text" rules="required" name="address" id="address" placeholder="Địa chỉ" value="<?php echo $each['address']; ?>">
                        <span class="form-message"></span>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="email">Email</label>
                        <input class="form-control" type="email" rules="required|email" name="email" id="email" placeholder="Email" value="<?php echo $each['email']; ?>">
                        <span class="form-message"></span>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="password">Mật khẩu</label>
                        <input class="form-control" type="text" rules="required|min:6" name="password" id="password" placeholder="Mật khẩu" value="<?php echo $each['password']; ?>">
                        <span class="form-message"></span>

                    </div>
                    
                    <button type="submit" class="btn btn-primary">Sửa</button>
                    <button class="btn btn-secondary" onclick="history.back()">Hủy</button>
                </form>
        <?php } else { ?>
        
        <?php } ?>
            </div>
        </div>
        </div>


    </div>

    <div id="toast"></div>

    <script src="../../assets/js/validator.js"></script>
    <script src="../../assets/js/toast.js"></script>


    <script>
        Validator('#form_update-staff')
    </script>
</body>
</html>