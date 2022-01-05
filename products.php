<?php 
    require './admin/connect.php';
    $sql = 'select * from products';
    $result = mysqli_query($connection, $sql);
?>
<div class="grid suggestion">
    <div class="suggestion__header">
        <h3 class="suggestion__header-title suggestion__header-title--active">
            Gợi ý của hôm nay
            <div class="suggestion__header-border"></div>
        </h3>
    </div>
    <div class="grid__row app-content">
        <div class="grid__col-12">

            <!-- Product -->
            <div class="grid__row">
            
            <!-- PHP print products -->
            <?php foreach ($result as $product) { ?>

                <div class="grid__col-2 product">
                    <a href="product.php?id=<?php echo $product['id']?>" class="product-item product--discount product--favourite">
                        <div class="product__img product__img--freeship" style="background-image: url('./assets/images/products/<?php echo $product['image']?>'); background-size: contain; background-repeat: no-repeat; background-position: center;">
                            <img  class="product__img-freeship" src="https://cf.shopee.vn/file/64cc6e5365663b97de6a51b303be7d35" alt="">
                        </div>

                        <div class="product-body">
                            <h3 class="product__name"><?php echo $product['name'] ?></h3>
                            
                            <div class="product__discount">
                                <svg class="product__discount-decor"  viewBox="-0.5 -0.5 4 16"><path  d="M4 0h-3q-1 0 -1 1a1.2 1.5 0 0 1 0 3v0.333a1.2 1.5 0 0 1 0 3v0.333a1.2 1.5 0 0 1 0 3v0.333a1.2 1.5 0 0 1 0 3q0 1 1 1h3" stroke-width="1" transform="" stroke="currentColor" fill="#f69113"></path></svg>
                                <div class="product__discount-price">
                                    <?php 
                                        $ran = rand(1,2);
                                        if($ran === 1){
                                            $discount = rand(10,100);
                                            echo "Giảm $discount%";
                                        } else  {
                                            $discount = rand(9,999);
                                            echo "Giảm $discount" . 'K';
                                        }
                                    ?>
                                </div> 
                                <svg class="product__discount-decor"  viewBox="-0.5 -0.5 4 16"><path  d="M4 0h-3q-1 0 -1 1a1.2 1.5 0 0 1 0 3v0.333a1.2 1.5 0 0 1 0 3v0.333a1.2 1.5 0 0 1 0 3v0.333a1.2 1.5 0 0 1 0 3q0 1 1 1h3" stroke-width="1" transform="rotate(180) translate(-3 -15)" stroke="currentColor" fill="#f69113"></path></svg>
                            </div>

                            <div class="product__info">
                                <span class="product__info-price"><?php echo $product['price'] ?>₫</span>
                            </div>
                        </div>

                        <div class="product__favourite">
                            <span>Yêu Thích</span>
                        </div>

                    </a>
                    <?php if(isset($_SESSION['id'])){ ?>
                        <a href="./add_to_cart.php?id=<?php echo $product['id']?>" class="product-hover-footer">
                            Thêm vào giỏ hàng
                        </a>
                    <?php } ?>
                    
                </div>
                
            <?php } ?>
            </div>

        </div>

        <!-- <button onclick="showInfoMessage()" class="btn btn-more"> -->
        <button onclick="history.go(0)" class="btn btn-more">
            Xem thêm
        </button>
    </div>
</div>