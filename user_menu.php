<!-- User -->
<div class="header__navbar-item header__navbar-user">
    <img src="" alt="avatar" class="header__navbar-user-img">
    <div class="header__navbar-user-name">
        <?php echo $_SESSION['name'] ?>
    </div>
    <div class="header__navbar-user-options">
        <a href="#" class="header__navbar-user-option-link">
            Tài khoản của tôi
        </a>
        <a href="#" class="header__navbar-user-option-link">
            Đơn mua
        </a>
        <a href="./signout.php" class="header__navbar-user-option-link header__navbar-user-option-link--separate">
            Đăng xuất
        </a>
    </div>
</div>


