<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>修改商品类型</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/index.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/Manager/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Manager/js/index.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->

</head>
<body>
<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" method="post" action="${pageContext.request.contextPath}/waretypeServlet?cmd=updatetype&tid=${waretype.t_id}">
            <div class="layui-form-item">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>商品类型名称
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="username" name="tname" required="" lay-verify="required"
                           autocomplete="off" class="layui-input" value="${waretype.t_name}">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>
                </div>
                <span id="msg"></span>
            </div>
            <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">
                </label>
                <input type="submit" class="layui-btn" value="确定"/>
            </div>
        </form>
    </div>
</div>
<script>
    
</script>

</body>

</html>
