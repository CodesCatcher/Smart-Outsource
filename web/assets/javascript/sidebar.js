$(document).ready(function () {
    var $sidebar = $(".sidebar-dropdown");
    var sidebar_dropdown = function () {
        if ($(this).find("a:first").hasClass("active")){
            $(this).find("a:first").removeClass("active");
        }
        else {
            $(this).siblings("li").find("a:first").removeClass("active");
            $(this).find("a:first").addClass("active");
        }
    };
    $sidebar.on("click",sidebar_dropdown);
});