<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="subjects" class="com.zust.ysc012.dao.impl.CommonDaoImpl" scope="page"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
    <head>
        <title>竞赛报名网</title>
        <!-- <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" /> -->
        <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/litepicker/dist/css/litepicker.css" rel="stylesheet" />
        <link href="/css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="/assets/img/favicon.ico" />
        <link rel="stylesheet" href="/other/font-awesome.min.css">
        <link href="https://unpkg.com/easymde/dist/easymde.min.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="/JQuery/date/css/daterangepicker.css" />
        <link rel="stylesheet" href="/JQuery/chat/font_Icon/iconfont.css">
        <link rel="stylesheet" href="/JQuery/chat/css/chat.css">
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
        <style>
          
        </style>
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
                                            赛题
                                        </h1>
                                    </div>
                                    
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" href="tea_pre_subject.jsp">
                                            <i class="me-1" data-feather="arrow-left"></i>
                                            返回
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-5">
                        
                        <div class="card mb-4">
                            <div class="card card-header-actions">
                                <div class="card-header">
                                    赛题详情
                                </div>
                                <div v class="card-body">
                                    <!-- Component Preview-->
                                    <div class="card-body">
                                        <!-- Component Preview-->
                                        <div class="sbp-preview">
                                            <div class="sbp-preview-content">
                                                <form>
                                                    <div class="mb-3">
                                                        <label for="exampleFormControlInput1">赛题名称</label>
                                                        <input class="form-control" id="exampleFormControlInput1" type="email" placeholder="" disabled/>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="exampleFormControlInput1">允许学院</label>
                                                        <div class="form-check">
                                                            <input class="form-check-input" id="flexCheckDefault" type="checkbox" value="" checked disabled/>
                                                            <label class="form-check-label" for="flexCheckDefault">所有</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" id="flexCheckChecked" type="checkbox" value="" disabled/>
                                                            <label class="form-check-label" for="flexCheckChecked">信息与电子工程学院<label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" id="flexCheckDefault" type="checkbox" value="" disabled/>
                                                            <label class="form-check-label" for="flexCheckDefault">经济管理学院</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" id="flexCheckChecked" type="checkbox" value="" disabled/>
                                                            <label class="form-check-label" for="flexCheckChecked">理学院</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" id="flexCheckDefault" type="checkbox" value="" disabled/>
                                                            <label class="form-check-label" for="flexCheckDefault">外国语学院</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" id="flexCheckChecked" type="checkbox" value="" disabled/>
                                                            <label class="form-check-label" for="flexCheckChecked">机械与能源工程学院</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" id="flexCheckDisabled" type="checkbox" value="" disabled/>
                                                            <label class="form-check-label" for="flexCheckDisabled">生物与化学工程学院</label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-xl-5 col-lg-6 col-md-8 col-sm-11">
                                                            <label for="exampleFormControlInput1">报名日期</label>
                                                            <div class="input-group input-group-joined border-1" style="width: 16.5rem">
                                                                <span class="input-group-text"><i data-feather="calendar"></i></span>
                                                                <!-- <input class="form-control ps-0 pointer" id="litepickerRangePlugin" placeholder="Select date range..." /> -->
                                                                <input type="text" name="daterange" value="01/01/2018 - 01/15/2018" id="date" class="border-0" disabled/>
                                                            </div>
                                                        </div>
                                                        <div class="mb-3 col-xl-5 col-lg-6 col-md-8 col-sm-11">
                                                            <label for="exampleFormControlInput1">是否付费</label>
                                                            <div class="input-group">
                                                                <div class="input-group-text">
                                                                    <input class="form-check-input mt-0" type="radio" value="" aria-label="Checkbox for following text input" disabled>
                                                                </div>
                                                                <input type="text" class="form-control" aria-label="Text input with checkbox" placeholder="请直接填入数字金额，元为单位" disabled>
                                                            </div>
                                                        </div>
                                                    </div>
        
                                                    <div class="mb-0">
                                                        <label for="exampleFormControlTextarea1">简介</label>
                                                        <textarea class="lh-base form-control" type="text" placeholder="字数不得多于30字" rows="4" disabled></textarea>
                                                        <div class="editor-statusbar"><span class="autosave"><span class="words">30</span></div>
                                                    </div>
                                                    <div class="mb-0" onclick="click_input()">
                                                        <label for="exampleFormControlTextarea1">附加资料</label>
                                                        <div class="input-group mb-3" >
                                                            <input type="file" class="form-control" id="inputGroupFile" disabled>
                                                        </div>
                                                    </div>
                                                        <div class="card-body">
                                                            <table class="table">
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col">人数</th>
                                                                        <th scope="col">姓名</th>
                                                                        <th scope="col">学院</th>
                                                                        <th scope="col">班级</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <th scope="row">1</th>
                                                                        <td>Mark</td>
                                                                        <td>Otto</td>
                                                                        <td>Otto</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">2</th>
                                                                        <td>Jacob</td>
                                                                        <td>Thornton</td>
                                                                        <td>Otto</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">3</th>
                                                                        <td>Larry the Bird</td>
                                                                        <td>@twitter</td>
                                                                        <td>Otto</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                    </div>
                                                    <div class="text-center">
                                                        <button class="btn btn-primary" type="button" disabled>提交</button>
                                                    </div>
                                                </form>
                                            </div>
                                            
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js" crossorigin="anonymous"></script>
        <script src="/assets/demo/chart-area-demo.js"></script>
        <script src="/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js" crossorigin="anonymous"></script>
        <script src="/js/litepicker.js"></script>
        <!-- <script src="js/jquery-3.5.1.js"></script> -->
        <script src="https://unpkg.com/easymde/dist/easymde.min.js" crossorigin="anonymous"></script>
        <script src="/js/markdown.js"></script>
        <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
        <script type="text/javascript" src="/JQuery/date/js/moment.min.js"></script>
        <script type="text/javascript" src="/JQuery/date/js/daterangepicker.min.js"></script>
        <script src=""></script>
        <script>
            $(function () {
                var locale = {
                    "format": 'YYYY-MM-DD',
                    "separator": " - ",
                    "applyLabel": "确定",
                    "cancelLabel": "取消",
                    "fromLabel": "起始时间",
                    "toLabel": "结束时间'",
                    "customRangeLabel": "",
                    "weekLabel": "W",
                    "daysOfWeek": ["日", "一", "二", "三", "四", "五", "六"],
                    "monthNames": ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                    "firstDay": 1
                };
                $('#date').daterangepicker({
                    'locale': locale,
                    "alwaysShowCalendars": true,
                    "startDate": new Date(),
                    "endDate": new Date(),
                    "opens": "right",
                }, function (start, end, label) {
                    console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
                });
            });

            function click_input() {
                alert(12);
            }

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
