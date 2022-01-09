<nav class="header__navbar">
    <div class="header__navbar-list">
        <div class="header__navbar-item">
            <a href="#" class="header__navbar-link">Kênh người bán</a>
        </div>
        <div class="header__navbar-item">
            <a href="#" class="header__navbar-link">Trở thành người bán </a>
        </div>
        <div class="header__navbar-item header__navbar-item--hasqr ">
            <a href="#" class="header__navbar-link">
                Tải ứng dụng
            </a>
            <a href="#" class="header__qr">
                <img  src="./assets/images/QrCode.jpg" alt="qrcode" class="header__qrcode-img">
                <div class="header__qr-apps">
                    <img  src="./assets/images/appstore.png" alt="Appstore" class="header__qr-img-app">
                    <img  src="./assets/images/ggplay.png" alt="Google Play" class="header__qr-img-app">
                </div>
            </a>
        </div>

        <div class="header__navbar-item">
            <a href="#" class="header__navbar-link">
                <span class="header__navbar-title--no-pointer">Kết nối</span>
            </a>
        </div>
        
        <a href="https://facebook.com/" target="blank" class="header__navbar-icon">
            <i class="fab fa-facebook"></i>
        </a>
    
    
        <a href="https://instagram.com/" target="blank" class="header__navbar-icon">
            <i class="fab fa-instagram"></i>
        </a>
        
    </div>

    <div class="header__navbar-list">
        <div class="header__navbar-item header__navbar-item--hasnotify ">
            <a href="#" class="header__navbar-link">
                <i class="far fa-bell"></i>
                Thông báo
            </a>
            <div class="header__notify">
                <header class="header__notify-header">
                    <h3>Thông báo mới nhận</h3>
                </header>
                <ul class="header__notify-list">
                    <li class="header__notify-item header__notify-item--seen">
                        <a href="#" class="header__notify-link">
                            <img  src="https://www.laviewater.com/wp-content/uploads/2020/08/La-Vie-Prestige.jpg" alt="" class="header__notify-img" >
                            <div class="header__notify-info">
                                <p class="header__notify-name">Nước hoa hiệu lavie chính hãng Nước hoa hiệu lavie chính hãng Nước hoa hiệu lavie chính hãng</p>
                                <p class="header__notify-desc">Mô tả mỹ phẩm hiệu lavie hoa hiệu lavie chính hãng hoa hiệu lavie chính hãng</p>

                            </div>
                        </a>
                    </li>

                    <li class="header__notify-item">
                        <a href="#" class="header__notify-link">
                            <img  src="https://www.laviewater.com/wp-content/uploads/2020/08/La-Vie-Prestige.jpg" alt="" class="header__notify-img" >
                            <div class="header__notify-info">
                                <p class="header__notify-name">Nước hoa hiệu lavie chính hãng</p>
                                <p class="header__notify-desc">Mô tả mỹ phẩm hiệu lavie</p>

                            </div>
                        </a>
                    </li>
                </ul>
                <footer class="header__notify-footer">
                    <a href="#" class="header__notify-footer-btn">
                        Xem tất cả
                    </a>
                </footer>
            </div>
        </div>
        <div class="header__navbar-item">
            <a href="#" class="header__navbar-link">
                <i class="far fa-question-circle"></i>   
                Hỗ trợ
            </a>
        </div>

        <?php 
            if(isset($_COOKIE['remember'])){
                $id = $_COOKIE['remember'];
                require_once './admin/connect.php';
                $sql = "select * from customers 
                where id ='$id'";
                $result = mysqli_query($connection, $sql);
                mysqli_close($connection);
                $each = mysqli_fetch_array($result);
                $_SESSION['id'] = $each['id'];
                $_SESSION['name'] = $each['name'];
            }
            
            if(isset($_SESSION['id'])){
                include('./menu_user.php');
            } else {
                include('./menu_client.php');
            }
        ?>

    </div>
</nav>