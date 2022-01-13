
const $ = document.querySelector.bind(document)
const $$ = document.querySelectorAll.bind(document)

// Load category img js

// Modal
const modal = $('.modal')
const overLay = $('.modal__overlay')
const signUpForm = $('.auth-form.signup')
const signInForm = $('.auth-form.signin')
const togglePasswords = $$('.toggle-password')

if(togglePasswords) {
    for(let togglePassword of togglePasswords) {
        togglePassword.onclick = () => {
            togglePassword.classList.toggle('fa-eye-slash')
            let passwordInput = togglePassword.parentElement.querySelector('.form-control')
            if (passwordInput.type === "password") {
                passwordInput.type = "text";
              } else {
                passwordInput.type = "password";
              }
        }

    }
}

function signUp() {
    
    modal.classList.add('active')
    signUpForm.classList.add('active')
    signInForm.classList.remove('active')
}

function signIn() { 
    modal.classList.add('active')
    signInForm.classList.add('active')
    signUpForm.classList.remove('active')
}
if(modal) {
    overLay.onclick = () => {
        modal.classList.remove('active')
    }
}

const links = $$('a[href="#"]')

for(let link of links) {
    link.onclick = showInfoMessage
}



