<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
<meta charset="UTF-8">
<title>商品管理</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
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
#dd {
	font-size: 20px;
}

#ss {
	display: inline-block;
	height: 30px;
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
</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="">商品管理</a> <a> <cite>商品列表</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			href="${pageContext.request.contextPath}/wareServlet?cmd=findallwares"
			style="line-height: 1.6em; margin-top: 3px; float: right" title="刷新">
			<i class="layui-icon layui-icon-refresh" style="line-height: 30px"></i>
		</a>
	</div>
	<div class="layui-fluid">
		<div class="layui-row layui-col-space15">
			<div class="layui-col-md12">
				<div class="layui-card">
					<div class="layui-card-body ">
						<form class="layui-form layui-col-space5"
							action="${pageContext.request.contextPath}/wareServlet?cmd=search"
							method="post">
							<div class="layui-inline layui-show-xs-block">
								<select id="ss" class="layui-input layui-unselect" name="tid"
									size="1" title="请选择商品类别">
									<option value="0" selected hidden>请选择商品类型</option>
									<c:forEach items="${waretypes}" var="item" begin="0" step="1"
										varStatus="vs">
										<option value="${item.t_id}">${item.t_name }</option>
									</c:forEach>
								</select>

							</div>
							<div class="layui-inline layui-show-xs-block">
								<input type="text" name="wname" placeholder="请输入商品名"
									autocomplete="off" class="layui-input">
							</div>
							<div class="layui-inline layui-show-xs-block">
								<input type="submit" class="layui-btn layui-icon"
									value="&#xe615;" lay-submit="" lay-filter="sreach">
							</div>
						</form>
						<span>${msg}</span>
					</div>
					<div class="layui-card-header">
						<button class="layui-btn"
							onclick="xadmin.open('添加商品','${pageContext.request.contextPath}/waretypeServlet?cmd=findalltype')">
							<i class="layui-icon"></i>添加
						</button>
					</div>
					<div class="layui-card-body layui-table-body layui-table-main">
						<table class="layui-table layui-form"
							style="align-content: center;">
							<thead>
								<tr>
									<th>商品编号</th>
									<th>商品名称</th>
									<th>商品价格</th>
									<th>商品类别</th>
									<th>商品品牌</th>
									<th>商品材料</th>
									<th>商品描述</th>
									<th>商品图片</th>
									<th>商品库存</th>
									<th>商品销量</th>
									<th>商品状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${wareMap}" var="item" begin="0" step="1"
									varStatus="vs">
									<tr>
										<td>${vs.count}</td>
										<c:set var="wid" value="${item.key.w_id }" />
										<td>${item.key.w_name }</td>
										<td>${item.key.w_price }</td>
										<td>${item.value }</td>
										<td>${item.key.w_brand }</td>
										<td>${item.key.w_material }</td>
										<td>${item.key.w_describe }</td>
										<td><c:if
												test="${item.key.w_url!=null && item.key.w_url!=''}">
												<img style="width: 100px; height:100px;" src="/imgurl/${item.key.w_url}" />
											</c:if> <c:if test="${item.key.w_url==null || item.key.w_url==''}">
												尚未添加图片
											</c:if></td>
										<td>${item.key.w_repertory }</td>
										<td>${item.key.w_sale }</td>
										<td class="td-status" id="state"><c:if
												test="${item.key.w_state=='0'}">
                              	未上架
                              	</c:if> <c:if test="${item.key.w_state=='1'}">
                              	已上架
                              	</c:if></td>

										<td class="td-manage"><c:if
												test="${item.key.w_state=='0'}">
												<a style="text-decoration: none" onclick="return up()"
													href="javascript:;" title="上架"> <i class="layui-icon"
													id="dd">&#xe601;</i>
												</a>
											</c:if> <c:if test="${item.key.w_state=='1'}">
												<a style="text-decoration: none" onclick="return down()"
													href="javascript:;" title="下架"> <i class="layui-icon"
													id="dd">&#xe601;</i>
												</a>
											</c:if> &emsp; <a title="编辑" href="javascript:;"
											onclick="xadmin.open('编辑','${pageContext.request.contextPath}/wareServlet?cmd=findallwarebyid&wid=${item.key.w_id}','800','510','1')"
											class="ml-5" style="text-decoration: none"> <i
												class="layui-icon" id="dd">&#xe642;</i>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

<!-- 					<div class="layui-card-body ">
						<div class="page">
							<div>
								<a class="prev" href="">&lt;&lt;</a> <a class="num" href="">1</a>
								<span class="current">2</span> <a class="num" href="">3</a> <a
									class="num" href="">489</a> <a class="next" href="">&gt;&gt;</a>
							</div>
						</div>
					</div> -->

				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	var wid = ${wid};
	function up() {

		if (confirm("确认将该商品上架吗？")) {
			location.href = "/storesystem/wareServlet?cmd=updatewarestate&wid="+ wid + "&state=1";
		}
	}
	function down() {

		if (confirm("确认将该商品下架吗？")) {
			location.href = "/storesystem/wareServlet?cmd=updatewarestate&wid="+ wid + "&state=0";
		}
	}
</script>
</html>