<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
<meta charset="UTF-8">
<title>文件管理</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/font.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/index.css">
<script src="${pageContext.request.contextPath}/Manager/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Manager/js/index.js"></script>

</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <!-- <a href="">首页</a> --> <a
			href="">订单管理</a> <a> <cite>待发货列表</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			onclick="location.reload()" title="刷新"> <i
			class="layui-icon layui-icon-refresh" style="line-height: 30px"></i></a>
	</div>
	<div class="layui-fluid">
		<div class="layui-row layui-col-space15">
			<div class="layui-col-md12">
				<div class="layui-card">
					<div class="layui-card-body ">
						<form class="layui-form layui-col-space5" method="post" action="${pageContext.request.contextPath}/orderServlet?cmd=search1&state=0">
							<!-- <div class="layui-inline layui-show-xs-block">
								<input class="layui-input" autocomplete="off" placeholder="开始日"
									name="ostart" id="start">
							</div>
							-
							<div class="layui-inline layui-show-xs-block">
								<input class="layui-input" autocomplete="off" placeholder="截止日"
									name="oend" id="end">
							</div> -->
							<div class="layui-inline layui-show-xs-block">
								<input type="text" name="onumber" placeholder="订单号"
									autocomplete="off" class="layui-input">
							</div>
							<div class="layui-inline layui-show-xs-block">
									<input type="submit" class="layui-btn layui-icon"
										value="&#xe615;" lay-submit="" lay-filter="sreach">
							 </div>
						</form>
					</div>
					<div class="layui-card-header">
						<!-- <button class="layui-btn layui-btn-danger" onclick="delAll()">
							批量发货
						</button> -->
						<span>${msg}</span>
						<!-- <button class="layui-btn" onclick="xadmin.open('添加用户','./articletypeadd.jsp',800,600)"><i class="layui-icon"></i>添加</button> -->
					</div>
					<div class="layui-card-body layui-table-body layui-table-main">
						<table class="layui-table layui-form">
							<thead>
								<tr>
									<!-- <th><input type="checkbox" lay-filter="checkall" name=""
										lay-skin="primary"></th> -->
									<th>订单编号</th>
									<th>商品名</th>
									<th>购买数量</th>
									<th>订单总金额</th>
									<th>收货人</th>
									<th>收货地址</th>
									<th>收货人电话</th>
									<th>购买时间</th>
									<th>订单状态</th>
									<th colspan='2'>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="orderlist" begin="0" step="1" varStatus="vs">
                        <tr>
                            <%-- <td>
                                <input type="checkbox" name="oid" value="${orderlist[0].o_id }"  lay-skin="primary">
                            </td> --%>
                            <c:set var="oid" value="${orderlist[0].o_id}" />
                            <td>
                            	${orderlist[0].o_number}	
                            </td>
                            <td>
                                ${orderlist[1].w_name}
                            </td>								
                            <td >
                            	${orderlist[0].o_count}                              	
                            </td>
                            <td >
                                ${orderlist[0].o_price}
                            </td>
                            <td >
                                ${orderlist[0].o_consignee}
                            </td>
                            <td >
                                ${orderlist[2].a_name}
                            </td>
                            <td >
                                ${orderlist[0].o_tel}
                            </td>
                            <td>
                                ${orderlist[0].o_date}
                            </td>
							<td><span class="layui-badge">待发货</span></td>
									<td class="operation-menu"><button
										class="layui-btn layui-btn-xs open" data-id="2" onclick="return click1(${orderlist[0].o_id})"
										style="margin-right: 0; font-size: 12px">发货</button> 
									</td>
									<td class="operation-menu">
										<button class="layui-btn layui-btn-xs layui-btn-danger delete"
											id="2" style="margin-right: 0; font-size: 12px;"
											onclick="return click2(${orderlist[0].o_id})">退单</button></td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

					<div class="layui-card-body ">
						<div class="page">
							<div>
								<a class="prev" href="">&lt;&lt;</a> <a class="num" href="">1</a>
								<span class="current">2</span> <a class="num" href="">3</a> <a
									class="num" href="">489</a> <a class="next" href="">&gt;&gt;</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
function click1(oid) {

	/* var oid=${oid}; */
	if (confirm("确定要发货吗？")) {
		location.href = "/storesystem/orderServlet?cmd=invoice&oid="+ oid+"&state=1";
	}
}
function click2(oid) {

	/* var oid=${oid}; */
	if (confirm("确定要退单吗？")) {
		location.href = "/storesystem/orderServlet?cmd=return1&oid="+ oid+"&state=2";
	}
}
</script>
<!-- <script>
	layui.use([ 'laydate', 'form' ], function() {
		var laydate = layui.laydate;
		var form = layui.form;

		// 监听全选
		form.on('checkbox(checkall)', function(data) {

			if (data.elem.checked) {
				$('tbody input').prop('checked', true);
			} else {
				$('tbody input').prop('checked', false);
			}
			form.render('checkbox');
		});

		//执行一个laydate实例
		laydate.render({
			elem : '#start' //指定元素
		});

		//执行一个laydate实例
		laydate.render({
			elem : '#end' //指定元素
		});

	});

	/*用户-添加*/
	function member_add(title, url, id, w, h) {

		xadmin.open(title, url, id, w, h);
	}

	/*用户-停用*/
	function member_stop(obj, id) {
		layer.confirm('确认要停用吗？', {
			icon : 3,
			title : '提示信息'
		}, function(index) {

			if ($(obj).attr('title') == '启用') {

				//发异步把用户状态进行更改
				$(obj).attr('title', '停用')
				$(obj).find('i').jsp('&#xe62f;');

				$(obj).parents("tr").find(".td-status").find('span').addClass(
						'layui-btn-disabled').jsp('已停用');
				layer.msg('已停用!', {
					icon : 5,
					time : 1000
				});

			} else {
				$(obj).attr('title', '启用')
				$(obj).find('i').jsp('&#xe601;');

				$(obj).parents("tr").find(".td-status").find('span')
						.removeClass('layui-btn-disabled').jsp('已启用');
				layer.msg('已启用!', {
					icon : 5,
					time : 1000
				});
			}

		});
	}

	/*用户-删除*/
	function link_del(obj, id) {
		layer.confirm('确认要退单吗？', {
			icon : 3,
			title : '提示信息'
		}, function(index) {
			//发异步删除数据
			$(obj).parents("tr").remove();
			layer.msg('退单成功!', {
				icon : 1,
				time : 1000
			});
		});
	}

	function delAll(argument) {
		var ids = [];

		// 获取选中的id
		$('tbody input').each(function(index, el) {
			if ($(this).prop('checked')) {
				ids.push($(this).val())
			}
		});

		layer.confirm('确认要删除吗？' + ids.toString(), {
			icon : 3,
			title : '提示信息'
		}, function(index) {
			//捉到所有被选中的，发异步进行删除
			layer.msg('删除成功', {
				icon : 1
			});
			$(".layui-form-checked").not('.header').parents('tr').remove();
		});
	}
</script> -->
</html>