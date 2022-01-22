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
    <div class="cart-main">
        <?php 
            include('./navbar.php');
            if(empty($_SESSION['id'])){
                $_SESSION['error'] = 'Vui lòng đăng nhập';
                header('Location: ' . $_SERVER["HTTP_REFERER"] );
                exit;
            }
            $status = '';
            if(isset($_GET['status'])){
                $status = $_GET['status'];
                if($status == 'all') {
                    $status = '';
                }
            }
            require('./admin/connect.php');

            $customer_id =$_SESSION['id'];
            $sql = "SELECT * FROM `bills` 
            where customer_id = '$customer_id' and status like '%$status%'";
            $result = mysqli_query($connection, $sql);
        ?>
        
        <div class="content-section">
            <div class="grid content">
                <div class="grid__row">
                    <header class="cart-content cart-header">
                        <a href="./purchase.php?status=all" class="purchase-col">
                            Tất cả
                        </a>
                        <a href="./purchase.php?status=0" class="purchase-col">
                            Chờ xác nhận
                        </a>                
                        <a href="./purchase.php?status=1" class="purchase-col">
                            Chờ lấy hàng
                        </a>                
                        <a href="./purchase.php?status=2" class="purchase-col">
                            Đã giao
                        </a>                
                        <a href="./purchase.php?status=-1" class="purchase-col">
                            Đã hủy
                        </a>                
                    </header>
                </div>
            </div>
        </div>
        <?php 
            foreach ($result as $bill){
        ?>
        <div class="content-section">
            <div class="grid content purchase">
                <div class="grid__row">
                    <div class="purchase-bill">
                    <div class="purchase-header">
                        <?php 
                            $bill_status = $bill['status'];
                            switch($bill_status){
                                case '1':
                                    echo 'Đang chờ giao hàng';
                                    break;
                                case '2': 
                                    echo 'Đã giao';
                                    break;
                                case '0';
                                    echo 'Đang chờ duyệt';
                                    break;
                                case '-1':
                                    echo 'Đã hủy';
                                    break;
                            }
                        ?>
                    </div>
                    <?php 
                        $bill_id = $bill['id'];
                        $sql = "SELECT * FROM `bills` 
                        JOIN details_bills on bills.id = details_bills.bill_id
                        where id = '$bill_id'";
                        $bills_detail = mysqli_query($connection, $sql);

                        foreach ($bills_detail as $bill_detail){
                            $product_id = $bill_detail['product_id'];
                            $sql = "SELECT * FROM `products` where id = '$product_id'";
                            $result = mysqli_query($connection, $sql);
                            $product = mysqli_fetch_array($result);
                    ?>
                    <a class="purchase-product" href="./product.php?id=<?php echo $product_id?>">
                        <img height="100" src="./assets/images/products/<?php echo $product['image'] ?>" alt="">
                        <div class="">
                            <?php echo $product['name'] ?>
                        </div>    

                    </a>
                    <?php } ?>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>

    </div>

    <div class="back-to-prev">
        <a class="back-to-prev-btn" href="./index.php">
            <i class="fas fa-arrow-left"></i>
        </a>
    </div>
    

    <div id="toast"></div>
    
    
    <script src="./assets/js/validator.js"></script>
    <script src="./assets/js/toast.js"></script>
    <script src="./assets/js/index.js"></script>
    <script>
        Validator('#payment-form')
    </script>
    

    <?php 
        if(isset($_SESSION['cart_id'])){
            $cart_id = $_SESSION['cart_id'];

            echo "<script>
                $('a[href*=\'id=$cart_id\']').scrollIntoView({behavior: \"auto\", block: \"center\", inline: \"nearest\"})
            </script>";

            unset($_SESSION['cart_id']);
            unset($cart_id);
        }
    ?>

    <?php include './show_message.php'?>
</body>
</html>  