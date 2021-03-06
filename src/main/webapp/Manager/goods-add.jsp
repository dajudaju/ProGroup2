<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>商品添加</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Manager/css/font.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Manager/css/index.css">
<script
	src="${pageContext.request.contextPath}/Manager/lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Manager/js/index.js"></script>

<style type="text/css">
#ss {
	display: inline-block;
	height: 38px;
	line-height: 1.3;
	line-height: 38px\9;
	border-width: 1px;
	border-style: solid;
	background-color: #fff;
	border-radius: 2px;
	padding-right: 30px;
	cursor: pointer;
	outline: 0;
	-webkit-transition: all .3s;
	box-sizing: border-box;
}
</style>

<!--百度编辑器-->
<script src="./ueditor/ueditor.config.js"></script>
<script src="./ueditor/ueditor.all.min.js"></script>
<script src="./ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>

	<div class="layui-card">
		<form class="layui-form layui-form-pane"
			action="${pageContext.request.contextPath }/uploadImgServlet"
			method="post" enctype="multipart/form-data">
			<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
				<ul class="layui-tab-title">
					<li class="layui-this">基本信息</li>
				</ul>
				<div class="layui-tab-content">
					<div class="layui-tab-item layui-show">
						<div class="layui-form-item">
							<label class="layui-form-label"> <span class='x-red'>*</span>商品名称
							</label>
							<div class="layui-input-block">
								<input type="text" name="wname" autocomplete="off" value=""
									placeholder="请输入商品名称" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label"> <span class='x-red'>*</span>商品价格
							</label>
							<div class="layui-input-block">
								<input type="text" name="wprice" autocomplete="off" value=""
									placeholder="请输入商品价格" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label"> <span class='x-red'>*</span>商品类别
							</label>
							<div class="layui-input-block">
								<select name="tid" id="ss" title="请选择商品类型" size="1" class="layui-input layui-unselect">
									<option selected hidden>请选择商品类型</option>
									<c:forEach items="${waretypes}" var="item" begin="0" step="1"
										varStatus="vs">
										<option value="${item.t_id}">${item.t_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label"> <span class='x-red'>*</span>商品材料
							</label>
							<div class="layui-input-block">
								<input type="text" name="wmaterial" autocomplete="off" value=""
									placeholder="请输入商品材料" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label"> <span class='x-red'>*</span>商品库存
							</label>
							<div class="layui-input-block">
								<input type="text" name="wrepertory" autocomplete="off" value=""
									placeholder="请输入商品库存" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-form-text">
							<label class="layui-form-label">&nbsp; <span
								class='x-red'>*</span>商品描述
							</label>
							<div class="layui-input-block">
								<textarea placeholder="请输入内容" class="layui-textarea"
									name="wdescribe"></textarea>
							</div>
						</div>

						<div class="layui-form-item">
							<label for="link" class="layui-form-label"> <span
								class="x-red">*</span>商品图片
							</label>
							<div class="layui-input-inline">
								<div class="site-demo-upbar" id="image">
									<button type="button" class="layui-btn" id="img">
										<i class="layui-icon"></i>上传图片
									</button>
									<input type="file" style="display: none;" id="uploadimg"
										name="wurl"> <br>
									<br>
									<span id="imginfo" style="color: skyblue;"></span><br>
									<br>
								</div>
							</div>
						</div>
						<div class="layui-form-item">
							<input class="layui-btn" type="submit" value="保存">
						</div>
						<!--</form>-->
						<div style="height: 100px;"></div>
					</div>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		/*     //实例化编辑器
		 //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
		 UE.getEditor('content',{initialFrameWidth:600,initialFrameHeight:400,}); */

		window.onload = function() {
			$('#img').click(function() {
				$('#uploadimg').click();
			});

			$("#image").on("change", "#uploadimg", function() {
				var uploadimg = document.getElementById("uploadimg").value;
				var imginfo = document.getElementById("imginfo");
				imginfo.innerHTML = uploadimg;
			});
		}
	</script>
</body>
</html>