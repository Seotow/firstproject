<div class="topbar">
    <div class="toggle">
        <i class="fas fa-bars"></i>
    </div>
    <div class="search">
        <label for="">
            <input type="text" name="search" id="seacrh">
            <i class="fas fa-search"></i>
        </label>
    </div>
    <div class="header__navbar-item header__navbar-user">
        <img src="" alt="avatar" class="header__navbar-user-img">
        <div class="header__navbar-user-name" style="color:var(--primary-color)">
            <?php echo $_SESSION['name'] ?> 
        </div>
        <div class="header__navbar-user-options">
            <a href="#" class="header__navbar-user-option-link">
                Tài khoản của tôi
            </a>
            <a href="../signout.php" class="header__navbar-user-option-link header__navbar-user-option-link--separate">
                Đăng xuất
            </a>
        </div>
    </div>
</div>