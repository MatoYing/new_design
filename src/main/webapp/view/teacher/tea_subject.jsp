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
                                                <form action="/uploadServlet" method="post" enctype="multipart/form-data">
                                                    <div class="mb-3">
                                                        <label>赛题名称</label>
                                                        <input class="form-control"  type="text" name="name"/>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label>允许报名形式</label>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="limit" value="1" checked>
                                                            <label class="form-check-label">
                                                                个人
                                                            </label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="limit" value="2">
                                                            <label class="form-check-label">
                                                                团队
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-xl-5 col-lg-6 col-md-8 col-sm-11">
                                                            <label>报名日期</label>
                                                            <div class="input-group input-group-joined border-1" style="width: 16.5rem">
                                                                <span class="input-group-text"><i data-feather="calendar"></i></span>
                                                                <input type="text" name="date"  id="date" class="border-0"/>
                                                            </div>
                                                        </div>
                                                        <div class="mb-3 col-xl-5 col-lg-6 col-md-8 col-sm-11">
                                                            <label>是否付费</label>
                                                            <div class="input-group">
                                                                <div class="input-group-text">
                                                                    <input class="form-check-input mt-0" type="checkbox" name="isPrice" value="1" onclick="a1()">
                                                                </div>
                                                                <input type="text" class="form-control" placeholder="请直接填入数字金额，元为单位" name="price" id="price" readonly="readonly">
                                                            </div>
                                                        </div>
                                                    </div>
        
                                                    <div class="mb-0">
                                                        <label>简介</label>
                                                        <textarea class="lh-base form-control" type="text" placeholder="字数不得多于30字" rows="4" maxlength="30" name="introduction"></textarea>
                                                        <div class="editor-statusbar">
                                                            <span class="words">30</span>
                                                        </div>
                                                    </div>
                                                    <div class="mb-0">
                                                        <label>附加资料</label>
                                                        <div class="input-group mb-3">
                                                            <input type="file" class="form-control" id="file">
                                                        </div>
                                                    </div>
                                                    <div class="text-center">
                                                        <button class="btn btn-primary" type="submit">提交</button>
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
        <script src="https://unpkg.com/easymde/dist/easymde.min.js" crossorigin="anonymous"></script>
        <script src="/js/markdown.js"></script>
        <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
        <script type="text/javascript" src="/JQuery/date/js/moment.min.js"></script>
        <script type="text/javascript" src="/JQuery/date/js/daterangepicker.min.js"></script>
        <%-- 这个date插件必须用1.10.2这个版本 --%>
<%--        <script src="/js/jquery-3.5.1.js"></script>--%>
        <script src="/JQuery/chat/js/chat.js"></script>
        <script>
            var start_time;
            var deadline;
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
                   start_time = start.format('YYYY-MM-DD');
                   deadline = end.format('YYYY-MM-DD');
                   console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
               });
            })

            function a1() {
                if($('#price').attr('readonly') == 'readonly') {
                    console.log(1212);
                    $('#price').removeAttr('readonly');
                } else {
                    console.log(3333);
                    $('#price').attr('readonly', 'readonly')
                }
            }

        </script>
    </body>
</html>
