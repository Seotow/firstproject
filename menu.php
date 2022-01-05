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
            
            <?php include './cart.php' ?>
        </div>
    </div>
</header>