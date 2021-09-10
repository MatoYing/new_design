<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ch-ZN">
<head>
    <title>竞赛报名网</title>
    <link href="/css/styles.css" rel="stylesheet"/>
    <link rel="icon" type="image/x-icon" href="/assets/img/favicon.ico"/>
<%--    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>--%>
</head>
<body class="bg-primary">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container-xl px-4">
                    <div class="row justify-content-center">
                        <div class="col-xl-5 col-lg-6 col-md-8 col-sm-11">
                            <!-- Social login form-->
                            <div class="card my-5">
                                <div class="card-body p-5 text-center">
                                    <div class="h3 fw-light mb-3">Sign In</div>
                                    <!-- Social login links-->
                                    <a class="btn btn-icon btn-github mx-1" href="#!"><i class="fab fa-github fa-fw fa-sm"></i></a>
                                    <a class="btn btn-icon btn-google mx-1" href="#!"><i class="fab fa-google fa-fw fa-sm"></i></a>
                                </div>
                                <hr class="my-0"/>
                                <div class="card-body p-5 pb-3">
                                    <!-- Login form-->
                                    <form>
                                        <!-- Form Group (email address)-->
                                        <div class="mb-3">
                                            <label class="text-gray-600 small">账号</label>
                                            <input class="form-control form-control-solid" id="number" type="text" name="number"/>
                                        </div>
                                        <!-- Form Group (password)-->
                                        <div class="mb-3">
                                            <label class="text-gray-600 small">密码</label>
                                            <input class="form-control form-control-solid" id="password" type="password" name="password"/>
                                        </div>
                                        <div id="new_html"></div>
                                        <!-- Form Group (forgot password link)-->
                                        <div class="d-flex align-items-center justify-content-between mb-3">
                                            <div class="form-check">
                                                <input class="form-check-input" id="checkRememberPassword" type="checkbox"/>
                                                <label class="form-check-label" for="checkRememberPassword">记住密码</label>
                                            </div>
                                            <a class="small" href="/password.jsp">忘记密码？</a>
                                        </div>
                                        <!-- Form Group (login box)-->
                                        <div class="mb-0 text-center">
<%--                                            <input type="submit" class="btn btn-primary" value="登录" onsubmit="a1()">--%>
                                            <a class="btn btn-primary" onclick="a1()">登录</a>
                                        </div>
                                    </form>
                                </div>
                                <hr class="my-0"/>
                                <div class="card-body px-5 py-4">
                                    <div class="small text-center">
                                        <a href="/register.jsp">没有账户？</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <div id="layoutAuthentication_footer">
            <footer class="footer-admin mt-auto footer-dark">
                <div class="container-xl px-4">
                    <div class="row">
                        <div class="col-md-12 text-center small">Copyright &copy; YAN SICHAO 2021</div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="/js/jquery-3.5.1.js"></script>
    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="/js/scripts.js"></script>

    <script>

        var a = 0;
        var html = '<div class="mb-3">\n' +
            '           <div class="row gx-3">\n' +
            '               <div class="col-md-8">\n' +
            '                   <div class="">\n' +
            '                       <label class="text-gray-600 small">验证码</label>\n' +
            '                       <input class="form-control form-control-solid" type="text" id="verification" size="4"/>\n' +
            '                   </div>\n' +
            '                </div>\n' +
            '               <div class="col-md-4 text-center">\n' +
            '                   <div class="">\n' +
            '                       <img src="verification.jsp" alt="" class="mt-xl-4 mt-md-4  mt-2">\n' +
            '                   </div>\n' +
            '               </div>\n' +
            '            </div>\n' +
            '        </div>';
        function a1() {
            $('#number').attr('class', 'form-control form-control-solid');
            $('#password').attr('class', 'form-control form-control-solid');
            var number = $('#number').val();
            var password = $('#password').val();
            if (number != '') {
                if (password != '') {
                    if (a == 2) {
                        $('#new_html').html(html);
                    }
                    if (a > 2) {
                        var verification = $('#verification').val();
                        console.log("diwdwad" + verification);
                    }
                    $.getJSON(
                        "/loginServlet",
                        {"number": number, "password": password, "verification": verification},
                        function (result) {
                            var json = eval(result);
                            if (json == '0') {
                                $('#number').attr('class', 'form-control is-invalid');
                            } else if (json == '1') {
                                $('#password').attr('class', 'form-control is-invalid');
                            } else if (json == '2' ){
                                console.log(4);
                                $('#verification').attr('class', 'form-control is-invalid');
                            } else {
                                window.location.href = '/view/common/home.jsp';
                            }
                        }
                    )
                    a++;
                } else {
                    $('#password').attr('class', 'form-control is-invalid');
                }
            } else {
                $('#number').attr('class', 'form-control is-invalid');
            }
        }
    </script>
</body>
</html>
