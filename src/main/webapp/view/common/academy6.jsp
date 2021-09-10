<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="subjects" class="com.zust.ysc012.dao.impl.CommonDaoImpl" scope="page"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <title>竞赛报名网</title>
        <!-- <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" /> -->
        <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/litepicker/dist/css/litepicker.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <link rel="stylesheet" href="other/font-awesome.min.css">
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
                                            生物与化学工程学院
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">School of Biological and Chemical Engineering</div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-5">
                        <div class="card mb-4">
                            <div class="card-header">最新赛题</div>
                            <div class="card-body">
                                <c:forEach items='<%=subjects.select_subject_sql("生物与化学工程学院")%>' var="subject">
                                    <div class="sbp-preview-content bg-light mb-4">
                                        <div class="card card-header-actions">
                                            <div class="card-header">
                                                    ${subject.name}
                                                <div>
                                                    <a class="btn btn-yellow btn-icon me-2" href=""><i class="fa fa-envelope" aria-hidden="true"></i></a>
                                                        <%--                                                    <a class="btn btn-teal btn-icon me-2" href="/downloadServlet?id=${subject.ID}" onclick="a1()"><i class="fa fa-download" aria-hidden="true"></i></a>--%>
                                                    <a class="btn btn-teal btn-icon me-2" href="/downloadServlet?filename=${subject.ID}"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                    <a class="btn btn-blue btn-icon" onclick="a2(${subject.ID}, ${subject.limit})"><i class="fa fa-check-square" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                            <div class="card-body"><p class="card-text">${subject.introduction}</p></div>
                                        </div>
                                    </div>
                                </c:forEach>
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
                                            <th></th>
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
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i class="fa fa-download" aria-hidden="true"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i class="fa fa-check-square" aria-hidden="true"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Garrett Winters</td>
                                            <td>王老师</td>
                                            <td>Tokyo</td>
                                            <td>63</td>
                                            <td>2011/07/25</td>
                                            <td>$170,750</td>
                                            <td><div class="badge bg-warning rounded-pill">Pending</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i class="fa fa-download" aria-hidden="true"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i class="fa fa-check-square" aria-hidden="true"></i></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Donna Snider</td>
                                            <td>张老师</td>
                                            <td>New York</td>
                                            <td>27</td>
                                            <td>2011/01/25</td>
                                            <td>$112,000</td>
                                            <td><div class="badge bg-secondary text-white rounded-pill">Part-time</div></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i class="fa fa-download" aria-hidden="true"></i></button>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark"><i class="fa fa-check-square" aria-hidden="true"></i></button>
                                            </td>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js" crossorigin="anonymous"></script>
    <script src="/assets/demo/chart-area-demo.js"></script>
    <script src="/assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="/js/datatables/datatables-simple-demo.js"></script>
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
                    columnDefs:[{
                　　　　targets : [0,1,2,5,6,7], 
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
