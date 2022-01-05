<?php 
    require './admin/connect.php';
    $id = $_GET['id'];
    $sql = "select * from products 
    where id = '$id'";    
    $result = mysqli_query($connection, $sql);
    $product = mysqli_fetch_array($result);
?>
<div class="grid">
    <!-- Product -->
    <div class="grid__row ">
        <div class="grid__col-12 product-details">
            <div class="grid__col-3 product-details-image">
                <div class="product-details-img" style="background-image: url('./assets/images/products/<?php echo $product['image']?>'); background-size: contain; background-repeat: no-repeat; background-position: center;"></div>
            </div>
            <div class="grid__col-9">
                <div class="product-details-body">
                    <div class="product-details-name">
                        <span><?php echo $product['name'] ?></span>
                    </div>
                    <div class="product-details-moreinfo">
                        
                    </div>
                    <div class="product-details-price">
                        <span>₫<?php echo $product['price'] ?></span>
                    </div>
                    <div class="product-details-content-section product-details-transport">
                        <span>Vận chuyển</span>
                        <div class="product-details-transportinfo">
                            <img src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg//assets/1cdd37339544d858f4d0ade5723cd477.png" width="25" height="15" class="product-details-transport-freeship">
                            <span>Miễn phí vận chuyển</span>
                        </div>
                    </div>
                    <div class="product-details-content-section product-details-desc">
                        <span>Mô tả</span>
                        <span><?php echo $product['description'] ?></span>
                    </div>
                    <div class="product-details-content-section product-details-quantily">
                        <span>
                            Số lượng
                        </span>
                        <div class="product-details-quantily-input">
                            <button class="product-details-btn"><svg width="10px" enable-background="new 0 0 10 10" viewBox="0 0 10 10" x="0" y="0" class="shopee-svg-icon "><polygon points="4.5 4.5 3.5 4.5 0 4.5 0 5.5 3.5 5.5 4.5 5.5 10 5.5 10 4.5"></polygon></svg></button>
                            <input class="product-details-btn product-details-input" type="text" role="spinbutton" aria-valuenow="1" value="1">
                            <button class="product-details-btn"><svg width="10px" enable-background="new 0 0 10 10" viewBox="0 0 10 10" x="0" y="0" class="shopee-svg-icon icon-plus-sign"><polygon points="10 4.5 5.5 4.5 5.5 0 4.5 0 4.5 4.5 0 4.5 0 5.5 4.5 5.5 4.5 10 5.5 10 5.5 5.5 10 5.5"></polygon></svg></button>
                        </div>
                    </div>
                    <div class="product-details-content-section product-details-buy">
                        <a href="./add_to_cart.php?id=<?php echo $id?>" class="product-details-addtocart">
                            <i class="icon-add-to-cart fas fa-cart-plus"></i>
                            <span>Thêm vào giỏ hàng</span>
                        </a>
                        <a href="#" class="product-details-buy-btn">Mua ngay</a>
                    </div>
                    <div class="product-details-content-section product-details-guarantee">
                        <img src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg//assets/67454c89080444c5997b53109072c9e0.png" class="product-details-guarantee-img">
                        <span class="product-details-guarantee-text">Đảm bảo</span>
                        <span>3 ngày Trả hàng / Hoàn tiền</span>
                    </div>
                </div>
            </div>
        </div>
        

    </div>
  
        


       

    
</div>