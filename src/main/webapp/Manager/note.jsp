<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>便签管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/index.css">
    <script src="${pageContext.request.contextPath}/Manager/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Manager/js/index.js"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<style type="text/css">
		#dd{
			font-size:20px
		}
	</style>
</head>
<body>
<div class="x-nav">
          <span class="layui-breadcrumb">
            <!-- <a href="">首页</a> -->
            <a href="">评论管理</a>
            <a>
              <cite>评论列表</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
               <form class="layui-form layui-col-space5" action="${pageContext.request.contextPath }/discussServlet?cmd=search" method="post">
                <div class="layui-card-body ">
<!--                         <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                        </div> -->
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="d_name"  placeholder="请输入商品名" autocomplete="off" class="layui-input">
                        </div>
                        <!-- <div class="layui-input-inline layui-show-xs-block">
                                    <select name="d_state">
                                        <option value="-1">回复状态</option>
                                        <option value="0">未回复</option>
                                        <option value="1">已回复</option>
                                    </select>
                                </div>-->
                        <div class="layui-inline layui-show-xs-block"> 
                            <button type="submit" class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                </div>
                </form>
                <form class="layui-form layui-col-space5" action="${pageContext.request.contextPath }/discussServlet?cmd=deleteAll" method="post">
                <div class="layui-card-header">
                    <button class="layui-btn layui-btn-danger" type="submit"><i class="layui-icon"></i>批量删除</button>
                    <!--<button class="layui-btn" onclick="xadmin.open('添加用户','./articletypeadd.jsp',800,600)"><i class="layui-icon"></i>添加</button>-->
                </div>
                <div class="layui-card-body layui-table-body layui-table-main">
                    <table class="layui-table layui-form">
                        <thead>
                        <tr>
                            <th>
                                <input type="checkbox" lay-filter="checkall" name="check" lay-skin="primary">
                            </th>
                            <th>商品ID</th>
                            <th>用户名</th>
                            <th>商品名</th>
                            <th>评论内容</th>
                            <th>商家回复</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${discuss_list }" var="d" >
	                        <tr>
	                            <td>
	                                <input type="checkbox" name="d_id" value="${d.d_id }"   lay-skin="primary">
	                            </td>
								<td>${d.w_id }</td>
	                            <td>${d.c_name }</td>
	                            <td>${d.w_name }</td>
	                            <td>${d.d_content }</td>
	                            <td>${d.d_replay }</td>
	                            <td class="td-manage">
	                            	<c:if test="${d.d_replay == null }">
									<a title="回复"  onclick="xadmin.open('回复','Manager/replay.jsp?content=${d.d_content}&id=${d.d_id }',600,400)" href="javascript:;">
	                                        <i class="layui-icon" id="dd">&#xe642;</i>
	                                      </a>
	                                </c:if>
	                                <c:if test="${d.d_replay != null }">
	                                <a title="回复"  href="javascript:void(0);">
	                                        <i class="layui-icon" id="dd">&#xe642;</i>
	                                      </a>
	                                </c:if>
	                                 &emsp;&emsp;
	                                <a href="discussServlet?cmd=delete&d_id=${d.d_id }" id="a_del" title="删除" 
	                                   style="text-decoration:none">
	                                    <i class="layui-icon" id="dd">&#xe640;</i>
	                                </a>
	                            </td>
	                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                </form>

 <!--                <div class="layui-card-body ">
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
<script>
	
	function delOne(id) {
		var a = document.getElementById("a_del");
		if (confirm("确定删除吗?")) {
			a.href = "discussServlet?cmd=delete&d_id="+id;
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
        layer.confirm('确认要停用吗？',{icon:3,title:'提示信息'},function(index){

            if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').jsp('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').jsp('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

            }else{
                $(obj).attr('title','启用')
                $(obj).find('i').jsp('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').jsp('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
            }

        });
    }

    /*用户-删除*/
    function link_del(obj,id){
        layer.confirm('确认要删除吗？',{icon:3,title:'提示信息'},function(index){
            //发异步删除数据
            $("#a_del").attr("href","discussServlet?cmd=delete");
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
            return true;
        });
    }
</script>
</html>