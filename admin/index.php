<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="javacript.js"></script>
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div class="container-left">
            <div class="container-left-top">
              <a  href="#" class="brandname">GROUP 11</a>  
            </div>
            <div class="container-left-bottom">
                <ul class="container-list"><i class="fas fa-home"></i> Home </ul>
                    <li class="container-item"><a href="">Quản lý</a></li>
                    <li class="container-item"><a href="">Quản lý</a></li>
                    <li class="container-item"><a href="">Quản lý</a></li>
                    <li class="container-item"><a href="">Quản lý</a></li>
                    
            </div>

        </div>
        <div class="container-right">
            <div class="container-right-nav">
                <div class="nav-icon-left">
                   <a href=""><i class="fab fa-facebook"></i></a> 
                    <a href=""><i class="fab fa-instagram"></i></a>
                </div>
                <div class="nav-icon-right">
                    <div class="dropdown">
                        <button onclick="myFunction()" class="dropbtn"> 
                            <i class="fas fa-user-circle"></i>
                        </button>
                        <div id="myDropdown" class="dropdown-content">
                          <a href="#">Long</a>
                          <a href="#">Cài đặt</a>
                          <a href="#">Đăng xuất</a>
                        </div>
                      </div>
                   
                </div>
            </div>
            <div class="content">
                <section class="breakcrum">
                    <span><a href="#">Trang chủ</a></span>
                    <p>></p>
                    <span><a href="">Quản lý sản phẩm</a></span>
                    <p>></p>
                    <span>Thêm sản phẩm</span>
                </section>
                <section class="form">
                    <form class="active-form" action="">
                        <label for="">Tên sản phẩm:</label>
                        <input type="text" name="" id="" placeholder="Nhập tên sản phẩm:">
                        <label for="">Tên sản phẩm:</label>
                        <input type="text" name="" id="" placeholder="Nhập tên sản phẩm:">
                        <label for="">Danh mục</label>
                        <select  name="" id="">
                            <option value="">1</option>
                            <option value="">2</option>
                        </select>
                        <input type="text" name="" id="" placeholder="Nhập tên sản phẩm:">
                        <label for="">Tên sản phẩm:</label>
                        <input type="text" name="" id="" placeholder="Nhập tên sản phẩm:">
                        <label for="">Tên sản phẩm:</label>
                        <textarea name="" id="" cols="30" rows="10"></textarea>
                        <button class="submit-form" type="submit">Thêm</button>
                    </form>
                    
    
                </section>
            </div>
            
        </div>

    </div>
</body>
</html>