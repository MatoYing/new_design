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
                                            首页
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">Home page</div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <div class="container-xl px-4 mt-5">
                        <div class="row">
                            <div id="carouselExampleCaptions" class="carousel slide mb-4" data-bs-ride="carousel">
                                <div class="carousel-indicators">
                                  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                </div>
                                <div class="carousel-inner">
                                  <div class="carousel-item active">
                                    <img src="/assets/img/1.jpg" class="d-block w-100" alt="..." style="height: 400px;">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="/assets/img/demo/demo-ocean-sm.jpg" class="d-block w-100" alt="..." style="height: 400px;">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="/assets/img/demo/demo-ocean-sm.jpg" class="d-block w-100" alt="..." style="height: 400px;">
                                  </div>
                                </div>
                                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                  <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                  <span class="visually-hidden">Next</span>
                                </button>
                              </div>
                            <div class="col-lg-4 mb-4">
                                <!-- Illustration card example-->
                                <div class="card mb-4">
                                    <div class="card-body text-center p-5">
                                        <img class="img-fluid mb-5" src="../../assets/img/1.jpg" />
                                        <h4>Report generation</h4>
                                        <a class="btn btn-primary p-3" href="#!">Continue</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mb-4">
                                <!-- Illustration card example-->
                                <div class="card mb-4">
                                    <div class="card-body text-center p-5">
                                        <img class="img-fluid mb-5" src="../../assets/img/illustrations/data-report.svg" />
                                        <h4>Report generation</h4>
                                        <p class="mb-4">Ready to get started? Let us know now! It's time to start building that dashboard you've been waiting to create!</p>
                                        <a class="btn btn-primary p-3" href="#!">Continue</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mb-4">
                                <!-- Illustration card example-->
                                <div class="card mb-4">
                                    <div class="card-body text-center p-5">
                                        <img class="img-fluid mb-5" src="../../assets/img/illustrations/data-report.svg" />
                                        <h4>Report generation</h4>
                                        <p class="mb-4">Ready to get started? Let us know now! It's time to start building that dashboard you've been waiting to create!</p>
                                        <a class="btn btn-primary p-3" href="#!">Continue</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xxl-4 col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        赛题动态
                                        <div class="dropdown no-caret">
                                            <button class="btn btn-transparent-dark btn-icon dropdown-toggle" id="dropdownMenuButton" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="text-gray-500" data-feather="more-vertical"></i></button>
                                            <div class="dropdown-menu dropdown-menu-end animated--fade-in-up" aria-labelledby="dropdownMenuButton">
                                                <h6 class="dropdown-header">Filter Activity:</h6>
                                                <a class="dropdown-item" href="#!"><span class="badge bg-green-soft text-green my-1">Commerce</span></a>
                                                <a class="dropdown-item" href="#!"><span class="badge bg-blue-soft text-blue my-1">Reporting</span></a>
                                                <a class="dropdown-item" href="#!"><span class="badge bg-yellow-soft text-yellow my-1">Server</span></a>
                                                <a class="dropdown-item" href="#!"><span class="badge bg-purple-soft text-purple my-1">Users</span></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="timeline timeline-xs">
                                            <!-- Timeline Item 1-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">27 min</div>
                                                    <div class="timeline-item-marker-indicator bg-green"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    New order placed!
                                                    <a class="fw-bold text-dark" href="#!">Order #2912</a>
                                                    has been successfully placed.
                                                </div>
                                            </div>
                                            <!-- Timeline Item 2-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">58 min</div>
                                                    <div class="timeline-item-marker-indicator bg-blue"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    Your
                                                    <a class="fw-bold text-dark" href="#!">weekly report</a>
                                                    has been generated and is ready to view.
                                                </div>
                                            </div>
                                            <!-- Timeline Item 3-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">2 hrs</div>
                                                    <div class="timeline-item-marker-indicator bg-purple"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    New user
                                                    <a class="fw-bold text-dark" href="#!">Valerie Luna</a>
                                                    has registered
                                                </div>
                                            </div>
                                            <!-- Timeline Item 4-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">1 day</div>
                                                    <div class="timeline-item-marker-indicator bg-yellow"></div>
                                                </div>
                                                <div class="timeline-item-content">Server activity monitor alert</div>
                                            </div>
                                            <!-- Timeline Item 5-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">1 day</div>
                                                    <div class="timeline-item-marker-indicator bg-green"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    New order placed!
                                                    <a class="fw-bold text-dark" href="#!">Order #2911</a>
                                                    has been successfully placed.
                                                </div>
                                            </div>
                                            <!-- Timeline Item 6-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">1 day</div>
                                                    <div class="timeline-item-marker-indicator bg-purple"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    Details for
                                                    <a class="fw-bold text-dark" href="#!">Marketing and Planning Meeting</a>
                                                    have been updated.
                                                </div>
                                            </div>
                                            <!-- Timeline Item 7-->
                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text">2 days</div>
                                                    <div class="timeline-item-marker-indicator bg-green"></div>
                                                </div>
                                                <div class="timeline-item-content">
                                                    New order placed!
                                                    <a class="fw-bold text-dark" href="#!">Order #2910</a>
                                                    has been successfully placed.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xxl-4 col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        赛题比例
                                        <div class="dropdown no-caret">
                                            <button class="btn btn-transparent-dark btn-icon dropdown-toggle" id="dropdownMenuButton" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="text-gray-500" data-feather="more-vertical"></i></button>
                                            <div class="dropdown-menu dropdown-menu-end animated--fade-in-up" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#!">
                                                    <div class="dropdown-item-icon"><i class="text-gray-500" data-feather="list"></i></div>
                                                    Manage Tasks
                                                </a>
                                                <a class="dropdown-item" href="#!">
                                                    <div class="dropdown-item-icon"><i class="text-gray-500" data-feather="plus-circle"></i></div>
                                                    Add New Task
                                                </a>
                                                <a class="dropdown-item" href="#!">
                                                    <div class="dropdown-item-icon"><i class="text-gray-500" data-feather="minus-circle"></i></div>
                                                    Delete Tasks
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="small">
                                            信息与电子工程学院
                                            <span class="float-end fw-bold">20%</span>
                                        </h4>
                                        <div class="progress mb-4"><div class="progress-bar bg-danger" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div></div>
                                        <h4 class="small">
                                            经济管理学院
                                            <span class="float-end fw-bold">40%</span>
                                        </h4>
                                        <div class="progress mb-4"><div class="progress-bar bg-warning" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div></div>
                                        <h4 class="small">
                                            理学院
                                            <span class="float-end fw-bold">60%</span>
                                        </h4>
                                        <div class="progress mb-4"><div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div></div>
                                        <h4 class="small">
                                            外国语学院
                                            <span class="float-end fw-bold">80%</span>
                                        </h4>
                                        <div class="progress mb-4"><div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div></div>
                                        <h4 class="small">
                                            机械与能源工程学院
                                            <span class="float-end fw-bold">Complete!</span>
                                        </h4>
                                        <div class="progress mb-4"><div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div></div>
                                        <h4 class="small">
                                            生物与化学工程学院
                                            <span class="float-end fw-bold">Complete!</span>
                                        </h4>
                                        <div class="progress"><div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">全部赛题</div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>赛题名称</th>
                                            <th>负责老师</th>
                                            <th>隶属学院</th>
                                            <th>开始日期</th>
                                            <th>结束日期</th>
                                            <th>费用</th>
                                            <th>状态</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Tiger Nixon</td>
                                            <td>李老师</td>
                                            <td>Edinburgh</td>
                                            <td>61</td>
                                            <td>2011/04/25</td>
                                            <td>$320,800</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
                                        </tr>
                                        <tr>
                                            <td>Garrett Winters</td>
                                            <td>王老师</td>
                                            <td>Tokyo</td>
                                            <td>63</td>
                                            <td>2011/07/25</td>
                                            <td>$170,750</td>
                                            <td><div class="badge bg-warning rounded-pill">Pending</div></td>
                                        </tr>
                                        <tr>
                                            <td>Donna Snider</td>
                                            <td>张老师</td>
                                            <td>New York</td>
                                            <td>27</td>
                                            <td>2011/01/25</td>
                                            <td>$112,000</td>
                                            <td><div class="badge bg-secondary text-white rounded-pill">Part-time</div></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card card-icon mb-4">
                            <div class="row g-0">
                                <div class="col-auto card-icon-aside bg-secondary"><i class="fa fa-question" aria-hidden="true" style="filter: brightness(100)"></i></div>
                                <div class="col">
                                    <div class="card card-header-actions">
                                        <div class="card-header">
                                            问题咨询
                                            <i class="text-muted" data-feather="info" data-bs-toggle="tooltip" data-bs-placement="left" title="我们将会在两个工作日内给您回复。"></i>
                                        </div>
                                        <div class="card-body">
                                            <textarea class="lh-base form-control" type="text" placeholder="请输入您要咨询的问题..." rows="4"></textarea>
                                        </div>
                                       
                                        <div class="text-center mb-3">
                                            <a class="btn btn-primary col-xl-3" href="auth-login-social.html">发送提问</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">相关负责人</div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <ul class="nav nav-pills flex-column" id="cardPillVertical" role="tablist">
                                            <li class="nav-item"><a class="nav-link active" id="overview-pill-vertical" href="#overviewPillVertical" data-bs-toggle="tab" role="tab" aria-controls="overview" aria-selected="true">办公室</a></li>
                                            <li class="nav-item"><a class="nav-link" id="example-pill-vertical" href="#examplePillVertical" data-bs-toggle="tab" role="tab" aria-controls="example" aria-selected="false">负责老师</a></li>
                                            <li class="nav-item"><a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">在线咨询</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-9">
                                        <div class="tab-content" id="cardPillContentVertical">
                                            <div class="tab-pane fade show active" id="overviewPillVertical" role="tabpanel" aria-labelledby="overview-pill-vertical">
                                                <h5 class="card-title">竞赛报名网负责办公室</h5>
                                                <p class="card-text">电话1： 8121212<br>电话2：898989</p>
                                            </div>
                                            <div class="tab-pane fade" id="examplePillVertical" role="tabpanel" aria-labelledby="example-pill-vertical">
                                                <h5 class="card-title">竞赛报名网负责老师</h5>
                                                <p class="card-text">张三老师：1333333333<br>李四老师：1555555555</p>
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
        <!-- <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script> -->
    
        <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js" crossorigin="anonymous"></script>
        <script src="/js/litepicker.js"></script>
        <script src="/js/jquery-3.5.1.js"></script>
        <script src="/js/datatables/jquery.dataTables.js"></script>

        <script>
            $(document).ready( function () {
                $('#datatablesSimple').DataTable({
                    bLengthChange:false,
                    // ordering: false,
                    order: [[3, 'desc']],
                    columnDefs:[{
                　　　　targets : [0,1,2,5,6],
                　　　　orderable : false
                　　}],
                    sInfoEmpty: "No entries to show",
                    info: false,
                    searching : false,
                    oLanguage:{ 
                        oPaginate: {  
                            sNext: "下一页",  
                            sPrevious: "上一页"  
                        }
                    }      
                });
            });

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
