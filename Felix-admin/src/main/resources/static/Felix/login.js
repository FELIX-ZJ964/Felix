
$(function() {
	validateKickout();
    validateRule();
	$('.imgcode').click(function() {
		var url = ctx + "captcha/captchaImage?type=" + captchaType + "&s=" + Math.random();
		$(".imgcode").attr("src", url);
	});
});

$.validator.setDefaults({
    submitHandler: function() {
		login();
    }
});

function login() {
	$.modal.loading($("#btnSubmit").data("loading"));
	var username = $.common.trim($("input[name='username']").val());
    var password = $.common.trim($("input[name='password']").val());
    var validateCode = $("input[name='validateCode']").val();
    var rememberMe = $("input[name='rememberme']").is(':checked');
    $.ajax({
        type: "post",
        url: ctx + "login",
        data: {
            "username": username,
            "password": password,
            "validateCode": validateCode,
            "rememberMe": rememberMe
        },
        success: function(r) {
            if (r.code == 0) {
                location.href = ctx + 'index';
            } else {
            	$.modal.closeLoading();
            	$('.imgcode').click();
            	$(".code").val("");
            	$.modal.msg(r.msg);
            }
        }
    });
}

function validateRule() {
    var icon = "<i class='fa fa-times-circle'></i> ";
    $("#signupForm").validate({
        rules: {
            username: {
                required: true
            },
            password: {
                required: true
            }
        },
        messages: {
            username: {
                required: icon + "Username can not be empty",
            },
            password: {
                required: icon + "password can not be blank",
            }
        }
    })
}

function validateKickout() {
	if (getParam("kickout") == 1) {
	    layer.alert("<font color='red'>You have signed in elsewhere. Please change your password or log in again</font>", {
	        icon: 0,
	        title: "System prompt"
	    },
	    function(index) {
	        //关闭弹窗
	        layer.close(index);
	        if (top != self) {
	            top.location = self.location;
	        } else {
	            var url  =  location.search;
	            if (url) {
	                var oldUrl  = window.location.href;
	                var newUrl  = oldUrl.substring(0,  oldUrl.indexOf('?'));
	                self.location  = newUrl;
	            }
	        }
	    });
	}
}

function getParam(paramName) {
    var reg = new RegExp("(^|&)" + paramName + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return decodeURI(r[2]);
    return null;
}