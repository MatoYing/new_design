<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="subjects" class="com.zust.ysc012.dao.impl.CommonDaoImpl" scope="page"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
    <head>
        <title>竞赛报名网</title>
        <link href="/css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="/assets/img/favicon.ico" />
        <link rel="stylesheet" href="/JQuery/chat/font_Icon/iconfont.css">
        <link rel="stylesheet" href="/JQuery/chat/css/chat.css">
        <link rel="stylesheet" href="/JQuery/img/css/cropper.min.css">
        <link rel="stylesheet" href="/JQuery/img/css/ImgCropping.css">
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="nav-fixed">
    <%@ include file="/directory1.jsp"%>
    <div id="layoutSidenav">
        <%@ include file="/directory2.jsp"%>

            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-xl px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="user"></i></div>
                                            个人
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">Profile</div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-4">
                        <!-- Account page navigation-->
                        <nav class="nav nav-borders">
                            <a class="nav-link active ms-0" href="/view/teacher/tea_profile.jsp">个人</a>
                            <a class="nav-link" href="/view/teacher/tea_score.jsp">历史</a>
                        </nav>
                        <hr class="mt-0 mb-4" />
                        <div class="row">
                            <div class="col-xl-4">
                                <!-- Profile picture card-->
                                <div class="card mb-4 mb-xl-0">
                                    <div class="card-header">个人头像</div>
                                    <div class="card-body text-center">
                                        <!-- Profile picture image-->
                                        <img class="img-account-profile rounded-circle mb-2" src="/assets/img/illustrations/profiles/profile-1.png" alt="" id="finalImg"/>
                                        <!-- Profile picture help block-->
                                        <div class="small font-italic text-muted mb-2">默认头像，可从本地上传新头像</div>
                                        <!-- Profile picture upload button-->
                                        <button class="btn btn-primary" type="button" id="replaceImg">更新头像</button>
                                    </div>
                                </div>
                            </div>
                            <div style="display: none;" class="tailoring-container">
                                <div class="black-cloth" onclick="closeTailor(this)"></div>
                                <div class="tailoring-content">
                                        <div class="tailoring-content-one">
                                            <label title="上传图片" for="chooseImg" class="l-btn choose-btn">
                                                <input type="file" accept="image/jpg,image/jpeg,image/png" name="file" id="chooseImg" class="hidden" onchange="selectImg(this)">
                                                选择图片
                                            </label>
                                            <div class="close-tailoring"  onclick="closeTailor(this)">×</div>
                                        </div>
                                        <div class="tailoring-content-two">
                                            <div class="tailoring-box-parcel">
                                                <img id="tailoringImg">
                                            </div>
                                            <div class="preview-box-parcel">
                                                <p>图片预览：</p>
                                                <!-- <div class="square previewImg"></div> -->
                                                <div class="circular previewImg"></div>
                                            </div>
                                        </div>
                                        <div class="tailoring-content-three">
                                            <button class="l-btn cropper-reset-btn">复位</button>
                                            <button class="l-btn cropper-rotate-btn">旋转</button>
                                            <button class="l-btn cropper-scaleX-btn">换向</button>
                                            <button class="l-btn sureCut" id="sureCut">确定</button>
                                        </div>
                                    </div>
                            </div>
                            <div class="col-xl-8">
                                <!-- Account details card-->
                                <div class="card mb-4">
                                    <div class="card-header">个人信息表</div>
                                    <div class="card-body">
                                        <c:set var="number" value="${sessionScope.number}"/>
                                        <form>
                                            <div class="row gx-3 mb-3">
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputFirstName">姓名</label>
                                                    <input class="form-control" id="inputFirstName" type="text" value="${subjects.select_person_sql(number).name}" readonly="readonly"/>
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputLastName">性别</label>
                                                    <c:if test="${subjects.select_person_sql(number).sex == 1}">
                                                        <input class="form-control" id="inputLastName" type="text" value="男" readonly="readonly"/>
                                                    </c:if>
                                                    <c:if test="${subjects.select_person_sql(number).sex == 2}">
                                                        <input class="form-control" id="inputLastName" type="text" value="女" readonly="readonly"/>
                                                    </c:if>
                                                </div>
                                            </div>
                                            <div class="row gx-3 mb-3">
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputOrgName">出生日期</label>
                                                    <input class="form-control" id="inputOrgName" type="text" value="${subjects.select_person_sql(number).birthday}" readonly="readonly"/>
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputLocation">学院</label>
                                                    <input class="form-control" id="inputLocation" type="text" value="${subjects.select_person_sql(number).academy}" readonly="readonly"/>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputEmailAddress">邮箱地址</label>
                                                <input class="form-control" id="inputEmailAddress" type="email" value="${subjects.select_person_sql(number).email}" readonly="readonly"/>
                                            </div>
                                            <div class="text-center">
                                                <button class="btn btn-primary" type="button" disabled>更新</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <%@ include file="/footer.jsp"%>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/js/scripts.js"></script>
        <script src="/js/jquery-3.5.1.js"></script>
        <script src="/JQuery/img/js/cropper.min.js"></script>
    <script src="/JQuery/chat/js/chat.js"></script>
        <script>
            (window.onresize = function () {
        var win_height = $(window).height() + 60;
        var win_width = $(window).width();
        if (win_width <= 768){
            $(".tailoring-content").css({
                "top": (win_height - $(".tailoring-content").outerHeight())/2,
                "left": 0
            });
        }
        else{
            $(".tailoring-content").css({
                "top": (win_height - $(".tailoring-content").outerHeight())/2,
                "left": (win_width - $(".tailoring-content").outerWidth())/2
            });
        }
    })();

    //弹出图片裁剪框
    $("#replaceImg").on("click",function () {
        $(".tailoring-container").toggle();
    });
    //图像上传
    function selectImg(file) {
        if (!file.files || !file.files[0]){
            return;
        }
        var reader = new FileReader();
        reader.onload = function (evt) {
            var replaceSrc = evt.target.result;
            //更换cropper的图片
            $('#tailoringImg').cropper('replace', replaceSrc,false);//默认false，适应高度，不失真
        }
        reader.readAsDataURL(file.files[0]);
    }
    //cropper图片裁剪
    $('#tailoringImg').cropper({
        aspectRatio: 1/1,//默认比例
        preview: '.previewImg',//预览视图
        guides: false,  //裁剪框的虚线(九宫格)
        autoCropArea: 0.5,  //0-1之间的数值，定义自动剪裁区域的大小，默认0.8
        movable: false, //是否允许移动图片
        dragCrop: true,  //是否允许移除当前的剪裁框，并通过拖动来新建一个剪裁框区域
        movable: true,  //是否允许移动剪裁框
        resizable: true,  //是否允许改变裁剪框的大小
        zoomable: false,  //是否允许缩放图片大小
        mouseWheelZoom: false,  //是否允许通过鼠标滚轮来缩放图片
        touchDragZoom: true,  //是否允许通过触摸移动来缩放图片
        rotatable: true,  //是否允许旋转图片
        crop: function(e) {
            // 输出结果数据裁剪图像。
        }
    });
    //旋转
    $(".cropper-rotate-btn").on("click",function () {
        $('#tailoringImg').cropper("rotate", 45);
    });
    //复位
    $(".cropper-reset-btn").on("click",function () {
        $('#tailoringImg').cropper("reset");
    });
    //换向
    var flagX = true;
    $(".cropper-scaleX-btn").on("click",function () {
        if(flagX){
            $('#tailoringImg').cropper("scaleX", -1);
            flagX = false;
        }else{
            $('#tailoringImg').cropper("scaleX", 1);
            flagX = true;
        }
        flagX != flagX;
    });

    //裁剪后的处理
    $("#sureCut").on("click",function () {
        if ($("#tailoringImg").attr("src") == null ){
            return false;
        }else{
            var cas = $('#tailoringImg').cropper('getCroppedCanvas');//获取被裁剪后的canvas
            var base64url = cas.toDataURL('image/png'); //转换为base64地址形式
            $("#finalImg").prop("src",base64url);//显示为图片的形式

            //关闭裁剪框
            closeTailor();
        }
    });
    //关闭裁剪框
    function closeTailor() {
        $(".tailoring-container").toggle();
    }
        </script>
    </body>
</html>
