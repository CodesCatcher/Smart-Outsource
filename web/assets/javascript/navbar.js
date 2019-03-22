// $(document).ready(function () {
$(function () {
    var $navbar = $(".navbar-dropdown");
    var navbar_dropdown = function () {
        event.stopPropagation();
        if ($(this).find("ul").hasClass("menu-select")) {
            $(this).removeClass("navbar-select");
            $(this).find("ul").removeClass("menu-select");
            $(this).find(".icon-jiantou2").removeClass("turn");
        }
        else {
            $(this).siblings("li").removeClass("navbar-select");
            $(this).addClass("navbar-select");
            $(this).siblings("li").find("ul").removeClass("menu-select");
            $(this).find("ul").addClass("menu-select");
            $(this).siblings("li").find(".icon-jiantou2").removeClass("turn");
            $(this).find(".icon-jiantou2").addClass("turn");
        }
    };
    $navbar.on("click",navbar_dropdown);

    var $body = $(document.body);
    var click_body = function () {
        if ($(this).find(".navbar-dropdown-menu").hasClass("menu-select")) {
            $(this).find(".navbar-dropdown").removeClass("navbar-select");
            $(this).find(".navbar-dropdown-menu").removeClass("menu-select");
        }
    };
    $body.on("click",click_body);
})

// });