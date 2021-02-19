/*
    Logic：
        主要采用原生 JavaScript，
        只有在发送 Ajax 请求是才使用 JQuery
    
    ===
    1、登录注册页面的切换逻辑

    2、Ajax发送及接受响应逻辑
    ===
*/


// 封装选择器, 采用ES6箭头函数写法
const getSelector = ele => {
    return typeof ele === "string" ? document.querySelector(ele) : "";
}


// 登录注册载入

const containerShow = () => {
    var show = getSelector(".container")
    show.className += " container-show"
}

document.getElementById('sign-up-btn').onclick = function() {
    //alert('hello!');
    document.getElementById('zc').title = '12312312312'
}

//检验用户名
function checkUsername() {
    alert("检验用户名");
}

$(function () {
    //当表单提交时，调用所有的检验方法
    $("#login-in").submit(function() {
        return checkUsername();
    });
});

window.onload = containerShow;


// 登录注册页切换
((window, document) => {

    // 登录 -> 注册
    let toSignBtn = getSelector(".toSign"),
        toLoginBtn = getSelector(".toLogin")
        loginBox = getSelector(".login-box"),
        signBox = getSelector(".sign-box");
    
    toSignBtn.onclick = () => {
        loginBox.className += ' animate_login';
        signBox.className += ' animate_sign';
    }

    toLoginBtn.onclick = () => {
        loginBox.classList.remove("animate_login");
        signBox.classList.remove("animate_sign");
    }


})(window, document);

// Ajax 请求发送
