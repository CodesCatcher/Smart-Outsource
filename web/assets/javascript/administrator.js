$(function () {
    var $edit = $("a.btn-edit");
    var $avatar = $(".head-image");
    var $modify_basic_info = $("div.modify.basic-info-text");
    var $modify_avatar = $("div.modify.avatar");
    var $modify_bg = $("div.modify-bg");
    var $cancel = $("a.cancel");
    $edit.click(function () {
        $modify_basic_info.css("display","block");
        $modify_bg.css("display","block");
    });
    $avatar.click(function () {
        $modify_avatar.css("display","block");
        $modify_bg.css("display","block")
    });
    $cancel.click(function () {
        $modify_avatar.css("display","none");
        $modify_basic_info.css("display","none");
        $modify_bg.css("display","none");
    })
});