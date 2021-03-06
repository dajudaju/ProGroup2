<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>用户列表</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="${pageContext.request.contextPath }/Manager/css/font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/Manager/css/index.css">
        <script src="${pageContext.request.contextPath }/Manager/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/Manager/js/index.js"></script>
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
            <a href="">用户管理</a>
            <a>
              <cite>用户列表</cite></a>
          </span>
          <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5" action="${pageContext.request.contextPath }/customerServlet?cmd=findByCname" method="post">
                                <div class="layui-inline layui-show-xs-block">
                                    <input type="text" name="c_name"  placeholder="用户名" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <button type="submit" class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                                </div>
                            </form>
                        </div>
<!--                         <div class="layui-card-header">
                            <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                            <button class="layui-btn" onclick="xadmin.open('添加用户','./member-add.jsp',600,400)"><i class="layui-icon"></i>添加</button>
                        </div> -->
                        <div class="layui-card-body layui-table-body layui-table-main">
                            <table class="layui-table layui-form">
                                <thead >
                                  <tr>
                                    <th>ID</th>
                                    <th>用户名</th>
                                    <th>密码</th>
                                    <th>性别</th>
                                    <th>联系方式</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </thead>
                                <tbody >
                                <c:forEach items="${customers }" var="ct" >
                                  <tr>
                                    <td>${ct.c_id }</td>
                                    <td>${ct.c_name }</td>
                                    <td>${ct.c_password }</td>
                                    <c:if test="${ct.c_gender == 0 }">
                                    	<td>男</td>
                                    </c:if>
                                    <c:if test="${ct.c_gender == 1 }">
                                    	<td>女</td>
                                    </c:if>
                                    <td>${ct.c_tel}</td>
                                    <c:if test="${ct.c_state == 0 }">
	                                    <td class="td-status">
	                                      <span class="layui-btn layui-btn-normal layui-btn-mini">已激活</span>
		                                </td>
	                                    <td class="td-manage">
	                                      <a  href="customerServlet?cmd=update&c_id=${ct.c_id }&c_state=1"  title="禁用">
	                                        <i class="layui-icon" id="dd">&#xe601;</i>
	                                      </a>
	                                    </td>
                                    </c:if>
                                    <c:if test="${ct.c_state == 1 }">
	                                    <td class="td-status">
	                                      <span class="layui-btn layui-btn-normal layui-btn-mini">已禁用</span>
	                                    </td>
	                                    <td class="td-manage">
	                                    <a  href="customerServlet?cmd=update&c_id=${ct.c_id }&c_state=0"  title="激活">
	                                        <i class="layui-icon" id="dd">&#xe601;</i>
	                                    </a>
	                                    </td>
                                    </c:if>
                                    
                                  </tr>
                               </c:forEach>
                                </tbody>
                            </table>
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

       /*用户-停用*/
      function member_stop(obj,id){
          layer.confirm('确认要禁用吗？',function(index){

              if($(obj).attr('title')=='禁用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','禁用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已禁用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }

      /*用户-删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
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
  
        layer.confirm('确认要删除吗？'+ids.toString(),function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>
</html>