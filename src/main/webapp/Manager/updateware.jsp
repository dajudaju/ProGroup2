<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            商品信息编辑
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
    </head>
    <body>

        <div class="layui-card">
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

              <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <form class="layui-form layui-form-pane" action="" enctype="multipart/form-data">
                <div class="layui-tab-item layui-show">
                    <!--<form class="layui-form layui-form-pane" action="" id="add">-->
                    <input type="hidden" name="id" value="{$art.id}">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>商品名称
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="title" autocomplete="off" value="" placeholder="请输入商品名称"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>商品价格
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="title" autocomplete="off" value="" placeholder="请输入商品价格"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>商品类别
                        </label>
                        <div class="layui-input-block">
                            <select name="article_category_id" id="article_category_id">

                                <option value="0">---请选择商品所属类别---</option>
                                <option value="0">手机</option>

                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>商品材料
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="title" autocomplete="off" value="" placeholder="请输入商品材料"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>商品库存
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="title" autocomplete="off" value="" placeholder="请输入商品库存"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">&nbsp;
                                <span class='x-red'>*</span>商品描述
                            </label>
                            <div class="layui-input-block">
                                <textarea placeholder="请输入内容" class="layui-textarea" name="info"></textarea>
                            </div>
                    </div>
                    <div class="layui-form-item imgs" id="imgshow">
                        <label  class="layui-form-label">商品图片
                        </label>
                        <img src="images" id="pimages" name="pimages" style="width: 400px;height: 200px;"/>
                        <input id="avatar"   name="image" required="" type="hidden"  value="images">
                    </div>
                    <div class="layui-form-item">
                        <label for="link" class="layui-form-label">
                            <span class="x-red">*</span>更改图片
                        </label>
                        <div class="layui-input-inline">
                            <div class="site-demo-upbar">
                                <button type="button" class="layui-btn" id="test3"><i class="layui-icon"></i>上传图片</button>
                            </div>
                    </div>
                    </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label"><span class="x-red">*</span>状态</label>
                            <div class="layui-input-block">
                                <input type="radio" name="status" value="1" title="激活" >
                                <div class="layui-unselect layui-form-radio layui-form-radioed"><i class="layui-anim layui-icon layui-anim-scaleSpring"></i>
                                    <div>激活</div>
                                </div>
                                <input type="radio" name="status" value="0" title="禁用" >
                                <div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i>
                                    <div>禁用</div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <button class="layui-btn" lay-submit="" lay-filter="*">
                                保存
                            </button>
                        </div>
                    </form>
                    <div style="height:100px;"></div>
                </div>

              </div>
            </div> 
        </div>

        <script>
            layui.use(['element','layer','form'], function(){
                $ = layui.jquery;//jquery
              lement = layui.element();//面包导航
              layer = layui.layer;//弹出层
              form = layui.form()
                okLoading.close($);

              
             //监听提交
              form.on('submit(*)', function(data){
                var name = $("input[name=name]").val();
                if(name ==""){
                    layer.msg("文章分类名称不能为空！",{icon:5,time:2000});return false;
                }
                var data = data.field;
                $.ajax({
                    type:"post",
                    url:"",
                    data:data,
                    dataType:"json",
                    success:function (data) {
                        if(data.status==1){
                            layer.msg(data.info,{icon:1,time:1000});
                            setTimeout(function(){
                                window.parent.location.reload();
                                var index = parent.layer.getFrameIndex(window.name);
                                parent.layer.close(index);
                            },1000);
                            return false;
                        }else{
                            layer.msg(data.info,{icon:5,time:2000});return false;
                        }
                    }
                });
                return false;
              });

              })
            </script>
            
    </body>
</html>