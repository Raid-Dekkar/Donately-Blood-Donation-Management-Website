// toggle menu 
let linksInscrption = document.querySelector(" .links-inscrption");
let closelink = document.querySelector(".links-inscrption i");
let openlink = document.querySelector(".toggle-menu")
openlink.addEventListener("click",e => {
    e.stopPropagation();
    linksInscrption.classList.add("open")
})
closelink.onclick = closeLink;
document.querySelector(".landing").onclick = closeLink;
document.querySelector(".header").onclick = closeLink;
function closeLink(){
    linksInscrption.classList.remove("open")
};

// change box 
var swiper = new Swiper(".slide-content", {
    slidesPerView: 3,
    spaceBetween: 25,
    loop: true,
    centerSlide: 'true',
    fade: 'true',
    grabCursor: 'true',
    pagination: {
    el: ".swiper-pagination",
    clickable: true,
    dynamicBullets: true,
    },
    navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
    },

    breakpoints:{
        0: {
            slidesPerView: 1,
        },
        520: {
            slidesPerView: 2,
        },
        950: {
            slidesPerView: 3,
        },
    },
});
// scrool intro diffrent  section 
const Alllinks = document.querySelectorAll(".links li")
scroolSomeWhere(Alllinks)
function scroolSomeWhere (element){
    element.forEach( link => {
        link.addEventListener("click", (e) => {
            e.preventDefault()
            document.querySelector(e.target.dataset.section).scrollIntoView({
                behavior: 'smooth'
            }) 
        })
    })
}
let tLinks = document.querySelector(".links");
tLinks.onclick = function (e) {
    e.stopPropagation();
};
// show paragraph in question
const toggle = document.querySelectorAll('.icon p');
const text = document.querySelectorAll('.question .text p');
  
// Add a click event listener to the icon element
toggle.forEach(function(el, index) {
    el.addEventListener('click', function() {
      // Toggle the visibility of the text element
      text[index].classList.toggle('hidden');
      
      // Change the icon symbol based on the visibility of the text element
      if (el.innerHTML === '+') {
        el.innerHTML = '-';
        // text[index].setAttribute("display","none") 
      } else {
        el.innerHTML = '+';
        text[index].setAttribute("font-size","27px")
      }
    });
});
