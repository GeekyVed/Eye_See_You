const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

sign_up_btn.addEventListener('click', () => {
    container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener('click', () => {
    container.classList.remove("sign-up-mode");
});

// //New Code
// function getData() {
//     let usrn2 = document.querySelector(".lelo2");
//     let usrn1 = document.querySelector(".lelo1");

//     let usrn2_d = usrn2.value;
//     let usrn1_d = usrn1.value;

//     if (usrn1_d.length == 0) {
//         return usrn2_d;
//     } else {
//         return usrn1_d;
//     }
// }

// let namep = getData();
// let h1 = document.querySelector("#head");

// h1.innerText = "Welcome ," + namep;
// console.log(namep);