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
                                            发布历史
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">Historical Release</div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-4">
                        <nav class="nav nav-borders">
                            <a class="nav-link" href="tea_profile.jsp">个人</a>
                            <a class="nav-link active ms-0" href="tea_score.jsp">发布</a>
                        </nav>
                        <hr class="mt-0 mb-4" />
                        <div class="row">
                            <div class="col-lg-9">
                                <!-- Fade In Transition-->
                                <div id="fade1">
                                    <div class="card mb-4">
                                        <div class="card-header">2021</div>
                                        <div class="card-body">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">学期</th>
                                                        <th scope="col">赛题名称</th>
                                                        <th scope="col">报名人数</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Larry the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Fade In Up Transition-->
                                <div id="fade2">
                                    <div class="card mb-4">
                                        <div class="card-header">2020</div>
                                        <div class="card-body">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">学期</th>
                                                        <th scope="col">赛题名称</th>
                                                        <th scope="col">报名人数</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Larry the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div id="fade3">
                                    <div class="card mb-4">
                                        <div class="card-header">2019</div>
                                        <div class="card-body">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">学期</th>
                                                        <th scope="col">赛题名称</th>
                                                        <th scope="col">报名人数</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Larry the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Sticky Navigation-->
                            <div class="col-lg-3">
                                <div class="nav-sticky">
                                    <div class="card">
                                        <div class="card-body">
                                            <ul class="nav flex-column" id="stickyNav">
                                                <li class="nav-item"><a class="nav-link" href="#fade1">2021</a></li>
                                                <li class="nav-item"><a class="nav-link" href="#fade2">2020</a></li>
                                                <li class="nav-item"><a class="nav-link" href="#fade3">2019</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="footer-admin mt-auto footer-light">
                    <div class="container-xl px-4">
                        <div class="row">
                            <div class="col-md-12 text-center small">Copyright &copy; YAN SICHAO 2021</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/components/prism-core.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/plugins/autoloader/prism-autoloader.min.js" crossorigin="anonymous"></script>
        <script src="/js/jquery-3.5.1.js"></script>
        <script>
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
                var textContent = $(".div-textarea").html().replace(/[\n\r]/g, '<br>')
                if (textContent != "") {
                    $(".chatBox-content-demo").append("<div class=\"clearfloat\">" +
                        "<div class=\"author-name\"><small class=\"chat-date\">2017-12-02 14:26:58</small> </div> " +
                        "<div class=\"right\"> <div class=\"chat-message\"> " + textContent + " </div> " +
                        "<div class=\"chat-avatars\"><img src=\"img/icon01.png\" alt=\"头像\" /></div> </div> </div>");
                    //发送后清空输入框
                    $(".div-textarea").html("");
                    //聊天框默认最底部
                    $(document).ready(function () {
                        $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
                    });
                }
            });

            //      发送表情
            $("#chat-biaoqing").click(function () {
                $(".biaoqing-photo").toggle();
            });
            $(document).click(function () {
                $(".biaoqing-photo").css("display", "none");
            });
            $("#chat-biaoqing").click(function (event) {
                event.stopPropagation();//阻止事件
            });

            $(".emoji-picker-image").each(function () {
                $(this).click(function () {
                    var bq = $(this).parent().html();
                    console.log(bq)
                    $(".chatBox-content-demo").append("<div class=\"clearfloat\">" +
                        "<div class=\"author-name\"><small class=\"chat-date\">2017-12-02 14:26:58</small> </div> " +
                        "<div class=\"right\"> <div class=\"chat-message\"> " + bq + " </div> " +
                        "<div class=\"chat-avatars\"><img src=\"img/icon01.png\" alt=\"头像\" /></div> </div> </div>");
                    //发送后关闭表情框
                    $(".biaoqing-photo").toggle();
                    //聊天框默认最底部
                    $(document).ready(function () {
                        $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
                    });
                })
            });

            //      发送图片
            function selectImg(pic) {
                if (!pic.files || !pic.files[0]) {
                    return;
                }
                var reader = new FileReader();
                reader.onload = function (evt) {
                    var images = evt.target.result;
                    $(".chatBox-content-demo").append("<div class=\"clearfloat\">" +
                        "<div class=\"author-name\"><small class=\"chat-date\">2017-12-02 14:26:58</small> </div> " +
                        "<div class=\"right\"> <div class=\"chat-message\"><img src=" + images + "></div> " +
                        "<div class=\"chat-avatars\"><img src=\"img/icon01.png\" alt=\"头像\" /></div> </div> </div>");
                    //聊天框默认最底部
                    $(document).ready(function () {
                        $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
                    });
                };
                reader.readAsDataURL(pic.files[0]);

            }
        </script>
    </body>
</html>
