<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        评论回复
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/index.css">
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/index.js"></script>

    <!--<style>
        .imgs{display: none;}
        .picture{display: none;}
    </style>-->

    <!--百度编辑器-->
    <script src="./ueditor/ueditor.config.js"></script>
    <script src="./ueditor/ueditor.all.min.js"></script>
    <script src="./ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>

<div class="layui-card">
    <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath }/discussServlet?cmd=replay" method="post" id="add">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
        			<input style="display: none;" type="text" name="d_id" value="<%=request.getParameter("id") %>"/>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>用户评论
                        </label>
                        <div class="layui-input-block">
                            <textarea  placeholder="请输入内容" readonly="readonly" name="abstract" class="layui-textarea"><%=request.getParameter("content") %></textarea>
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>商家回复
                        </label>
                        <div class="layui-input-block">
                            <textarea name="replay" class="layui-textarea"></textarea>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <button class="layui-btn"  type="submit" lay-filter="add" lay-submit="">
                      	      回复
                        </button>
                    </div>
                    <!--</form>-->
        </div>
    </form>
            <div>

        </div>
</div>

<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    /* UE.getEditor('content',{initialFrameWidth:600,initialFrameHeight:400,}); */
</script>
<script>
    layui.use(['laydate','element','layer','form','upload'], function(){
        var  $ = layui.jquery;//jquery
        var lement = layui.element;//面包导航
        var layer = layui.layer;//弹出层
        var form = layui.form;
        var upload = layui.upload;

        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });

        //图片上传接口
        /*layui.upload({
          url: './upload.json' //上传接口
          ,success: function(res){ //上传成功后的回调
              console.log(res);
            $('#LAY_demo_upload').attr('src',res.url);
          }
        });*/
        //指定允许上传的文件类型
        upload.render({
            elem: '#test3'
            ,url: 'https://httpbin.org/post' //改成您自己的上传接口
            ,accept: 'file' //普通文件
            ,done: function(res){
                layer.msg('上传成功');
                console.log(res);
            }
        });

        //监听提交
        form.on('submit(add)', function(data){
            var title=$("input[name='title']").val();
            //var content=$("textarea[name='content']").val();

            var article_category_id=$('#article_category_id option:selected') .val();//所属文章类型
            //alert(title);
            //var form=$("#cate_add").serialize();
            if(title==""){
                layer.msg('文章标题不能为空',{icon:5,time:2000});return false;
            }
            if(article_category_id==""){
                layer.msg('文章类型不能为空',{icon:5,time:2000});return false;
            }
            /*if(content){
                layer.msg("文章内容不能为空！",{icon:5,time:2000});return false;
          }*/
            var data = data.field;
            $.ajax({
                type:"post",
                url:"",
                data:data,
                dataType:"json",
                success:function(data){
                    if(data.status==1){
                        layer.msg(data.info, {icon: 6,time:2000},function () {
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        return false;

                    }else{
                        layer.msg(data.info,{icon:5,time:2000});return false;
                    }
                }

            });

        });

    })
</script>
<!--栏目缩略图上传--><!-- 
<script>
    function upload(obj,id){
        var formData = new FormData();
        formData.append('images', $('#previewImg')[0].files[0]);
        formData.append('id', id);//将id追加再id中
        layer.msg('图片上传中', {icon: 16});
        $.ajax({
            type:"post",
            processData: false,
            contentType: false,
            url:"",
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
</script> -->

</body>
</html>