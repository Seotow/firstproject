
const $ = document.querySelector.bind(document)
const $$ = document.querySelectorAll.bind(document)

// // Load product img js
// let productImgs = document.getElementsByClassName('product__img')
// for( let index in productImgs) {
//     productImgs[index].style.background = `url(assets/img/Product/${index}.jpg) no-repeat center / contain`
// }

// // Load category img js
// let categoryItems = document.getElementsByClassName('category-item__img')
// for( let index in categoryItems) {
//     categoryItems[index].style.background = `url(assets/img/Category/${index}.png) no-repeat center / contain`
// }

// Modal
const modal = $('.modal')
const overLay = $('.modal__overlay')
const signInBtns = $$('.btn-signin')
const signUpBtns = $$('.btn-signup')
const signUpForm = $('.auth-form.signup')
const signInForm = $('.auth-form.signin')

function signUp(e) {
    e.preventDefault()
    modal.classList.add('active')
    signUpForm.classList.add('active')
    signInForm.classList.remove('active')
}

function signIn(e) {
    e.preventDefault()
    modal.classList.add('active')
    signInForm.classList.add('active')
    signUpForm.classList.remove('active')
}

for(let i = 0; i < 2; i++) {
    signUpBtns[i].onclick = signUp
    signInBtns[i].onclick = signIn
}

overLay.onclick = () => {
    modal.classList.remove('active')
}

// Toast
function toast({title, messeage, type, duration}){
    const main = document.getElementById('toast');
    if(main){
        const toast = document.createElement('div')
        
        // remove after delay
        
        let removeOnClickId = setTimeout(() => {
                main.removeChild(toast)
        },duration + 1000)

        //  remove onclick
        toast.onclick = (e) => {
            if (e.target.closest('.toast__close')) {
                main.removeChild(toast)
                clearTimeout(removeOnClickId)
            }
        }

        const icons = {
            success: 'fas fa-check',
            error: 'fas fa-times',
            warn: 'fas fa-exclamation',
            info: 'fas fa-info'

        };
        const icon = icons[type];
        const delay = (duration / 1000).toFixed(2);

        toast.classList.add('toast',`toast--${type}`);
        toast.style.animation = `slideInLeft ease .3s, fadeOut linear 1s ${delay}s forwards `;
        toast.innerHTML = `
                <div class="toast__icon">
                    <i class="${icon}"></i>
                </div>
                <div class="toast__content">
                    <h3 class="toast__header">${title}</h3>
                    <p class="toast__message">${messeage}</p>
                </div>
                <div class="toast__close">
                    <i class="fas fa-times"></i>
                </div> 
        `;
        main.appendChild(toast);

        
    }
}

let showSuccessMessage = (e) => {
    toast({
        title: 'Successsssss',
        messeage: 'Bạn đã đăng ký thành công',
        type: 'success',
        duration: 1000
    })
};

let showWarnMessage = (e) => {
    toast({
        title: 'Warn',
        messeage: 'Bạn đã đăng ký thất bại',
        type: 'warn',
        duration: 3000
    })
};

let showErrorMessage = (e) => {
    toast({
        title: 'Error',
        messeage: 'Bạn đã đăng ký thất bại',
        type: 'error',
        duration: 5000
    })
};

let showInfoMessage = (e) => {
    e.preventDefault()
    toast({
        title: 'Info',
        messeage: 'Chức năng hiện chưa có',
        type: 'info',
        duration: 5000
    })
};

const links = $$('a[href="#"]')

for(let link of links) {
    link.onclick = showInfoMessage
}


Validator('#signup-form')
Validator('#signin-form')
