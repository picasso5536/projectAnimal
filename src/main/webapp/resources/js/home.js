$(document).ready(function(){
  $(window).scroll(function(){
    if ($(this).scrollTop() >= 99999999999){
      $('#header').addClass('sticky');
    } else if ($(this).scrollTop() <= 99999999999){
      $('#header').removeClass('sticky');
    }
  });
});

$('nav ul li').mouseover(function(){
  $('.navMenu.over').removeClass('over');
  $(this).children(":first").addClass('over');
});
$('nav ul li').mouseout(function(){
  $('.navMenu.over').removeClass('over');
});

/*이미지 슬라이드*/
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1;}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}



