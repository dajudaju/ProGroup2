<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
            修改密码
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="./css/index.css" media="all">
    <style>
        .imgs{display: none;}
        input[type="file"]{
            width: 50px;
            height:50px;
            border-radius: 100%;
            opacity:0;
            cursor:pointer;
            border: 1px solid red;
            position: absolute;
        }
    </style>
<!-- 引入jQuery -->
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>
<style type="text/css">
	<!-- 三个错误提示的span -->
	#mypasswordSpan,#mynewpasswordSpan,#mynewpassword2Span {
		display: block;
		border: 1px solid black;
		position: absolute;
		width: 200px;
		height: 60px;
	}

</style>
<script type="text/javascript">
	$(function() {
		
	});
</script>
</head>
<body>

<div class="x-body">
    <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath }/managerServlet?cmd=updatepwd" method="post" onsubmit="return checkUpdate()" id="add">
        <blockquote class="layui-elem-quote">
            <input type="hidden" name="id" value="8">
            <div >
                <!-- <input class="layui-upload " type="file" accept="undefined" id="previewImg" name="images"  onchange="upload(this,8)"> -->
                <img src="./images/tp.jpg" class="layui-circle" style="width:50px;height:50px;float:left" id="pimages" name="pimages"   alt="个人头像" >
                <input id="avatar"   name="image" required="" type="hidden" value="./images/tx.jpg" >
                <dl style="margin-left:80px; color:#019688">
                    <dt><span >${manager.m_name}</span> <span ></span></dt>
                    <dd style="margin-left:0">这家伙很懒，什么也没有留下</dd>
                </dl>
            </div>
        </blockquote>

        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">


            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>密码
                        </label>
                        <div class="layui-input-block">
                            <input type="password" id="password" name="m_password" value="" autocomplete="off" placeholder="请输入原密码"
                                   class="layui-input">
                            <span id="mypasswordSpan">sd</span>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>新密码
                        </label>
                        <div class="layui-input-block">
                            <input type="password" id="newpassword" name="newpassword" value="" autocomplete="off" placeholder="请输入新密码"
                                   class="layui-input">
                            <span id="mynewpasswordSpan">sd</span>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>确认密码
                        </label>
                        <div class="layui-input-block">
                            <input type="password" id="newpassword2" autocomplete="off" placeholder="请再次输入新密码"
                                   class="layui-input">
                            <span id="mynewpassword2Span">sd</span>      
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <input class="layui-btn" type="sumbit" value="修改"/>
                    </div>
                    <!--</form>-->
                    <!-- <p align="center" style="color:red" id="msg"></p> -->
                    <!-- <div style="height:100px;"></div> -->
                </div>



            </div>

        </div>
    </form>
</div>
<script src="lib/layui/layui.js" charset="utf-8"></script>
<script src="js/x-layui.js" charset="utf-8"></script>

<!-- <script type="text/javascript">
	
	var password=document.getElementById("password").value;
	var newpassword=document.getElementById("newpassword").value;
	var newpassword=document.getElementById("newpassword").value;
	alert(password+newpassword+newpassword);
</script> -->

<!-- <script>
    layui.use(['element','layer','form'], function(){
        $ = layui.jquery;//jquery
        lement = layui.element();//面包导航
        layer = layui.layer;//弹出层
        form = layui.form()



        //图片上传接口
        /*layui.upload({
          url: './upload.json' //上传接口
          ,success: function(res){ //上传成功后的回调
              console.log(res);
            $('#LAY_demo_upload').attr('src',res.url);
          }
        });*/


        //监听提交
        form.on('submit(add)', function(data){
            var name=$("input[name='name']").val();

            if(name==""){
                layer.msg('用户名不能为空',{icon:5,time:2000});return false;
            }

            var data=data.field;
            $.ajax({
                type:"post",
                url:"xxx",
                data:data,
                dataType:"json",
                success:function(data)
                {
                    //alert(1);
                    if(data.status==1)
                    {
                        layer.msg(data.info, {icon: 6,time:2000},function () {
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        return false;

                    }
                    else{
                        layer.msg(data.info,{icon:5,time:2000});return false;
                    }
                }

            });

        });

    })
</script> -->
<!--栏目缩略图上传-->
<script>
    function upload(obj,id){
        var formData = new FormData();
        formData.append('images', $('#previewImg')[0].files[0]);
        formData.append('id', id);
        layer.msg('图片上传中', {icon: 16});
        $.ajax({
            type:"post",
            processData: false,
            contentType: false,
            url:"xxx",
            data:formData,
            success:function(data){
                if(data.status == 1){
                    console.log(data.image_name);
                    layer.closeAll('loading');
                    //layer.msg(data.info,{icon:1,time:1000});
                    $("#pimages").attr('src',data.image_name);
                    $("#avatar").val(data.image_name);
                    $(".imgs").show();
                    return false;
                }else{
                    layer.msg(data.info,{icon:2,time:1000});
                }
            }
        });
    }
</script>

</body>
</html>