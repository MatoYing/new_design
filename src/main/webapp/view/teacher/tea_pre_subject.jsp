<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="subjects" class="com.zust.ysc012.dao.impl.CommonDaoImpl" scope="page"/>
<jsp:useBean id="date" class="com.zust.ysc012.service.impl.CommonServiceImpl" scope="page"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <title>竞赛报名网</title>
<%--    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />--%>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet" />
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
                    <div class="container-fluid px-4">
                        <div class="page-header-content">
                            <div class="row align-items-center justify-content-between pt-3">
                                <div class="col-auto mb-3">
                                    <h1 class="page-header-title">
                                        赛题
                                    </h1>
                                </div>
                                <div class="col-12 col-xl-auto mb-3">
                                    <a class="btn btn-sm btn-light text-primary" href="/view/teacher/tea_subject.jsp">
                                        <i class="me-1" data-feather="plus"></i>
                                        创间新赛题
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="container-xl px-4">
                    <h2 class="mb-0 mt-5">已发布</h2>
                    <hr class="mt-2 mb-4" />
                    <c:set var="number" value="${sessionScope.number}"/>
                    <c:forEach items="${subjects.select_one_subject_sql(number)}" var="subject">
                        <c:set var="ID" value="${subject.ID}"/>
                        <c:set var="deadline" value="${subject.deadline}"/>
                        <a class="card card-icon lift lift-sm mb-4" href="/view/teacher/tea_pre_subject_aim.jsp?ID=${subject.ID}">
                            <div class="card-body">
                                <div class="d-flex align-items-center justify-content-between col">
                                    <div class="h5 card-title mb-0 col-xl-7">${subject.name}</div>
                                    <div class="col-xl-2">已有${subjects.select_get_number_sql(ID).size()}人报名</div>
                                    <c:if test="${date.only_date(deadline) == -1}">
                                        <div class="col-xl-2">正在进行</div>
                                    </c:if>
                                    <c:if test="${date.only_date(deadline) == 1}">
                                        <div class="col-xl-2">报名已结束</div>
                                    </c:if>
                                    <i class="flex-shrink-0 ms-4 col-xl-1" data-feather="chevron-right"></i>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </main>
            <%@ include file="/footer.jsp"%>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="/js/datatables/jquery.dataTables.js"></script>
<%--    <script src="/js/datatables/datatables-simple-demo.js"></script>--%>
    <script src="/js/jquery-3.5.1.js"></script>
    <scipt src="/JQuery/chat/js/chat.js"></scipt>
    <script>
        $(document).ready( function () {
            $('#datatablesSimple').DataTable({
                bLengthChange:false,
                // ordering: false,
                order: [[2, 'desc']],
                columnDefs:[{
                    targets : [0,1,3,5,6],
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
    </script>
</body>
</html>
