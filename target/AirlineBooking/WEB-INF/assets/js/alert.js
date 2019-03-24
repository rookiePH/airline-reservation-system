function addAlert (id, title, message) {
    $("#headTitle").text(title);
    $("#alertBody").text(message);
    removeAlertClass();
    addAlertBLockClass(id);
};

/*
* 全部隐藏的样式
* */
function removeAlertClass() {
    reductionAlertClass("error");
    reductionAlertClass("success");
    $("#motai").css("display","none");
}

function reductionAlertClass(id) {
    $("#"+id).css("display", "none");
    $("#alertFooter").css("display", "none");
    $("#alertFooter").css("opacity", "-0.06");
    $("#alertFooter").removeClass("visible");
    $("#alertFooter").removeClass("showSweetAlert");
    $("#alertFooter").addClass("hideSweetAlert");
}

/*
* 添加模态框的展示时样式
* */
function addAlertBLockClass(id) {
    showAlertFooterClass();
    $("#"+id).css("display", "block");
    $("#motai").css("display","block");
}

function showAlertFooterClass() {
    $("#alertFooter").css("display", "block");
    $("#alertFooter").css("opacity", "1");
    $("#alertFooter").removeClass("hideSweetAlert");
    $("#alertFooter").addClass("visible");
    $("#alertFooter").addClass("showSweetAlert");
}

function successAlert (title, message) {
    addAlert("success", title, message);
};
function errorAlert (title, message) {
    addAlert("error", title, message);
};

$("#makeSure").click(function () {
   removeAlertClass();
});

$("#motai").click(function () {
    removeAlertClass();
});
