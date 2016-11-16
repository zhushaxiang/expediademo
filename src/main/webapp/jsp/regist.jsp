<%--
  Created by IntelliJ IDEA.
  User: LIYU
  Date: 2016/11/16
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to expedia</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>WeUI</title>
    <link rel="stylesheet" href="../css/weui.min.css"/>
    <link rel="stylesheet" href="../css/example.css"/>
    <style type="text/css">
        .my-background-color {
            background-color: lavender;
        }
        .weui-cell_select .weui-cell__bd:after{
            right: 19px;
        }
    </style>
    <script src="../js/zepto.min.js"></script>
    <script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script type="text/javascript">
        $(function(){
            var $iosDialog = $('#iosDialog');
            $('#dialogs').on('click', '.weui-dialog__btn', function(){
                $(this).parents('.js_dialog').fadeOut(200);
            });
            $('#showTooltips').on('click', function(){
                $iosDialog.fadeIn(20);
            });
            $(function(){
                var $loadingToast = $('#loadingToast');
                $('#showLoadingToast').on('click', function(){
                    if ($loadingToast.css('display') != 'none') return;

                    $loadingToast.fadeIn(100);
                    setTimeout(function () {
                        $loadingToast.fadeOut(100);

                        if($.trim($('#username').val())=="name"){
                            SendData(back());
                        }else{
                            $('#errorMessage span').show(500);
                            setTimeout(function () {
                                $('#errorMessage span').hide(500);
                            },2000);
                        }

                    }, 1000);

                });
            });
        });

        function back(){
            $('div.page__bd,#errorMessage,.weui-btn-area').hide();
            $('#registsuccess').show();
        }

        function SendData(_success) {
            var user=new Object;
            user.name="name";
            user.pwd="pwd";
            user.hotelid="hotelid";
            user.language="language";
            $.get("/submitRegist", user,
                    function(data){
                        _success();
                    });
        }
    </script>
</head>
<body style="height:100%" >

<div class="page input js_show" style="margin: 0px 15px;">

    <div class="page__bd" >
        <div class="weui-cells weui-cells_form">

            <div class="weui-cell">
                <div class="weui-cell__hd"><label class="weui-label">User Name</label></div>
                <div class="weui-cell__bd my-background-color">
                    <input class="weui-input" type="text" id="username"  placeholder="please input username">
                </div>
            </div>
            <div class="weui-cell">
                <div class="weui-cell__hd"><label class="weui-label">Password</label></div>
                <div class="weui-cell__bd my-background-color">
                    <input class="weui-input" type="password" pattern="*" placeholder="please input password">
                </div>
            </div>
            <div class="weui-cell">
                <div class="weui-cell__hd"><label class="weui-label">Hotel ID</label></div>
                <div class="weui-cell__bd my-background-color">
                    <input class="weui-input" type="text"  placeholder="please input hotelname">
                </div>
            </div>
            <div class="weui-cell weui-cell_select weui-cell_select-after" style="padding-right: 15px;">
                <div class="weui-cell__hd">
                    <label  class="weui-label">Language</label>
                </div>
                <div class="weui-cell__bd">
                    <select class="weui-input my-background-color" style="margin: 10px 0px;" name="select2">
                        <option value="1">Chinese</option>
                        <option value="2">English</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div style=" text-align: center;height: 30px" id="errorMessage">
        <span style="color:red; width: 100%;display:none;">input data error !</span>
    </div>
    <div class="weui-btn-area">
        <a class="weui-btn weui-btn_primary" href="javascript:" id="showLoadingToast">submit</a>
    </div>
    <div class="weui-msg" id="registsuccess" style="display:none">
        <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
        <div class="weui-msg__text-area">
            <h2 class="weui-msg__title">regist success</h2>
            <p class="weui-msg__desc">Thank you for registering<a href="javascript:void(0);"> expedia</a></p>
        </div>
    </div>

</div>
<!-- loading toast -->
<div id="loadingToast" style="display:none;">
    <div class="weui-mask_transparent"></div>
    <div class="weui-toast">
        <i class="weui-loading weui-icon_toast"></i>
        <p class="weui-toast__content">checking...</p>
    </div>
</div>
<div id="dialogs">
    <div class="js_dialog" id="iosDialog" style="display: none;">
        <div class="weui-mask"></div>
        <div class="weui-dialog">
            <div class="weui-loadmore">
                <i class="weui-loading"></i>
                <span class="weui-loadmore__tips"></span>
            </div>
            <!-- <div class="weui-dialog__bd">regist success!</div> -->
            <!-- <div class="weui-dialog__ft">
                <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary">done</a>
            </div> -->
        </div>
    </div>
</div>

</body>
</html>
