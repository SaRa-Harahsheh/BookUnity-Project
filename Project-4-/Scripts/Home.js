let _MAIN = document.querySelector('main'),
    N = +_MAIN.style.getPropertyValue('--n');

let k = +_MAIN.style.getPropertyValue('--k');

addEventListener('click', e => {
    let _t = e.target;

    if (_t.classList.contains('nav')) _MAIN.style.setProperty('--k', k = (k + 1) % N);
});


document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();

        const target = document.querySelector(this.getAttribute('href'));
        const offset = window.innerHeight / 1.5 - target.offsetHeight / 1.5;

        window.scrollTo({
            top: target.offsetTop - offset,
            behavior: 'smooth'
        });
    });
});


$(document).ready(function () {
    $(".testimonial .indicators li").click(function () {
        var i = $(this).index();
        var targetElement = $(".testimonial .tabs li");
        targetElement.eq(i).addClass('active');
        targetElement.not(targetElement[i]).removeClass('active');
    });
    $(".testimonial .tabs li").click(function () {
        var targetElement = $(".testimonial .tabs li");
        targetElement.addClass('active');
        targetElement.not($(this)).removeClass('active');
    });
});
$(document).ready(function () {
    $(".slider .swiper-pagination span").each(function (i) {
        $(this).text(i + 1).prepend("0");
    });
});