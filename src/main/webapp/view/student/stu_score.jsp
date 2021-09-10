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
                                            考试成绩
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">Test Score</div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-4">
                        <nav class="nav nav-borders">
                            <a class="nav-link" href="stu_profile.jsp">个人</a>
                            <a class="nav-link active ms-0" href="stu_score.jsp">成绩</a>
                        </nav>
                        <hr class="mt-0 mb-4" />
                        <div class="row">
                            <div class="col-lg-9">
                                <!-- Fade In Transition-->
                                <div id="fade1">
                                    <div class="card mb-4">
                                        <div class="card-header">大一学年</div>
                                        <div class="card-body">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">学期</th>
                                                        <th scope="col">课程名称</th>
                                                        <th scope="col">学分</th>
                                                        <th scope="col">绩点</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                        <td>@fat</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td colspan="2">Larry the Bird</td>
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
                                        <div class="card-header">大二学年</div>
                                        <div class="card-body">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">学期</th>
                                                        <th scope="col">课程名称</th>
                                                        <th scope="col">学分</th>
                                                        <th scope="col">绩点</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                        <td>@fat</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td colspan="2">Larry the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div id="fade3">
                                    <div class="card mb-4">
                                        <div class="card-header">大三学年</div>
                                        <div class="card-body">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">学期</th>
                                                        <th scope="col">课程名称</th>
                                                        <th scope="col">学分</th>
                                                        <th scope="col">绩点</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                        <td>@fat</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td colspan="2">Larry the Bird</td>
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
                                                <li class="nav-item"><a class="nav-link" href="#fade1">大一</a></li>
                                                <li class="nav-item"><a class="nav-link" href="#fade2">大二</a></li>
                                                <li class="nav-item"><a class="nav-link" href="#fade3">大三</a></li>
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
        <script src="/JQuery/chat/js/chat.js"></script>
    </body>
</html>
