<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        商品添加
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/index.css">
    <script src="${pageContext.request.contextPath}/Manager/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Manager/js/index.js"></script>

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
    <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath }/managerServlet?cmd=addware" id="add"  enctype="multipart/form-data">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <ul class="layui-tab-title">
                <li class="layui-this">基本信息</li>
            </ul>
            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <input type="hidden" name="id" value="{$art.id}">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>商品名称
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="wname" autocomplete="off" value="" placeholder="请输入商品名称"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>商品价格
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="wprice" autocomplete="off" value="" placeholder="请输入商品价格"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>商品类别
                        </label>
                        <div class="layui-input-block">
                            <select name="tname" id="article_category_id">
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
                            <input type="text" name="wmaterial" autocomplete="off" value="" placeholder="请输入商品材料"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>商品库存
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="wrepertory" autocomplete="off" value="" placeholder="请输入商品库存"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">&nbsp;
                                <span class='x-red'>*</span>商品描述
                            </label>
                            <div class="layui-input-block">
                                <textarea placeholder="请输入内容" class="layui-textarea" name="wdescribe"></textarea>
                            </div>
                    </div>

                    <div class="layui-form-item">
                        <label for="link" class="layui-form-label">
                            <span class="x-red">*</span>商品图片
                        </label>
                        <div class="layui-input-inline">
                            <div class="site-demo-upbar">
                                <button type="button" class="layui-btn" id="img" "><i class="layui-icon"></i>上传图片</button> 
                                <input type="file" style="display:none;" id="uploadimg" onclick="showPic(this)">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item imgs" id="imgshow">
                        <label  class="layui-form-label">图片展示
                        </label>
                        <img src="" id="showimg" name="showimg" style="width: 400px;height: 200px;"/>
                        <!-- <input id="avatar"   name="image" required="" type="hidden"  value="images"> -->
                    </div>

                    <div class="layui-form-item">
                        <input class="layui-btn" type="submit" lay-filter="add" lay-submit="" value="保存">
                    </div>
                    <!--</form>-->
                    <div style="height:100px;"></div>
                </div>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    UE.getEditor('content',{initialFrameWidth:600,initialFrameHeight:400,});
    
    window.onload=function(){
        $('#img').click(function(){
            $('#uploadimg').click();
        });
    }
    
    function showPic(obj) {
    	alert("fdsfsd");
        var newPreview = document.getElementById('showimg');
        if (obj) { 
            //ie浏览器兼容 
            if (window.navigator.userAgent.indexOf("MSIE") >= 1) { 
                obj.select(); 
                newPreview.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale);"; 

                var path = document.selection.createRange().text;
                var flag = judgeImgSuffix(path);
                if(flag){
                    newPreview.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = document.selection.createRange().text;
                }else{
                    alert("要求图片格式为png,jpg,jpeg,bmp");
                }

                return; 
            } 
            //firefox浏览器兼容 
            else if (window.navigator.userAgent.indexOf("Firefox") >= 1) { 
                if (obj.files) { 
                    newPreview.src = window.URL.createObjectURL(obj.files.item(0)); 
                    return; 
                } 
                newPreview.src = obj.value; 
                        return; 
                    } 
                    newPreview.src = obj.value; 
                    return; 
                } 
            } 

            function judgeImgSuffix(path){
                var index = path.lastIndexOf('.');
                var suffix = "";
                if(index > 0){
                    suffix = path.substring(index+1);
                }
                if("png"==suffix || "jpg"==suffix || "jpeg"==suffix || "bmp"==suffix || "PNG"==suffix || "JPG"==suffix || "JPEG"==suffix || "BMP"==suffix){
                    return true;
                }else{
                    return false;
                }
    }
            
    
    
</script>
</body>
</html>