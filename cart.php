<div class="header-cart">
   
    <?php if (empty($_SESSION['cart'])) { ?>
        <div class="header-cart__list header-cart__list--empty " style="z-index: 2;">
            <!-- Empty -->
            <img src="./assets/images/nocart.png" class="header-cart__list--empty-img">
            <span class="header-cart__list--empty-msg">
                Chưa có sản phẩm
            </span>

        </div>

        <?php } else {
        $cart = $_SESSION['cart'];
        require './admin/connect.php';
        ?>


            <div class="header-cart__list " style="z-index: 2;">
                <!-- Has Cart -->

                <h3 class="header-cart__list-heading">Sản phẩm đã thêm</h3>
                <ul class="header-cart__items">

                    <?php 
                        $_SESSION['quantity'] = 0;
                        foreach ($cart as $id => $each) {
                        $_SESSION['quantity']++;
                        
                    ?>
                        <li class="header-cart__item">
                            <a href="product.php?id=<?php echo $id?>" class="header-cart__item-link">
                                <img src="./assets/images/products/<?php echo $each['image'] ?>" alt="" class="header-cart__item-img">
                                <span class="header-cart__item-name">
                                    <?php echo $each['name'] ?>
                                </span>
                                <span class="header-cart__item-price">₫<?php echo $each['price'] ?></span>
                            </a>
                        </li>
                    
                    <?php } ?>
                </ul>
                <div class="header-cart__list-view-cart">
                    <!-- <span class="header-cart__list-view-cart-msg">
                    1 Sản phâm hết hàng
                </span> -->
                    <a href="./cart_view_all.php" class="btn btn-primary btn-view-cart">Xem giỏ hàng</a>
                </div>

            </div>
    <?php
    }
    ?>
    <a href="./cart_view_all.php">
        <i class="header-cart__icon fas fa-cart-plus"></i>
        <?php if(isset($_SESSION['quantity'])){ ?>
            <span class="header-cart__quantity"><?php echo $_SESSION['quantity'] ?></span>
        <?php } ?>
    </a>
</div>