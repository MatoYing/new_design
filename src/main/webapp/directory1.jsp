<nav class="topnav navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light bg-white" id="sidenavAccordion">
    <button class="btn btn-icon btn-transparent-dark order-1 order-lg-0 me-2 ms-lg-2 me-lg-0" id="sidebarToggle"><i data-feather="menu"></i></button>
    <a class="navbar-brand pe-3 ps-4 ps-lg-2" href="/view/common/home.jsp">竞赛报名中心</a>
    <form class="form-inline me-auto d-none d-lg-block me-3">
        <div class="input-group input-group-joined input-group-solid">
            <input class="form-control pe-0" type="search" placeholder="搜索..."/>
            <div class="input-group-text"><i data-feather="search"></i></div>
        </div>
    </form>
    <ul class="navbar-nav align-items-center ms-auto">
        <li class="nav-item dropdown no-caret me-3 d-lg-none">
            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="searchDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="search"></i></a>
            <!-- Dropdown - Search-->
            <div class="dropdown-menu dropdown-menu-end p-3 shadow animated--fade-in-up">
                <form class="form-inline me-auto w-100">
                    <div class="input-group input-group-joined input-group-solid">
                        <input class="form-control pe-0" type="text" placeholder="搜索..."/>
                        <div class="input-group-text"><i data-feather="search"></i></div>
                    </div>
                </form>
            </div>
        </li>
        <!-- Alerts Dropdown-->
        <li class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownAlerts" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="bell"></i></a>
            <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up">
                <h6 class="dropdown-header dropdown-notifications-header">
                    <i class="me-2" data-feather="bell"></i>
                    系统通知
                </h6>
                <!-- Example Alert 1-->
                <a class="dropdown-item dropdown-notifications-item" href="#!" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                    <div class="dropdown-notifications-item-icon bg-warning"><i data-feather="check"></i></div>
                    <div class="dropdown-notifications-item-content">
                        <div class="dropdown-notifications-item-content-details">December 29, 2021</div>
                        <div class="dropdown-notifications-item-content-text">This is an alert message. It's nothing serious, but it requires your attention.</div>
                    </div>
                </a>
                <!-- Example Alert 2-->
                <a class="dropdown-item dropdown-notifications-item" href="#!" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                    <div class="dropdown-notifications-item-icon bg-info"><i data-feather="smile"></i></div>
                    <div class="dropdown-notifications-item-content">
                        <div class="dropdown-notifications-item-content-details">December 22, 2021&nbsp;&nbsp;&nbsp;<span class="badge bg-warning-soft text-warning ms-auto">New!</span></div>
                        <div class="dropdown-notifications-item-content-text">A new monthly report is ready. Click here to view!</div>
                    </div>
                </a>
                <!-- Example Alert 3-->
                <a class="dropdown-item dropdown-notifications-item" href="#!" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                    <div class="dropdown-notifications-item-icon bg-danger"><i class="fas fa-exclamation-triangle"></i></div>
                    <div class="dropdown-notifications-item-content">
                        <div class="dropdown-notifications-item-content-details">December 8, 2021</div>
                        <div class="dropdown-notifications-item-content-text">Critical system failure, systems shutting down.</div>
                    </div>
                </a>
                <!-- <a class="dropdown-item dropdown-notifications-footer" href="#!">View All Alerts</a> -->
            </div>
        </li>
        <!-- Messages Dropdown-->
        <li class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
            <div class="chatBt">
                <button class="btn btn-icon btn-transparent-dark no-caret" id="new_chat"><i data-feather="mail"></i></button>
            </div>
            <div class="chatContainer">
                <div class="chatBox" ref="chatBox" style="display: none;">
                    <div class="chatBox-head">
                        <div class="chatBox-head-one text-center">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对话聊天框
                            <div class="chat-close" style="margin: 10px 10px 0 0;font-size: 14px">关闭</div>
                        </div>
                        <div class="chatBox-head-two">
                            <div class="chat-return">返回</div>
                            <div class="chat-people">
                                <div class="ChatInfoHead">
                                    <img src="" alt="头像"/>
                                </div>
                                <div class="ChatInfoName">这是用户的名字，看看名字到底能有多长</div>
                            </div>
                            <div class="chat-close">关闭</div>
                        </div>
                    </div>
                    <div class="chatBox-info">
                        <div class="chatBox-list" ref="chatBoxlist">
                            <div class="chat-list-people">
                                <div><img src="/JQuery/chat/img/icon01.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>自酌一杯酒</p>
                                </div>
                                <div class="message-num">10</div>
                            </div>
                            <div class="chat-list-people">
                                <div><img src="/JQuery/chat/img/icon02.png" alt="头像"/></div>
                                <div class="chat-name">
                                    <p>樱花酒</p>
                                </div>
                                <div class="message-num"></div>
                            </div>
                        </div>
                        <div class="chatBox-kuang" ref="chatBoxkuang">
                            <div class="chatBox-content">
                                <div class="chatBox-content-demo" id="chatBox-content-demo">

                                    <div class="clearfloat">
                                        <div class="author-name">
                                            <small class="chat-date">2017-12-02 14:26:58</small>
                                        </div>
                                        <div class="left">
                                            <div class="chat-avatars"><img src="/JQuery/chat/img/bqxtb01.png" alt="头像"/></div>
                                            <div class="chat-message">
                                                给你看张图
                                            </div>
                                        </div>
                                    </div>

                                    <div class="clearfloat">
                                        <div class="author-name">
                                            <small class="chat-date">2017-12-02 14:26:58</small>
                                        </div>
                                        <div class="left">
                                            <div class="chat-avatars"><img src="/JQuery/chat/img/icon01.png" alt="头像"/></div>
                                            <div class="chat-message">
                                                <img src="JQuery/chat/img/icon01.png" alt="">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="clearfloat">
                                        <div class="author-name">
                                            <small class="chat-date">2017-12-02 14:26:58</small>
                                        </div>
                                        <div class="right">
                                            <div class="chat-message">嗯，适合做壁纸</div>
                                            <div class="chat-avatars"><img src="/JQuery/chat/img/icon01.png" alt="头像"/></div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="chatBox-send">
                                <div class="div-textarea" contenteditable="true"></div>
                                <div>
                                    <label id="chat-tuxiang" title="发送图片" for="inputImage" class="btn-default-styles">
                                        <input type="file" onchange="selectImg(this)" accept="image/jpg,image/jpeg,image/png"
                                               name="file" id="inputImage" class="hidden">
                                        <i class="iconfont icon-tuxiang"></i>
                                    </label>
                                    <button id="chat-fasong" class="btn-default-styles"><i class="iconfont icon-fasong"></i>
                                    </button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <!-- User Dropdown-->
        <li class="nav-item dropdown no-caret dropdown-user me-3 me-lg-4">
            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownUserImage" href="javascript:void(0);" role="button" data-bs-toggle="dropdown"><img class="img-fluid" src="assets/img/illustrations/profiles/profile-1.png"/></a>
            <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up">
                <h6 class="dropdown-header d-flex align-items-center">
                    <img class="dropdown-user-img" src="/assets/img/illustrations/profiles/profile-1.png" />
                    <div class="dropdown-user-details">
                        <div class="dropdown-user-details-name">张三</div>
                    </div>
                </h6>
                <div class="dropdown-divider"></div>
                <c:if test="${sessionScope.person.type == 1}">
                    <a class="dropdown-item" href="/view/student/stu_profile.jsp">
                        <div class="dropdown-item-icon"><i data-feather="settings"></i></div>
                        账号信息
                    </a>
                </c:if>
                <c:if test="${sessionScope.person.type == 2}">
                    <a class="dropdown-item" href="/view/teacher/tea_profile.jsp">
                        <div class="dropdown-item-icon"><i data-feather="settings"></i></div>
                        账号信息
                    </a>
                </c:if>
                <a class="dropdown-item" href="#!" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <div class="dropdown-item-icon"><i data-feather="log-out"></i></div>
                    退出登录
                </a>
            </div>
        </li>
    </ul>
</nav>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">确定要离开吗？</h5>
                <button class="btn-close" type="button" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">请确保所做的修改已经提交。</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">取消</button>
                <a href="/logoutServlet"><button class="btn btn-primary" type="button">确定</button></a>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">确定要离开吗？</h5>
                <button class="btn-close" type="button" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">通知栏的展现。</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>