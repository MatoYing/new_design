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
                                    <a class="btn btn-sm btn-light text-primary" href="/view/teacher/tea_pre_subject.jsp">
                                        <i class="me-1" data-feather="arrow-left"></i>
                                        返回
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="container-xl px-4 mt-5">
                    <div class="card mb-4">
                        <div class="card card-header-actions">
                            <div class="card-header">
                                赛题详情
                            </div>
                            <div v class="card-body">
                                <div class="card-body">
                                    <div class="sbp-preview">
                                        <div class="sbp-preview-content">
                                            <%-- 如何拿前端地址上的值 --%>
                                            <c:set var="ID" value="${param.ID}"/>
                                            <form>
                                                <div class="mb-3">
                                                    <label>赛题名称</label>
                                                    <input class="form-control" type="text" value="${subjects.select_onlyOne_subject_sql(ID).name}"/>
                                                </div>
                                                <div class="mb-3">
                                                    <label>允许报名形式</label>
                                                    <c:if test="${subjects.select_onlyOne_subject_sql(ID).limit == 1}">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="limit" value="1" checked disabled>
                                                            <label class="form-check-label">
                                                                个人
                                                            </label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="limit" value="2" disabled>
                                                            <label class="form-check-label">
                                                                团队
                                                            </label>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${subjects.select_onlyOne_subject_sql(ID).limit == 2}">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="limit" value="1" disabled>
                                                            <label class="form-check-label">
                                                                个人
                                                            </label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="limit" value="2" checked disabled>
                                                            <label class="form-check-label">
                                                                团队
                                                            </label>
                                                        </div>
                                                    </c:if>
                                                </div>
                                                <div class="row">
                                                    <div class="mb-3 col-xl-5 col-lg-6 col-md-8 col-sm-11">
                                                        <label>报名日期</label>
                                                        <div class="input-group input-group-joined border-1" style="width: 16.5rem">
                                                            <span class="input-group-text"><i data-feather="calendar"></i></span>
                                                            <input type="text" name="daterange" value="${subjects.select_onlyOne_subject_sql(ID).start_date} - ${subjects.select_onlyOne_subject_sql(ID).deadline}" id="date" class="border-0" disabled/>
                                                        </div>
                                                    </div>
                                                    <div class="mb-3 col-xl-5 col-lg-6 col-md-8 col-sm-11">
                                                        <label>是否付费</label>
                                                        <div class="input-group">
                                                            <c:if test="${subjects.select_onlyOne_subject_sql(ID).price == 0}">
                                                                <div class="input-group-text">
                                                                    <input class="form-check-input mt-0" type="radio" value="" disabled>
                                                                </div>
                                                                <input type="text" class="form-control" disabled>
                                                            </c:if>
                                                            <c:if test="${subjects.select_onlyOne_subject_sql(ID).price != 0}">
                                                                <div class="input-group-text">
                                                                    <input class="form-check-input mt-0" type="radio" value="" disabled checked>
                                                                </div>
                                                                <input type="text" class="form-control" disabled value="${subjects.select_onlyOne_subject_sql(ID).price}">
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-0">
                                                    <label>简介</label>
                                                    <textarea class="lh-base form-control" type="text" rows="4" disabled>${subjects.select_onlyOne_subject_sql(ID).introduction}</textarea>
                                                </div>
                                                <div class="mb-0" onclick="a1()">
                                                    <label>附加资料</label>
                                                    <div class="input-group mb-3" >
                                                        <input type="file" class="form-control" id="inputGroupFile" disabled>
                                                    </div>
                                                </div>
                                                <div class="card-body">
                                                    <table class="table">
                                                        <thead>
                                                        <tr>
                                                            <th scope="col"></th>
                                                            <th scope="col">姓名</th>
                                                            <th scope="col">学院</th>
                                                            <th scope="col">班级</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${subjects.select_get_number_sql(ID)}" var="subject" varStatus="status">
                                                                <tr>
                                                                    <th scope="row">${status.index + 1}</th>
                                                                    <td>${subject.name}</td>
                                                                    <td>${subject.academy}</td>
                                                                    <td>${subject.class_grade}</td>
                                                                </tr>
                                                            </c:forEach>
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
            <%@ include file="/footer.jsp"%>
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
    <script src="/JQuery/chat/js/chat.js"></script>
</body>
</html>
