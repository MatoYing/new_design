<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <title>竞赛报名网</title>
    <link href="/css/styles.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="/assets/img/favicon.ico" />
    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
</head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container-xl px-4">
                        <div class="row justify-content-center">
                            <!-- Join Organization-->
                            <div class="col-xl-5 col-lg-6 col-md-8 col-sm-11">
                                <div class="card border-0 shadow-lg mt-5">
                                    <div class="card-body p-5 text-center">
                                        <div class="icons-org-join align-items-center mx-auto">
                                            <i class="icon-user" data-feather="user"></i>
                                            <i class="icon-arrow fas fa-long-arrow-alt-right"></i>
                                            <i class="icon-users" data-feather="users"></i>
                                        </div>
                                        <div class="h3 text-secondary mb-0">加入团队</div>
                                    </div>
                                    <hr class="m-0" />
                                    <div class="card-body p-5">
                                        <form action="/joinServlet">
                                            <div class="mb-3"><input class="form-control form-control-solid" type="text" placeholder="请输入团队码" name="team_code"/></div>
                                            <div class="d-grid"><button class="btn btn-secondary">提交加入请求</button></div>
                                        </form>
                                    </div>
                                    <div class="mb-3 text-center">
                                        <a href="/view/student/stu_team.jsp" class="text-black-50">暂时没有?</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
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
    </body>
</html>
