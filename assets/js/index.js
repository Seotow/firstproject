
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


const links = $$('a[href="#"]')

for(let link of links) {
    link.onclick = showInfoMessage
}



