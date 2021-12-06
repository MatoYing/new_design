<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ch-ZN">
<head>
    <title>竞赛报名网</title>
    <link href="/css/styles.css" rel="stylesheet"/>
    <link rel="icon" type="image/x-icon" href="/assets/img/favicon.ico"/>
<%--    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>--%>
</head>
<body class="bg-primary">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container-xl px-4">
                    <div class="row justify-content-center">
                        <div class="col-xl-5 col-lg-6 col-md-8 col-sm-11">
                            <div class="card my-5">
                                <div class="card-body p-5 text-center">
                                    <div class="h3 fw-light mb-3">Sign In</div>
                                    <a class="btn btn-icon btn-github mx-1" href="https://github.com/login/oauth/authorize?client_id=4051ade1df89380efd17&redirect_uri=http://localhost:8080/callback&scope=user&state=1"><i class="fab fa-github fa-fw fa-sm"></i></a>
                                </div>
                                <hr class="my-0"/>
                                <div class="card-body p-5 pb-3">
                                    <form>
                                        <div class="mb-3">
                                            <label class="text-gray-600 small">账号</label>
                                            <input class="form-control form-control-solid" id="number" type="text" name="number"/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-gray-600 small">密码</label>
                                            <input class="form-control form-control-solid" id="password" type="password" name="password"/>
                                        </div>
                                        <div id="new_html"></div>
                                        <div class="d-flex align-items-center justify-content-between mb-3">
                                            <div class="form-check">
                                                <input class="form-check-input" id="checkRememberPassword" type="checkbox"/>
                                                <label class="form-check-label" for="checkRememberPassword">记住密码</label>
                                            </div>
                                            <a class="small" href="/password.jsp">忘记密码？</a>
                                        </div>
                                        <div class="mb-0 text-center">
                                            <a class="btn btn-primary" onclick="a1()">登录</a>
                                        </div>
                                    </form>
                                </div>
                                <hr class="my-0"/>
                                <div class="card-body px-5 py-4">
                                    <div class="small text-center">
                                        <a href="/register.jsp">没有账户？</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <div id="layoutAuthentication_footer">
            <footer class="footer-admin mt-auto footer-dark">
                <div class="container-xl px-4">
                    <div class="row">
                        <div class="col-md-12 text-center small">Copyright &copy; YAN SICHAO 2021</div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="/js/jquery-3.5.1.js"></script>
    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="/js/scripts.js"></script>

    <script>

        var a = 0;
        var html = '<div class="mb-3">\n' +
            '           <div class="row gx-3">\n' +
            '               <div class="col-md-8">\n' +
            '                   <div class="">\n' +
            '                       <label class="text-gray-600 small">验证码</label>\n' +
            '                       <input class="form-control form-control-solid" type="text" id="verification" size="4"/>\n' +
            '                   </div>\n' +
            '                </div>\n' +
            '               <div class="col-md-4 text-center">\n' +
            '                   <div class="">\n' +
            '                       <img src="verification.jsp" alt="" class="mt-xl-4 mt-md-4  mt-2">\n' +
            '                   </div>\n' +
            '               </div>\n' +
            '            </div>\n' +
            '        </div>';
        function a1() {
            $('#number').attr('class', 'form-control form-control-solid');
            $('#password').attr('class', 'form-control form-control-solid');
            var number = $('#number').val();
            var password = $('#password').val();
            if (number != '') {
                if (password != '') {
                    if (a == 2) {
                        $('#new_html').html(html);
                    }
                    if (a > 2) {
                        var verification = $('#verification').val();
                        console.log("diwdwad" + verification);
                    }
                    $.getJSON(
                        "/loginServlet",
                        {"number": number, "password": password, "verification": verification},
                        function (result) {
                            var json = eval(result);
                            if (json == '0') {
                                $('#number').attr('class', 'form-control is-invalid');
                            } else if (json == '1') {
                                $('#password').attr('class', 'form-control is-invalid');
                            } else if (json == '2' ){
                                console.log(4);
                                $('#verification').attr('class', 'form-control is-invalid');
                            } else {
                                window.location.href = '/view/common/home.jsp';
                            }
                        }
                    )
                    a++;
                } else {
                    $('#password').attr('class', 'form-control is-invalid');
                }
            } else {
                $('#number').attr('class', 'form-control is-invalid');
            }
        }



        var ws;
        var ws_url = "ws://localhost:8080/chatroom";
        screenFuc();
        function screenFuc() {
            var topHeight = $(".chatBox-head").innerHeight();//聊天头部高度
            //屏幕小于768px时候,布局change
            var winWidth = $(window).innerWidth();
            if (winWidth <= 768) {
                var totalHeight = $(window).height(); //页面整体高度
                $(".chatBox-info").css("height", totalHeight - topHeight);
                var infoHeight = $(".chatBox-info").innerHeight();//聊天头部以下高度
                //中间内容高度
                $(".chatBox-content").css("height", infoHeight - 46);
                $(".chatBox-content-demo").css("height", infoHeight - 46);

                $(".chatBox-list").css("height", totalHeight - topHeight);
                $(".chatBox-kuang").css("height", totalHeight - topHeight);
                $(".div-textarea").css("width", winWidth - 106);
            } else {
                $(".chatBox-info").css("height", 495);
                $(".chatBox-content").css("height", 448);
                $(".chatBox-content-demo").css("height", 448);
                $(".chatBox-list").css("height", 495);
                $(".chatBox-kuang").css("height", 495);
                $(".div-textarea").css("width", 260);
            }
        }
        (window.onresize = function () {
            screenFuc();
        })();
        //未读信息数量为空时
        var totalNum = $(".chat-message-num").html();
        if (totalNum == "") {
            $(".chat-message-num").css("padding", 0);
        }
        $(".message-num").each(function () {
            var wdNum = $(this).html();
            if (wdNum == "") {
                $(this).css("padding", 0);
            }
        });
        //打开/关闭聊天框
        $(".chatBt").click(function () {
            $(".chatBox").toggle(10);
        })
        $(".chat-close").click(function () {
            $(".chatBox").toggle(10);
        })
        //进聊天页面
        $(".chat-list-people").each(function () {
            $(this).click(function () {
                var n = $(this).index();
                $(".chatBox-head-one").toggle();
                $(".chatBox-head-two").toggle();
                $(".chatBox-list").fadeToggle();
                $(".chatBox-kuang").fadeToggle();
                //传名字
                $(".ChatInfoName").text($(this).children(".chat-name").children("p").eq(0).html());
                //传头像
                $(".ChatInfoHead>img").attr("src", $(this).children().eq(0).children("img").attr("src"));
                //聊天框默认最底部
                $(document).ready(function () {
                    $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
                });
            })
        });
        //返回列表
        $(".chat-return").click(function () {
            $(".chatBox-head-one").toggle(1);
            $(".chatBox-head-two").toggle(1);
            $(".chatBox-list").fadeToggle(1);
            $(".chatBox-kuang").fadeToggle(1);
        });



        //      发送信息
        $("#chat-fasong").click(function () {
            var myDate = new Date();
            ws_connect();
            var textContent = $(".div-textarea").html().replace(/[\n\r]/g, '<br>')
            if (textContent != "") {
                $(".chatBox-content-demo").append("<div class=\"clearfloat\">" +
                    "<div class=\"author-name\"><small class=\"chat-date\">" + myDate + "</small> </div> " +
                    "<div class=\"right\"> <div class=\"chat-message\"> " + textContent + " </div> " +
                    "<div class=\"chat-avatars\"><img src=\"img/icon01.png\" alt=\"头像\" /></div> </div> </div>");
                //发送后清空输入框
                $(".div-textarea").html("");
                //聊天框默认最底部
                $(document).ready(function () {
                    $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
                });
                ws.send(textContent);
            }
        });

        //连接对象
        function ws_connect() {
            var loginUser = '${sessionScope.number}';
            console.log(2121);
            console.log(loginUser);
            if ('WebSocket' in window) {
                ws = new WebSocket(ws_url + '?loginName=' + loginUser);
            } else if ('MozWebSocket' in window) {
                ws = new MozWebSocket(ws_url);
            } else {
                console.log('Error: WebSocket is not supported by this browser.');
                return;
            }
            ws.onopen = function () {
                console.log('Info: WebSocket connection opened.');
            };
            ws.onclose = function () {
                console.log('Info: WebSocket closed.');
            };
            //后台sendText发送的会到这里
            ws.onmessage = function (message) {
                var receiveMsg = message.data;
                var obj = JSON.parse(receiveMsg);
                //追加，不覆盖
                $('#record').append('<div>' + obj.msgSender + '&nbsp;' + obj.msgDateStr + '</div><div>' + obj.msgInfo + '</div>');
            };
        };
        function ws_sendMsg() {
            var msg=$('#msg').val();
            //发送给后端
            ws.send(msg)
        };
    </script>
</body>
</html>
