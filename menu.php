<header class="header">
    <div class="grid">
        <?php include './navbar.php' ?>

        <!-- /* Header with search */ -->

        <div class="header-with-search">

            <!-- Logo -->

            <div class="header__logo">
                <a href="./index.php" class="header__logo-link">
                    GROUP 11
                </a>
                
            </div>

            <!-- Search -->

            <div class="header-search">
                <input type="text" class="header-search__inp" placeholder="Nhập sản phẩm cần tìm">

                <div class="header-search__history">
                    <h3 class="header-search__history-heading">Lịch sử tìm kiếm</h3>
                    <ul class="header-search__history-list">
                        <li class="header-search__history-item">
                            <a href="#">
                                Test1  
                        </li>
                        <li class="header-search__history-item">
                            <a href="#">
                                Test2
                            </a>
                        </li>
                    </ul>
                </div>

                <button class="header-search__btn">
                    <i class="fas fa-search header-search__btn-icon"></i>
                </button>
            </div>

            <!-- Cart -->
            
        <div class="header-cart">
   
   
        <div class="header-cart__list header-cart__list--empty " style="z-index: 2;">
            <!-- Empty -->
            <img src="./assets/images/nocart.png" class="header-cart__list--empty-img">
            <span class="header-cart__list--empty-msg">
                Chưa có sản phẩm
            </span>

        </div>

     
     

            <div class="header-cart__list " style="z-index: 2;">
                    <!-- Has Cart -->

                    <h3 class="header-cart__list-heading">Sản phẩm đã thêm</h3>
                    <ul class="header-cart__items">

                       
                            <li class="header-cart__item">
                                <a href="#" class="header-cart__item-link">
                                    <img src="./assets/images/products/1639300252.jpg" alt="" class="header-cart__item-img">
                                    <span class="header-cart__item-name">
                                        vớ vẩn
                                    </span>
                                    <span class="header-cart__item-price">₫10</span>
                                </a>
                            </li>
                        
                    </ul>
                    <div class="header-cart__list-view-cart">
                        <!-- <span class="header-cart__list-view-cart-msg">
                        1 Sản phâm hết hàng
                    </span> -->
                        <a href="./view_all_cart.php" class="btn btn-primary btn-view-cart">Xem giỏ hàng</a>
                    </div>

                </div>
        
        <a href="./view_all_cart.php">
            <i class="header-cart__icon fas fa-cart-plus"></i>
           
                <span class="header-cart__quantity">3</span>
            
        </a>
    </div>
        </div>
    </div>
</header>