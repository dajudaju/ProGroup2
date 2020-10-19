<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>订单列表</title>
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
            <span class="layui-breadcrumb">
                <a href="">订单管理</a>
                <a>
                    <cite>订单列表</cite></a>
            </span>
            <a href="${pageContext.request.contextPath}/orderServlet?cmd=findall" class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" title="刷新">
                <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
            </a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5" method="post" action="${pageContext.request.contextPath}/orderServlet?cmd=search">
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input class="layui-input" placeholder="开始日" name="ostart" id="start"></div>-
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input class="layui-input" placeholder="截止日" name="oend" id="end"></div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <select name="ostate" id="ss">
                                        <option value="5" selected hidden>订单状态</option>
                                        <option value="0">未发货</option>
                                        <option value="1">已发货</option>
                                        <option value="2">已完成</option>
                                        <option value="3">待退款</option>
                                        <option value="4">已退款</option>
                                    </select>
                                </div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input type="text" name="onumber" placeholder="订单号" autocomplete="off" class="layui-input"></div>
                                <div class="layui-inline layui-show-xs-block">
									<input type="submit" class="layui-btn layui-icon"
										value="&#xe615;" lay-submit="" lay-filter="sreach">
								</div>
                            </form>
                        </div>
<!--                         <div class="layui-card-header">
                            <button class="layui-btn layui-btn-danger" onclick="return delAll()"><i class="layui-icon"></i>批量删除</button>
						</div> -->
						<span>${msg}<span>
<!--                         <div class="layui-card-body ">
                            <table class="layui-table layui-form">-->

                 <div class="layui-card-body layui-table-body layui-table-main">
                    <table class="layui-table layui-form">
                        <thead>
                                    <tr>
                                        <!-- <th>
                                            <input type="checkbox" name="all" lay-skin="primary">
                                        </th> -->
                                        <th>订单编号</th>
                                        <th>商品名</th>
                                        <th>购买数量</th>
                                        <th>订单总金额</th>
                                        <th>收货人</th>
                                        <th>收货地址</th>
                                        <th>收货人电话</th>
                                        <th>购买时间</th>
                                        <th>订单状态</th>
                                        <th>操作</th></tr>
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
                            <td class="td-status">
                                <c:if test="${orderlist[0].o_state==0}">未发货</c:if>
                                <c:if test="${orderlist[0].o_state==1}">已发货</c:if>
                                <c:if test="${orderlist[0].o_state==2}">已完成</c:if>
                                <c:if test="${orderlist[0].o_state==3}">待退款</c:if>
                                <c:if test="${orderlist[0].o_state==4}">已退款</c:if>
                            </td>
                            <td id="td-manage">
                                <a title="删除" href="javascript:;" onclick="return deleteorder(${orderlist[0].o_id})"
                                   style="text-decoration:none">
                                    <i class="layui-icon" id="dd">&#xe640;</i>
                                </a>
                            </td>
                        </tr>
						</c:forEach>
                        </tbody>
                    </table>
                </div>
<!--                         <div class="layui-card-body ">
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
    
    function deleteorder(oid) {

    	/* var oid=${oid}; */
    	if (confirm("确认删除该商品类型吗？")) {
    		location.href = "/storesystem/orderServlet?cmd=deleteorder&oid="+ oid;
    	}
    }
    
    		/* layui.use(['laydate','form'], function(){
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
    		    $("input[name='oid']").each(function() {
    		        if($(this).prop("checked") == true) {
    		            str += ($(this).val() + ",")
    		        }
    		    });
    			
    			var tid=${tid};
    			if (confirm("确认删除所选商品类型吗？")) {
    				location.href = "/storesystem/waretypeServlet?cmd=deletemanytype&tid="+ str;
    			}
    		}
         */
    </script>

</html>