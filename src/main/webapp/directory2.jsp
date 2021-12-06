<div id="layoutSidenav_nav">
    <nav class="sidenav shadow-right sidenav-light">
        <div class="sidenav-menu">
            <div class="nav accordion" id="accordionSidenav">
                <div class="sidenav-menu-heading d-sm-none">请移步电脑端</div>
                <!-- Sidenav Link (Alerts)-->
                <a class="nav-link d-sm-none" href="#!">
                    <div class="nav-link-icon"><i data-feather="bell"></i></div>
                    系统通知
                    <span class="badge bg-warning-soft text-warning ms-auto">4 New!</span>
                </a>
                <!-- Sidenav Link (Messages)-->
                <a class="nav-link d-sm-none" href="#!">
                    <div class="nav-link-icon"><i data-feather="mail"></i></div>
                    对话信息
                    <span class="badge bg-success-soft text-success ms-auto">2 New!</span>
                </a>
                <div class="sidenav-menu-heading">赛事信息</div>
                <!-- Sidenav Link (Charts)-->
                <a class="nav-link" href="/view/common/home.jsp">
                    <div class="nav-link-icon"></div>
                    首页
                </a>
                <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseDashboards">
                    <div class="nav-link-icon"></div>
                    学院赛事
                    <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseDashboards" data-bs-parent="#accordionSidenav">
                    <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                        <a class="nav-link" href="/view/common/academy1.jsp">
                            信息与电子工程学院
                        </a>
                        <a class="nav-link" href="/view/common/academy2.jsp">经济管理学院</a>
                        <a class="nav-link" href="/view/common/academy3.jsp">
                            理学院
                            <span class="badge bg-primary-soft text-primary ms-auto">更新</span>
                        </a>
                        <a class="nav-link" href="/view/common/academy4.jsp">外国语学院</a>
                        <a class="nav-link" href="/view/common/academy5.jsp">机械与能源工程学院</a>
                        <a class="nav-link" href="/view/common/academy6.jsp">生物与化学工程学院</a>
                    </nav>
                </div>
                <div class="sidenav-menu-heading">我的赛事</div>
                <c:if test="${sessionScope.person.type == 1}">
                    <a class="nav-link" href="/view/student/stu_person.jsp">
                        <div class="nav-link-icon"></div>
                        个人
                    </a>
                    <a class="nav-link" href="/view/student/stu_team.jsp">
                        <div class="nav-link-icon"></div>
                        团队
                    </a>
                </c:if>
                <c:if test="${sessionScope.person.type == 2}">
                    <a class="nav-link" href="/view/teacher/tea_person.jsp">
                        <div class="nav-link-icon"></div>
                        请求
                    </a>
                    <a class="nav-link" href="/view/teacher/tea_pre_subject.jsp">
                        <div class="nav-link-icon"></div>
                        赛题
                    </a>
                </c:if>
                <div class="sidenav-menu-heading">待开发</div>
                <a class="nav-link" href="/view/common/future.jsp">
                    <div class="nav-link-icon"></div>
                    敬请期待
                </a>
            </div>
        </div>
    </nav>
</div>