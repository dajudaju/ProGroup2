<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>商城后台管理系统</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/index.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/iconfont.css">
        <script src="${pageContext.request.contextPath}/Manager/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Manager/js/index.js"></script>
        <style>
            .show_list{display: block !important;}
            .hide_lits{display: none;}

        </style>

    </head>
    <body class="index">
        <!-- 顶部开始 -->
        <div class="container">
            <div class="logo">
                <a href="./index.jsp">商城后台管理系统</a></div>
            <div class="left_open">
                <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
            </div>

            <ul class="layui-nav left fast-add" lay-filter="">
                <li class="layui-nav-item daohang" ids="#table1">
                    <a href="javascript:;">商城设置</a>
                </li>
            </ul>

            <ul class="layui-nav right" lay-filter="">
                <li class="layui-nav-item">
                    <a href="javascript:;">${manager.m_name}</a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd>
                            <a onclick="xadmin.open('修改密码','Manager/updatepwd.jsp')">修改密码</a></dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/managerServlet?cmd=logout">退出</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item to-index">
                    <a href="/">前台首页</a></li>
            </ul>



        </div>
        <!-- 顶部结束 -->
        <!-- 中部开始 -->
        <!-- 左侧菜单开始 -->
        <div class="left-nav show_list" id="table1">
            <div id="side-nav">
                <ul id="nav">
                    <li>
                        <a href="javascript:;" onclick="xadmin.add_tab('我的桌面','welcome.jsp')">
                            <i class="layui-icon left-nav-li" lay-tips="首页">&#xe68e;</i>
                            <cite>首页</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>

                    </li>

                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li icon-shangpinguanli" lay-tips="商品管理"></i>
                            <cite>商品管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('商品列表','${pageContext.request.contextPath}/wareServlet?cmd=findallwares')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>商品列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('商品类型','${pageContext.request.contextPath}/waretypeServlet?cmd=findall')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>商品类型</cite></a>
                            </li>
                        </ul>


                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="订单管理">&#xe604;</i>
                            <cite>订单管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('订单列表','${pageContext.request.contextPath}/orderServlet?cmd=findall')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>订单列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('待发货列表','${pageContext.request.contextPath}/orderServlet?cmd=findinvoice&state=0')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>待发货列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('待退款列表','${pageContext.request.contextPath}/orderServlet?cmd=findreturn&state=3')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>待退款列表</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="用户管理">&#xe6b8;</i>
                            <cite>用户管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">

                            <li>
                                <a onclick="xadmin.add_tab('用户列表','customerServlet?cmd=findAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>用户列表</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="评论管理">&#xe6c5;</i>
                            <cite>评论管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('评论列表','discussServlet?cmd=findAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>评论列表</cite></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 左侧菜单结束 -->
        <!-- 右侧主体开始 -->
        <div class="page-content">
            <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
                <ul class="layui-tab-title">
                    <li class="home">
                        <i class="layui-icon">&#xe68e;</i>我的桌面</li></ul>
                <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
                    <dl>
                        <dd data-type="this">关闭当前</dd>
                        <dd data-type="other">关闭其它</dd>
                        <dd data-type="all">关闭全部</dd></dl>
                </div>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe src='./welcome.jsp' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                    </div>
                </div>
                <div id="tab_show"></div>
            </div>
        </div>
        <div class="page-content-bg"></div>
        <style id="theme_style"></style>
        <!-- 右侧主体结束 -->
        <!-- 中部结束 -->

    </body>
    <script src="js/jquery.min.js"></script>

</html>

<script>
    $(".daohang").click(function(){
        var table = $(this).attr("ids");
        var ids = $(".show_list").attr("id");
        $("#"+ids+"").addClass("hide_lits");
        $("#"+ids+"").removeClass("show_list");
        $(""+table+"").removeClass("hide_lits");
        $(""+table+"").addClass("show_list");
    })
</script>

