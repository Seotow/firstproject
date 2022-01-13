<div class="modal">      
    <div class="modal__overlay"></div>
    <div class="modal__body">
    
        <!-- Signup form -->
        <form class="auth-form signup" id="signup-form" action="./signup.php" method="post">
            <div class="auth-form__header">
                <h3 class="auth-form__heading ">Đăng ký</h3>
            </div>

            <div class="auth-form__form">
                <div class="auth-form__group  form-group">
                    <input rules="required" name="name" type="text" class="form-control auth-form__input" placeholder="Họ và tên">
                    <span class="form-message"></span>

                </div>
                <div class="auth-form__group  form-group">
                    <input rules="required" name="phone" type="text" class="form-control auth-form__input" placeholder="Số điện thoại">
                    <span class="form-message"></span>

                </div>
                <div class="auth-form__group  form-group">
                    <input rules="required|email" name="email" type="email" class="form-control auth-form__input" placeholder="Email">
                    <span class="form-message"></span>

                </div>
                <div class="auth-form__group  form-group">
                    <input rules="required|min:6|max:18" name="password" type="password" class="form-control auth-form__input" placeholder="Mật khẩu">
                    <span class="form-message"></span>
                    <span class="fas fa-eye toggle-password"></span>

                </div>
                <div class="auth-form__group  form-group">
                    <input rules="required|confirm" name="password_confirmation" type="password" class="form-control auth-form__input" placeholder="Nhập lại mật khẩu">
                    <span class="form-message"></span>
                    <span class="fas fa-eye toggle-password"></span>

                </div>
            </div>
            <div class="auth-form__control">
                <button class="btn btn-primary btn--next">TIẾP THEO</button>
            </div>
            <div class="auth-form__socials">
                <div class="auth-form__socials-login-with">
                    <div class="auth-form__socials-line"></div>
                    <span class="auth-form__socials-text">
                        Hoặc
                    </span>
                    <div class="auth-form__socials-line"></div>
                </div>
                <div class="auth-form__socials-login-with">
                    <a href="#" class="btn btn--with-icon btn-fb">
                        <i class="fab fa-facebook"></i>
                        <span class="auth-form__social">
                            Facebook
                        </span>    
                    </a>
                    <a href="#" class="btn btn--with-icon btn-gg">
                        <i class="fab fa-google"></i>
                        <span class="auth-form__social">
                            Google
                        </span>  
                    </a>
                    <a href="#" class="btn btn--with-icon btn-apple">
                        <i class="fab fa-apple"></i>
                        <span class="auth-form__social">
                            Apple
                        </span>  
                    </a>
                </div>
            </div>

            <div class="auth-form__term">
                <p class="auth-form__term-text">
                    Bằng việc đăng kí, bạn đã đồng ý về 
                    <a href="#" class="auth-form__text-link">
                        Điều khoản dịch vụ
                    </a> & 
                    <a href="#" class="auth-form__text-link">
                        Chính sách bảo mật
                    </a>
                </p>
            </div>
            
            <div class="auth-form__switch">
                <span class="auth-form__switch-text">Bạn đã có tài khoản?</span>
                <span onclick="signIn()" class="auth-form__text-link btn-signin">Đăng nhập</span>
            </div>
        </form>  

        <!-- Signin form -->         
        <form class="auth-form signin" id="signin-form" action="./signin.php" method="post">
            <div class="auth-form__header">
                <h3 class="auth-form__heading">Đăng Nhập</h3>
            </div>

            <div class="auth-form__form">
                <div class="auth-form__group form-group">
                    <input rules="required|email" name="email" type="email" class="form-control auth-form__input" placeholder="Email/Tên đăng nhập">
                    <span class="form-message"></span>
                </div>
                <div class="auth-form__group form-group">
                    <input rules="required" name="password" type="password" class="form-control auth-form__input" placeholder="Mật khẩu">
                    <span class="form-message"></span>
                    <span class="fas fa-eye toggle-password"></span>
                </div>
                <div class="auth-form__group form-remember">
                    <input name="remember" id="remember" type="checkbox" class="remember" >
                    <label for="remember"class="form-remember-text">Ghi nhớ đăng nhập</label>
                </div>
            </div>


            <div class="auth-form__control">
                <button class="btn btn-primary btn--next">Đăng nhập</button>
            </div>

            <div class="auth-form__help">
                <a href="#" class="auth-form__help-btn auth-form__help--forgot ">Quên mật khẩu</a>
                <a href="#" class="auth-form__help-btn auth-form__help--SMS-login">Đăng nhập với SMS</a>
            </div>

            <div class="auth-form__socials">
                <div class="auth-form__socials-login-with">
                    <div class="auth-form__socials-line"></div>
                    <span class="auth-form__socials-text">
                        Hoặc
                    </span>
                    <div class="auth-form__socials-line"></div>
                </div>
                <div class="auth-form__socials-login-with">
                    <a href="#" class="btn btn--with-icon btn-fb">
                        <i class="fab fa-facebook"></i>
                        <span class="auth-form__social">
                            Facebook
                        </span>    
                    </a>
                    <a href="#" class="btn btn--with-icon btn-gg">
                        <i class="fab fa-google"></i>
                        <span class="auth-form__social">
                            Google
                        </span>  
                    </a>
                    <a href="#" class="btn btn--with-icon btn-apple">
                        <i class="fab fa-apple"></i>
                        <span class="auth-form__social">
                            Apple
                        </span>  
                    </a>
                </div>
            </div>
            <div class="auth-form__switch">
                <span class="auth-form__switch-text">Bạn mới biết đến ?</span>
                <span onclick="signUp()" class="auth-form__text-link btn-signup">Đăng ký</span>
            </div>
        </form>  
    </div>
</div>