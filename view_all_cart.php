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
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
    <div class="main">
        <?php 
            include('./navbar.php');
            if(empty($_SESSION['id'])){
                $_SESSION['error'] = 'Vui lòng đăng nhập';
                header('Location: ' . $_SERVER["HTTP_REFERER"] );

            }
        ?>
        
        <div class="content-section">
            <div class="grid content">
                <div class="grid__row">
                    <header class="cart-content cart-header">
                        <div class="cart-product">
                            Sản phẩm
                        </div>
                        <div class="cart-price">
                            Đơn giá
                        </div>                
                        <div class="cart-quantity">
                            Số lượng
                        </div>                
                        <div class="cart-sum">
                            Thành tiền
                        </div>                
                        <div class="cart-action">
                            Thao tác
                        </div>                
                    </header>
                </div>
            </div>
            <div class="grid content">
                <div class="grid__row">
                    <div class="cart-content cart-list">

                    <?php 
                        if(isset($_SESSION['id']) || isset($_SESSION['cart'])){
                        $cart = $_SESSION['cart'];
                        require './admin/connect.php';
                        foreach ($cart as $id => $each) {
                    ?>
                        <div class="cart-item">
                            <div class="cart-product">
                                <!-- <div class="cart-product-img" background="url('./assets/images/nocart.png')"></div> -->
                                <img src="./assets/images/products/<?php echo $each['image'] ?>" class="cart-product-img"> 
                                <div class="cart-poduct-name">
                                    <?php echo $each['name'] ?>
                                    
                                </div>
                            </div>
                            <div class="cart-price">
                               đ<?php echo $each['price'] ?>
                            </div>                
                            <div class="cart-quantity">
                                <a href="./cart_update_quantity.php?id=<?php echo $id ?>&type=decrease" class="product-details-btn minus-btn"><svg width="10px" enable-background="new 0 0 10 10" viewBox="0 0 10 10" x="0" y="0" ><polygon points="4.5 4.5 3.5 4.5 0 4.5 0 5.5 3.5 5.5 4.5 5.5 10 5.5 10 4.5"></polygon></svg></a>
                                <input class="product-details-btn product-details-input" type="text" role="spinbutton" value="<?php echo $each['quantity'] ?>">
                                <a href="./cart_update_quantity.php?id=<?php echo $id ?>&type=increase" class="product-details-btn plus-btn"><svg width="10px" enable-background="new 0 0 10 10" viewBox="0 0 10 10" x="0" y="0" ><polygon points="10 4.5 5.5 4.5 5.5 0 4.5 0 4.5 4.5 0 4.5 0 5.5 4.5 5.5 4.5 10 5.5 10 5.5 5.5 10 5.5"></polygon></svg></a>
                            </div>                
                            <div class="cart-sum">
                                đ<?php echo $each['quantity'] * $each['price'] ?>
                            </div>                
                            <div class="cart-action">
                                <a href="./cart_delete.php?id=<?php echo $id ?>" class="cart-delete-action">Xóa</a>
                            </div>     
                        </div>
                    <?php } ?>
                    <?php } ?>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <div class="back-to-prev">
        <a class="back-to-prev-btn" href="./index.php">
            <i class="fas fa-arrow-left"></i>
        </a>
    </div>
    


    <div class="floating-banner">
        <a href="#" class="floating-banner__icon"></a>
    </div>

    <div id="toast"></div>
    
    <script src="./assets/js/validator.js"></script>
    <script src="./assets/js/toast.js"></script>

    <script src="./assets/js/index.js"></script>
    <script>
        Validator('#signup-form')
        Validator('#signin-form')
    </script>
    <!-- <script src="./assets/js/cart.js"></script> -->
    <!-- Fail -->

    <?php include './show_message.php'?>
</body>
</html>  