<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="subjects" class="com.zust.ysc012.dao.impl.CommonDaoImpl" scope="page"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <title>竞赛报名网</title>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/litepicker/dist/css/litepicker.css" rel="stylesheet" />
    <link href="/css/styles.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="/assets/img/favicon.ico" />
    <link rel="stylesheet" href="/other/font-awesome.min.css">
    <link rel="stylesheet" href="/JQuery/chat/font_Icon/iconfont.css">
    <link rel="stylesheet" href="/JQuery/chat/css/chat.css">
    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
    <style>
        @media (max-width: 500px) {
            #one_media {
                display: none;
            }
        }
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
                                        个人
                                    </h1>
                                </div>
                                <div class="col-12 col-xl-auto mb-3">Individual</div>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="container-xl px-4 mt-5">
                    <div class="card mb-4">
                        <div class="card-header">参赛历史</div>
                        <div class="card-body">
                            <div class="sbp-preview">
                                <div class="sbp-preview-content">
                                    <div class="timeline">
                                        <c:set var="number" value="${sessionScope.number}"/>
                                        <c:forEach items="${subjects.select_person_subject_sql2(number)}" var="subject">
                                            <c:if test="${subject[6] == 2}">
                                                <div class="timeline-item">
                                                    <div class="timeline-item-marker">
                                                        <div class="timeline-item-marker-text">${subject[7]}</div>
                                                        <div class="timeline-item-marker-indicator"><i data-feather="check"></i></div>
                                                    </div>
                                                    <div class="timeline-item-content">${subject[0]}</div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mb-4" id="one_media">
                        <div class="card-header">请求结果</div>
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
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
<%--                                    <c:set var="number" value="${sessionScope.number}"/>--%>
                                    <c:forEach items="${subjects.select_person_subject_sql2(number)}" var="subject">
                                        <tr>
                                            <td>${subject[0]}</td>
                                            <td>${subject[1]}</td>
                                            <td>${subject[5]}</td>
                                            <td>${subject[2]}</td>
                                            <td>${subject[3]}</td>
                                            <td>${subject[4]}</td>
                                            <td>
                                                <c:if test="${subject[6] == 3}">
                                                    <div class="badge bg-warning rounded-pill">失败</div>
                                                </c:if>
                                                <c:if test="${subject[6] == 2}">
                                                    <div class="badge bg-secondary text-white rounded-pill">成功</div>
                                                </c:if>
                                                <c:if test="${subject[6] == 1}">
                                                    <div class="badge bg-primary text-white rounded-pill">等待</div>
                                                </c:if>
                                            </td>
                                            <td><button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i class="fa fa-envelope" aria-hidden="true"></i></button></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
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
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <!-- <script src="js/datatables/datatables-simple-demo.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js" crossorigin="anonymous"></script>
    <script src="/js/litepicker.js"></script>
    <script src="/js/jquery-3.5.1.js"></script>
    <script src="/js/datatables/jquery.dataTables.js"></script>
    <script src="/JQuery/chat/js/chat.js"></script>
    <script>
        $(document).ready( function () {
            $('#datatablesSimple').DataTable({
                bLengthChange:false,
                // ordering: false,
                order: [[3, 'desc']],
                columnDefs:[{　　　　targets : [0,1,2,5,6,7],　　　　orderable : false　　}],
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
    </script>
</body>
</html>
