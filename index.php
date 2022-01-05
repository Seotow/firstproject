<?php session_start() ;?>
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
            include('./menu.php');
            if(empty($_SESSION['id'])){
                include './modal.php';
            }
        ?>
        <div class="content-section">         
            <div class="grid content">
                <!-- Category -->
            <?php include './categories.php'; ?>
            </div>

            <!-- Suggestion -->
        <?php include './products.php' ?>
            
        </div>
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
    

    <?php include './show_message.php' ?>
</body>
</html>  