document.addEventListener("DOMContentLoaded", function (event) {
  let navbar = $(".navbar-default");
  $(window).scroll(function () {
    let scroll = $(window).scrollTop();
    if (scroll >= 100) {
      console.log(navbar);
      navbar.addClass("scrolled");
    } else {
      navbar.removeClass("scrolled");
    }

  });

});
