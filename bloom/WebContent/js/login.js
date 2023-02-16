document.querySelector("#btn-login").addEventListener("click", e => {
    document.querySelector(".background-login").className = "background-login login-show";
});

document.querySelector("#login-close").addEventListener("click", e => {
    document.querySelector(".background-login").className = "background-login";
});