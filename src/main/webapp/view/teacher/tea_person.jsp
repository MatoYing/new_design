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
                                        请求
                                    </h1>
                                </div>
                                <div class="col-12 col-xl-auto mb-3">Request</div>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="container-xl px-4 mt-5">
                    <div class="card mb-4">
                        <div class="card-header">全部请求</div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                <tr>
                                    <th>赛题名称</th>
                                    <th>姓名</th>
                                    <th>班级</th>
                                    <th>请求日期</th>
                                    <th>状态</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:set var="number" value="${sessionScope.number}"/>
                                    <c:forEach items="${subjects.select_person_subject_sql3(number)}" var="subject">
                                        <tr>
                                            <td>${subject[0]}</td>
                                            <td>${subject[1]}</td>
                                            <td>${subject[2]}</td>
                                            <td>${subject[4]}</td>
                                            <td>
                                                <c:if test="${subject[3] == 3}">
                                                    <div class="badge bg-warning rounded-pill">失败</div>
                                                </c:if>

                                                <c:if test="${subject[3] == 2}">
                                                    <div class="badge bg-secondary text-white rounded-pill">成功</div>
                                                </c:if>
                                                <c:if test="${subject[3] == 1}">
                                                    <div class="badge bg-primary text-white rounded-pill">等待</div>
                                                </c:if>
                                            </td>
                                            <td>
                                                <c:if test="${subject[3] == 1}">
                                                    <a class="btn btn-datatable btn-icon btn-transparent-dark" href="/replyServlet?reply=2&useless=${subject[5]}&team=${subject[6]}"><i class="fa fa-times-circle" aria-hidden="true"></i></a>
                                                    &nbsp;
                                                    <a class="btn btn-datatable btn-icon btn-transparent-dark" href="/replyServlet?reply=1&useless=${subject[5]}&team=${subject[6]}"><i class="fa fa-check-square" aria-hidden="true"></i></a>
                                                </c:if>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
            <%@ include file="/footer.jsp"%>
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
    <script src="/JQuery/chat/js/chat.js"></script>
    <script>
        $(document).ready( function () {
            $('#datatablesSimple').DataTable({
                bLengthChange:false,
                // ordering: false,
                order: [[3, 'desc']],
                columnDefs:[{　　　　targets : [0,1,2,4,5],　　　　orderable : false　　}],
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
