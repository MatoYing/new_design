<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="team" class="com.zust.ysc012.dao.impl.CommonDaoImpl" scope="page"/>
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
<%--    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>--%>
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
                                            团队
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">Team</div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-5">
                        <div class="row justify-content-center">
                            <!-- Create Organization-->
                            <div class="col-xl-5 col-lg-6 col-md-8 col-sm-11 mb-4">
                                <div class="card text-center h-100">
                                    <div class="card-body px-5 pt-5 d-flex flex-column">
                                        <div>
                                            <div class="h3 text-primary">Create</div>
                                            <p class="text-muted mb-4">创间一个新的团队，你将会成为组长</p>
                                        </div>
                                        <div class="icons-org-create align-items-center mx-auto mt-auto">
                                            <i class="icon-users" data-feather="users"></i>
                                            <i class="icon-plus fas fa-plus"></i>
                                        </div>
                                    </div>
                                    <div class="card-footer bg-transparent px-5 py-4">
                                        <div class="small text-center"><button class="btn btn-block btn-primary" onclick="a1(1)">创建团队</button></div>
                                    </div>
                                </div>
                            </div>
                            <!-- Join Organization-->
                            <div class="col-xl-5 col-lg-6 col-md-8 col-sm-11 mb-4">
                                <div class="card text-center h-100">
                                    <div class="card-body px-5 pt-5 d-flex flex-column align-items-between">
                                        <div>
                                            <div class="h3 text-secondary">Join</div>
                                            <p class="text-muted mb-4">将以组员的身份加入团队</p>
                                        </div>
                                        <div class="icons-org-join align-items-center mx-auto">
                                            <i class="icon-user" data-feather="user"></i>
                                            <i class="icon-arrow fas fa-long-arrow-alt-right"></i>
                                            <i class="icon-users" data-feather="users"></i>
                                        </div>
                                    </div>
                                    <div class="card-footer bg-transparent px-5 py-4">
                                        <div class="small text-center"><button class="btn btn-block btn-secondary" onclick="a1(2)">加入团队</button></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card card-header-actions">
                                <div class="card-header">
                                    <div class="col-xl-2">
                                        团队动态
                                    </div>
                                    <div class="col-3 offset-6">
                                        <input type="text" class="form-control" value="321314324737" readonly="readonly">
                                    </div>
                                    <i class="text-muted" data-feather="info" data-bs-toggle="tooltip" data-bs-placement="left" title="如已报名赛题，则团队无法再添加队员"></i>
                                </div>
                                <div v class="card-body">
                                    <!-- Component Preview-->
                                    <div class="sbp-preview">
                                        <div class="sbp-preview-content pb-1">
                                            <div class="timeline timeline-xs">
                                                <c:set var="number" value="${sessionScope.number}"/>
                                                <c:set var="isTeam" value="${team.select_isTeam_sql(number)}"/>
                                                <c:forEach items="${team.select_teammate_sql(isTeam)}" var="teammate">
                                                    <div class="timeline-item">
                                                        <div class="timeline-item-marker">
                                                            <div class="timeline-item-marker-text" style="width: 5rem;">${teammate[0]}</div>
                                                            <div class="timeline-item-marker-indicator bg-warning"></div>
                                                        </div>
                                                        <div class="timeline-item-content">${teammate[1]}----${teammate[3]}--${teammate[2]}</div>
                                                        <div class="btn-group dropend no-caret d-flex align-items-start justify-content-center">
                                                            <button type="button" class="btn btn-transparent btn-icon dropdown-toggle align-items-start" data-bs-toggle="dropdown" aria-expanded="false" style="outline: none; box-shadow: none;">
                                                                <i data-feather="more-vertical"></i>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item" href="#">联系</a></li>
                                                                <li><a class="dropdown-item" href="/delTeammateServlet?useless=${teammate[5]}">删除</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">历史组员</div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>成员</th>
                                            <th>角色</th>
                                            <th>赛题名称</th>
                                            <th>加入日期</th>
                                            <th>成绩</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar me-2"><img class="avatar-img img-fluid" src="/assets/img/illustrations/profiles/profile-2.png" /></div>
                                                    Garrett Winters
                                                </div>
                                            </td>
                                            <td>李老师</td>
                                            <td>Edinburgh</td>
                                            <td>2011/04/25</td>
                                            <td>$320,800</td>
                                        </tr>
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
    <a data-bs-toggle="modal" data-bs-target="#exampleModal2" style="display: none;" id="alert1"></a>
    <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">提示</h5>
                    <button class="btn-close" type="button" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body" id="only_content">已加入团队还未完成报名，不能创间团队</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">确定</button>
                </div>
            </div>
        </div>
    </div>
    <script src="/js/jquery-3.5.1.js"></script>
    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js" crossorigin="anonymous"></script>
    <script src="/assets/demo/chart-area-demo.js"></script>
    <script src="/assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js" crossorigin="anonymous"></script>
    <script src="/js/litepicker.js"></script>
    <script src="/js/datatables/jquery.dataTables.js"></script>
    <script src="/JQuery/chat/js/chat.js"></script>
    <script>
        $(document).ready( function () {
            $('#datatablesSimple').DataTable({
                bLengthChange:false,
                // ordering: false,
                order: [[3, 'desc']],
                columnDefs:[{　　　　targets : [0,1,4],　　　　orderable : false　　}],
                sInfoEmpty: "No entries to show",
                info: false,
                // searching : false,
                oLanguage:{
                    oPaginate: {
                        sNext: "下一页",
                        sPrevious: "上一页"
                    }
                }

            });

            //这种方式才能把一个变量放进JSTL里
<%--            <c:set var="number" value="${sessionScope.number}"/>--%>
            //console.log里不能输入JSTL
            //如果value为null,则var指定的属性将被删除
<%--            <c:set var="isTeam" value="${team.select_isTeam_sql(number)}"/>--%>
            //JSTL判断为空方法
            <c:if test="${not empty isTeam}">
                $('#team_code_show').val(${isTeam});
            </c:if>

        });

        function a1(a) {
            <c:if test="${empty isTeam}">
                if (a == 1) {
                    window.location.href = '/view/student/create_team.jsp';
                } else {
                    window.location.href = '/view/student/join_team.jsp';
                }
            </c:if>
            <c:if test="${not empty isTeam}">
                <%--console.log('sdf' + ${isTeam});--%>
                if (a == 1) {
                    $('#only_content').text('已创建团队，需完成报名才能再次创建');
                    document.getElementById("alert1").click();
                } else {
                    $('#only_content').text('已加入团队，需完成报名才能再次创建');
                    document.getElementById("alert1").click();
                }
            </c:if>
        }

    </script>
</body>
</html>
