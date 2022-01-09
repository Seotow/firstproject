<?php 
    session_start();
    if(isset($_SESSION['level'])){
        header('location:./root/index.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADMIN</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/base.css">
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<div class="modal active">      
    <div class="modal__overlay"></div>
    <div class="modal__body">

<form class="auth-form signin auth-form-admin" id="signin-form" action="./process_signin.php" method="post">
    <div class="auth-form__header">
        <h3 class="auth-form__heading">Đăng Nhập</h3>
    </div>

    <div class="auth-form__form">
        <div class="auth-form__group form-group">
            <input rules="required|email" name="email" type="email" class="form-control auth-form__input" placeholder="Email/Tên đăng nhập">
            <span class="form-message"></span>
        </div>
        <div class="auth-form__group form-group">
            <input rules="required" name="password" type="password" class="form-control auth-form__input" placeholder="Mật khẩu">
            <span class="form-message"></span>
            <span class="fas fa-eye toggle-password"></span>
        </div>
    </div>


    <div class="auth-form__control">
        <button class="btn btn-primary btn--next">Đăng nhập</button>
    </div>

    <div class="auth-form__help">
        <a href="#" class="auth-form__help-btn auth-form__help--forgot ">Quên mật khẩu</a>
        <a href="#" class="auth-form__help-btn auth-form__help--SMS-login">Đăng nhập với SMS</a>
    </div>

    <div class="auth-form__socials">
        <div class="auth-form__socials-login-with">
            <div class="auth-form__socials-line"></div>
            <span class="auth-form__socials-text">
                Hoặc
            </span>
            <div class="auth-form__socials-line"></div>
        </div>
        <div class="auth-form__socials-login-with">
            <a href="#" class="btn btn--with-icon btn-fb">
                <i class="fab fa-facebook"></i>
                <span class="auth-form__social">
                    Facebook
                </span>    
            </a>
            <a href="#" class="btn btn--with-icon btn-gg">
                <i class="fab fa-google"></i>
                <span class="auth-form__social">
                    Google
                </span>  
            </a>
            <a href="#" class="btn btn--with-icon btn-apple">
                <i class="fab fa-apple"></i>
                <span class="auth-form__social">
                    Apple
                </span>  
            </a>
        </div>
    </div>
</form>

    </div>
</div>
    <div id="toast"></div>
    
    <script src="../assets/js/validator.js"></script>
    <script src="../assets/js/toast.js"></script>
    <script>
        Validator('#signin-form')
    </script>
    <?php include '../show_message.php' ?>
</body>
</html>