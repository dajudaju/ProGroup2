<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>商品类型列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/index.css">
    <script src="${pageContext.request.contextPath}/Manager/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Manager/js/index.js"></script>
	<style type="text/css">
		#dd{
			font-size:20px;
		}
	</style>
</head>
<body>
<div class="x-nav">
          <span class="layui-breadcrumb">
            <!-- <a href="">首页</a> -->
            <a href="">商品管理</a>
            <a>
              <cite>商品类型列表</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
                <div class="layui-card-header">
                    <button class="layui-btn layui-btn-danger" onclick="return delAll()"><i class="layui-icon"></i>批量删除</button>
                    <button class="layui-btn" onclick="xadmin.open('添加商品类别','${pageContext.request.contextPath}/Manager/addwaretype.jsp',800,600)"><i class="layui-icon"></i>添加</button>
                </div>
                <div class="layui-card-body layui-table-body layui-table-main">
                    <table class="layui-table layui-form" style="align-content: center;">
                        <thead>
                        <tr>
                            <th>
                                <input type="checkbox" lay-filter="checkall" name="all" lay-skin="primary">
                            </th>
                            <th>
                                编号
                            </th>
                            <th>
                                商品类型名称
                            </th>
                            <th>
                                操作
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                        <c:forEach items="${typelist}" var="item" begin="0" step="1"
									varStatus="vs">
							<tr>
								<td><input type="checkbox" name="wtid" value="${item.t_id}"  lay-skin="primary"></td>
								<td>${vs.count}</td>
								<c:set var="tid" value="${item.t_id }" />
								<td>${item.t_name}</td>	
                            	<td class="td-manage ">
                                <a title="编辑" href="javascript:;" onclick="xadmin.open('编辑','${pageContext.request.contextPath}/waretypeServlet?cmd=findtypebyid&tid=${item.t_id}','800','510','1')"
                                   class="ml-5" style="text-decoration:none">
                                    <i class="layui-icon" id="dd">&#xe642;</i>
                                </a>
								&emsp;&emsp;
                                <a title="删除" href="javascript:;" onclick="return deletetype()"
                                   style="text-decoration:none">
                                    <i class="layui-icon" id="dd">&#xe640;</i>
                                </a>
                            </td>
                        </tr>
						</c:forEach>
                        </tbody>
                    </table>
                </div>

<!--                 <div class="layui-card-body ">
                    <div class="page">
                        <div>
                            <a class="prev" href="">&lt;&lt;</a>
                            <a class="num" href="">1</a>
                            <span class="current">2</span>
                            <a class="num" href="">3</a>
                            <a class="num" href="">489</a>
                            <a class="next" href="">&gt;&gt;</a></div>
                    </div>
                </div> -->

            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">

function deletetype() {

	var tid=${tid};
	if (confirm("确认删除该商品类型吗？")) {
		location.href = "/storesystem/waretypeServlet?cmd=deletetype&tid="+ tid;
	}
}

layui.use(['laydate','form'], function(){
    var laydate = layui.laydate;
    var  form = layui.form;


    // 监听全选
    form.on('checkbox(checkall)', function(data){

        if(data.elem.checked){
            $('tbody input').prop('checked',true);
        }else{
            $('tbody input').prop('checked',false);
        }
        form.render('checkbox');
    });

});

function delAll() {
	
	var str = "";
    $("input[name='wtid']").each(function() {
        if($(this).prop("checked") == true) {
            str += ($(this).val() + ",")
        }
    });
	
	var tid=${tid};
	if (confirm("确认删除所选商品类型吗？")) {
		location.href = "/storesystem/waretypeServlet?cmd=deletemanytype&tid="+ str;
	}
}
    
</script>
</html>