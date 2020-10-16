<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>订单列表</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="./css/font.css">
        <link rel="stylesheet" href="./css/index.css">
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="./js/index.js"></script>
        <style type="text/css">
        	#dd{
        		font-size:20px;
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
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
                <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
            </a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5">
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input class="layui-input" placeholder="开始日" name="start" id="start"></div>-
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input class="layui-input" placeholder="截止日" name="end" id="end"></div>
                   <!--              <div class="layui-input-inline layui-show-xs-block">
                                    <select name="contrller">
                                        <option>支付方式</option>
                                        <option>支付宝</option>
                                        <option>微信</option>
                                        <option>货到付款</option></select>
                                </div> -->
                                <div class="layui-input-inline layui-show-xs-block">
                                    <select name="contrller">
                                        <option value="">订单状态</option>
                                        <option value="0">未发货</option>
                                        <option value="1">已发货</option>
                                        <option value="2">已完成</option>
                                        <option value="3">待退款</option>
                                        <option value="4">已退款</option>
                                    </select>
                                </div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input type="text" name="username" placeholder="订单号" autocomplete="off" class="layui-input"></div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <button class="layui-btn" lay-submit="" lay-filter="sreach">
                                        <i class="layui-icon">&#xe615;</i></button>
                                </div>
                            </form>
                        </div>
                        <div class="layui-card-header">
                            <button class="layui-btn layui-btn-danger" onclick="delAll()">
                                <i class="layui-icon"></i>批量删除</button>
						</div>
<!--                         <div class="layui-card-body ">
                            <table class="layui-table layui-form">-->

                 <div class="layui-card-body layui-table-body layui-table-main">
                    <table class="layui-table layui-form">
                        <thead>
                                    <tr>
                                        <th>
                                            <input type="checkbox" name="" lay-skin="primary">
                                        </th>
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
                        <tr>
                            <td>
                                <input type="checkbox" name="id" value="1"   lay-skin="primary">
                            </td>
                            <td>
                                1
                            </td>

                            <td >
                                华为P30
                            </td>
                            <td >
                                <i class="layui-icon" style="color: #06f957">&#xe605;</i>
                            </td>
                            <td >
                                <i class="layui-icon" style="color: red">&#x1006;</i>
                            </td>
                            <td >
                                <i class="layui-icon" style="color: #06f957">&#xe605;</i>
                            </td>
                            <td >
                                <i class="layui-icon" style="color: red">&#x1006;</i>
                            </td>
                            <td>
                                2018-01-01 11:11:42
                            </td>
                            <td class="td-status">
                                600
                            </td>
                            <td >
                                4200
                            </td>
                            <td id="td-manage">
                                <a title="删除" href="javascript:;" onclick="member_del(this,'1')"
                                   style="text-decoration:none">
                                    <i class="layui-icon" id="dd">&#xe640;</i>
                                </a>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
                        <div class="layui-card-body ">
                            <div class="page">
                                <div>
                                    <a class="prev" href="">&lt;&lt;</a>
                                    <a class="num" href="">1</a>
                                    <span class="current">2</span>
                                    <a class="num" href="">3</a>
                                    <a class="num" href="">489</a>
                                    <a class="next" href="">&gt;&gt;</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>layui.use(['laydate', 'form'],
        function() {
            var laydate = layui.laydate;

            //执行一个laydate实例
            laydate.render({
                elem: '#start' //指定元素
            });

            //执行一个laydate实例
            laydate.render({
                elem: '#end' //指定元素
            });
        });

        /*用户-停用*/
        function member_stop(obj, id) {
            layer.confirm('确认要停用吗？',
            function(index) {

                if ($(obj).attr('title') == '启用') {

                    //发异步把用户状态进行更改
                    $(obj).attr('title', '停用');
                    $(obj).find('i').jsp('&#xe62f;');

                    $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').jsp('已停用');
                    layer.msg('已停用!', {
                        icon: 5,
                        time: 1000
                    });

                } else {
                    $(obj).attr('title', '启用');
                    $(obj).find('i').jsp('&#xe601;');

                    $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').jsp('已启用');
                    layer.msg('已启用!', {
                        icon: 5,
                        time: 1000
                    });
                }

            });
        }

        /*用户-删除*/
        function member_del(obj, id) {
            layer.confirm('确认要删除吗？',
            function(index) {
                //发异步删除数据
                $(obj).parents("tr").remove();
                layer.msg('已删除!', {
                    icon: 1,
                    time: 1000
                });
            });
        }

/*         function delAll(argument) {

            var data = tableCheck.getData();

            layer.confirm('确认要删除吗？' + data,
            function(index) {
                //捉到所有被选中的，发异步进行删除
                layer.msg('删除成功', {
                    icon: 1
                });
                $(".layui-form-checked").not('.header').parents('tr').remove();
            });
        } */
        
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
        
    </script>

</html>