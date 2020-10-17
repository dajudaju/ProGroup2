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
            <a href="">商品管理</a>
            <a>
              <cite>商品列表</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <form class="layui-form layui-col-space5">
                        <div class="layui-input-inline layui-show-xs-block">
                                    <select name="contrller">
                                        <option value="">请选择商品类别</option>
                                        <option value="0">沙发</option>
                                        <option value="1">餐具</option>
                                    </select>
                                </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="username"  placeholder="请输入商品名" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>
                <div class="layui-card-header">
                    <button class="layui-btn" onclick="xadmin.open('添加商品','${pageContext.request.contextPath}/Manager/goods-add.jsp')"><i class="layui-icon"></i>添加</button>
                </div>
                <div class="layui-card-body layui-table-body layui-table-main">
                    <table class="layui-table layui-form" style="align-content: center;">
                        <thead>
                        <tr>
                            <th>
                               商品编号
                            </th>
                            <th>
                                商品名称
                            </th>
                            <th>
                                商品价格
                            </th>
                            <th>
                                商品类别
                            </th>
                            <th>
                                商品品牌
                            </th>
                            <th>
                                商品材料
                            </th>
                            <th>
                                商品描述
                            </th>
                            <th>
                                商品图片
                            </th>
                            <th>
                               商品库存
                            </th>
                            <th>
                               商品销量
                            </th>
                            <th>
                                商品状态
                            </th>
                            <th>
                                操作
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${wareMap}" var="item" begin="0" step="1" varStatus="vs">
                        <tr>
                            <td>
                                ${vs.count}
                            </td>
						
                            <td >
                               ${item.key.w_name }
                            </td>
                            <td >
                                ${item.key.w_price }
                            </td>
                            <td >
                                ${item.value }
                            </td>
                            <td >
                                ${item.key.w_brand }
                            </td>
                            <td >
                                ${item.key.w_material }
                            </td>
                            <td >
                                ${item.key.w_describe }
                            </td>
                            <td >
                                
                            </td>
                            <td>
                                ${item.key.w_repertory }
                            </td>
                            <td>
                                ${item.key.w_sale }
                            </td>
                            <td class="td-status" id="state">
                            	<c:if test="${item.key.w_state=='0'}">
                              	未上架
                              	</c:if>
                              	<c:if test="${item.key.w_state=='1'}">
                              	已上架
                              	</c:if>
                            </td>
                            <td class="td-manage">
                                <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="禁用">
                                    <i class="layui-icon" id="dd">&#xe601;</i>
                                </a>&emsp;
                                <a title="编辑" href="javascript:;" onclick="xadmin.open('编辑','updateware.jsp','800','510','1')"
                                   class="ml-5" style="text-decoration:none">
                                    <i class="layui-icon" id="dd">&#xe642;</i>
                                </a>
                            </td>
                        </tr>
						</c:forEach>
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
<script>
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

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });


    });

    /*用户-添加*/
    function member_add(title,url,id,w,h){

        xadmin.open(title,url,id,w,h);
    }

    /*用户-停用*/
    function member_stop(obj,id){
    	var 
        layer.confirm('确认要下架吗？',{icon:3,title:'提示信息'},function(index){

            if($(obj).attr('title')=='下架'){

                //发异步把用户状态进行更改
                $(obj).attr('title','下架')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已下架');
                layer.msg('已下架！',{icon: 5,time:1000});

            }else{
                $(obj).attr('title','上架')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已上架');
                layer.msg('已上架!',{icon: 5,time:1000});
            }

        });
    }

    /*用户-删除*/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',{icon:3,title:'提示信息'},function(index){
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }



    function delAll (argument) {
        var ids = [];

        // 获取选中的id
        $('tbody input').each(function(index, el) {
            if($(this).prop('checked')){
                ids.push($(this).val())
            }
        });

        layer.confirm('确认要删除吗？'+ids.toString(),{icon:3,title:'提示信息'},function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
</html>