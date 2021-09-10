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
                        <div class="col-xl-5 col-lg-6 col-md-8 col-sm-11">
                            <!-- Social forgot password form-->
                            <div class="card my-3">
                                <div class="card-body p-4 text-center">
                                    <div class="h3 fw-light mb-0">密码重置</div>
                                </div>
                                <hr class="my-0" />
                                <div class="card-body p-4">
                                    <div class="text-center small text-muted mb-1"></div>
                                    <!-- Forgot password form-->
                                    <form>
                                        <!-- Form Group (email address)-->
                                        <div class="mb-3">
                                            <label class="text-gray-600 small">账号</label>
                                            <input class="form-control form-control-solid" type="text" id="number"/>
                                        </div>
<%--                                        <div class="mb-3">--%>
<%--                                            <div class="row gx-3">--%>
<%--                                                <div class="col-md-8">--%>
<%--                                                    <div class="">--%>
<%--                                                        <label class="text-gray-600 small">邮箱验证码</label>--%>
<%--                                                        <input class="form-control form-control-solid" type="text" id="email_number"/>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="col-md-4 text-center">--%>
<%--                                                    <div class="">--%>
<%--                                                        <a class="btn btn-primary mt-xl-4 mt-md-4  mt-2" id="email" onclick="a1()">发送验证码</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
                                        <div class="mb-3">
                                            <label class="text-gray-600 small">邮箱验证码</label>
                                            <div class="row gx-3">
                                                <div class="col-md-8">
                                                    <div class="">
                                                        <input class="form-control form-control-solid" type="text" id="code" maxlength="6"/>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 text-center">
                                                    <!-- Form Group (last name)-->
                                                    <div class="">
                                                        <a class="btn btn-primary mt-xl-0 mt-md-0  mt-2" id="email" onclick="a1()">发送验证码</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-gray-600 small">新密码</label>
                                            <input class="form-control form-control-solid" type="password" id="password"/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-gray-600 small">确认密码</label>
                                            <input class="form-control form-control-solid" type="password" id="second_password"/>
                                        </div>
                                        <!-- Form Group (reset password button)    -->
                                        <div class="text-center">
                                            <a class="btn btn-primary" onclick="a2()">重置密码</a>
                                        </div>

                                    </form>
                                </div>
                                <hr class="my-0" />
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="/js/scripts.js"></script>
    <script src="/js/jquery-3.5.1.js"></script>
    <script>
        // var a;
        function a1() {
            var number = $('#number').val();
            $.getJSON(
                "/emailServlet?b=1",
                {"number": number},
                function (result) {
                    $('#number').attr('class', 'form-control form-control-solid');
                    var json = eval(result);
                    console.log(222222)
                    if (json == '0') {
                        console.log(3);
                        $('#number').attr('class', 'form-control is-invalid');
                    } else {
                        setTime();
                    }
                }
            )
        }

        //倒计时
        var countdown = 60;
        function setTime() {
            if (countdown == 0) {
                $('#email').attr('onclick', "a1()");
                $('#email').text("获取验证码");
                countdown = 60;
            } else {
                $('#email').removeAttr('onclick');
                $('#email').text("  ( " + countdown + " )  ");
                countdown--;
                //延迟期
                setTimeout(function() {
                    setTime()
                },1000)
            }
        }

        function a2() {
            $('#number').attr('class', 'form-control form-control-solid');
            $('#password').attr('class', 'form-control form-control-solid');
            $('#second_password').attr('class', 'form-control form-control-solid');
            $('#code').attr('class', 'form-control form-control-solid');
            $('#second_password').attr('class', 'form-control form-control-solid');
            var number = $('#number').val();
            var code = $('#code').val();
            var password = $('#password').val();
            var second_password = $('#second_password').val();
            if (number != '') {
                if (code != '') {
                    if (password != '') {
                        if (second_password != '') {
                            if (password == second_password) {
                                $.getJSON(
                                    "/passwordServlet",
                                    {"number": number, "code": code, "password": password},
                                    function (result) {
                                        console.log(12);
                                        var json = eval(result);
                                        console.log(json);
                                        if (json == '0') {
                                            $('#number').attr('class', 'form-control is-invalid');
                                        } else if (json == '1') {
                                            $('#code').attr('class', 'form-control is-invalid');
                                        } else {
                                            window.location.href('/view/common/home.jsp');
                                        }
                                    }
                                )
                            } else {
                                $('#second_password').attr('class', 'form-control is-invalid');
                            }
                        } else {
                            $('#second_password').attr('class', 'form-control is-invalid');
                        }
                    } else {
                        $('#password').attr('class', 'form-control is-invalid');
                    }
                } else {
                    $('#code').attr('class', 'form-control is-invalid');
                }
            } else {
                $('#number').attr('class', 'form-control is-invalid');
            }

        }
    </script>
</body>
</html>
