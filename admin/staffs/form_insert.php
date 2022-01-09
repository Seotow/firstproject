<?php 
    session_start();
    require '../check_super_admin.php';
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
        include '../menu.php';
    ?>

<div class="admin-main">
    
    <?php include '../topbar.php' ?>
  
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Quản lí nhân viên > Thêm</h4>
            
            <div class="table-responsive">
                <form action="./process_insert.php" id="form_insert-staff" class="table-form" enctype="multipart/form-data" method="POST">
                    <div class="form-group table-form-group">
                        <label for="name">Tên nhân viên</label>
                        <input class="form-control" type="text" rules="required" name="name" id="name" placeholder="Tên nhân viên">
                        <span class="form-message"></span>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="gender">Giới tính</label>
                        <select name="gender" id="gender">
                            <option value="1">Nam</option>
                            <option value="0">Nữ</option>
                        </select>
                    
                    </div>
                    <div class="form-group table-form-group">
                        <label for="birthdate">Ngày sinh</label>
                        <input class="form-control" type="date" rules="required" name="birthdate" id="birthdate">
                        <span class="form-message"></span>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="phone">Số điện thoại</label>
                        <input class="form-control" type="text" rules="required" name="phone" id="phone" placeholder="Số điện thoại">
                        <span class="form-message"></span>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="address">Địa chỉ</label>
                        <input class="form-control" type="text" rules="required" name="address" id="address" placeholder="Địa chỉ">
                        <span class="form-message"></span>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="email">Email</label>
                        <input class="form-control" type="email" rules="required|email" name="email" id="email" placeholder="Email">
                        <span class="form-message"></span>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="password">Mật khẩu</label>
                        <input class="form-control" type="password" rules="required|min:6" name="password" id="password" placeholder="Mật khẩu">
                        <span class="form-message"></span>

                    </div>
                    <div class="form-group table-form-group">
                        <label for="password_confirmation">Nhập lại mật khẩu</label>
                        <input class="form-control" type="password" rules="required|confirm" name="password_confirmation" id="password_confirmation" placeholder="Nhập lại mật khẩu">
                        <span class="form-message"></span>

                    </div>
                    
                    <button type="submit" class="btn btn-primary">Thêm</button>
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
        Validator('#form_insert-staff')
    </script>
</body>
</html>