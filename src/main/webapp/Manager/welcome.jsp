<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>欢迎页面</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <!--<link rel="stylesheet" href="./css/font.css">-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/index.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Manager/css/iconfont.css">
        <script src="${pageContext.request.contextPath}/Manager/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Manager/js/index.js"></script>
        <script src="${pageContext.request.contextPath}/Manager/js/jquery.js"></script>
        <script src="${pageContext.request.contextPath}/Manager/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/Manager/js/survey.js"></script>
        <style>
            #FontScroll{
                width: 100%;
                height: 245px;
                overflow: hidden;
            }
            #FontScroll ul li{
                height: 32px;
                width: 100%;
                color: #ffffff;
                line-height: 32px;
                overflow: hidden;
                font-size: 14px;
            }
            #FontScroll ul li i{
                color: red;
            }
            .layui-table td, .layui-table th{
                min-width: auto !important;
            }    
            #dd{
            	float:left;
            	width:2%;
            }
        </style>
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <blockquote class="layui-elem-quote">欢迎登录! &emsp;
                               <span class="x-red" >${manager.m_name}</span>
                                <span id="time"></span>
                            </blockquote>
                        </div>
                    </div>
                </div>
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">数据统计</div>
                        <div class="layui-card-body ">
                            <ul class="layui-row layui-col-space10 layui-this x-admin-carousel x-admin-backlog">
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>成交金额</h3>
                                        <p>
                                            <cite>${money }</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>留言</h3>
                                        <p>
                                            <cite>${discuss_number}</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>订单</h3>
                                        <p>
                                            <cite>${order_number }</cite></p>
                                    </a>
                                </li>

                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>待处理</h3>
                                        <p>
                                            <cite>${order_0 }</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6 ">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>退款申请</h3>
                                        <p>
                                            <cite>${order_3 }</cite></p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- <div class="layui-col-sm6 layui-col-md3">
                    <div class="layui-card">
                        <div class="layui-card-header">数据统计
                        </div>
                        <div class="layui-card-body ">
                            <div id="chart2" style="width: 100%;height: 245px;"></div>
                        </div>
                    </div>
                </div>
				<div id="dd"></div>
                <div class="layui-col-sm6 layui-col-md4">
                    <div class="layui-card">
                        <div class="layui-card-header">商品销售排行

                        </div>
                        <div class="layui-card-body ">

                            <div class="news_style">

                                <div class="myscroll" id="FontScroll">
                                    <ul class="list">
                                        <li><i class="iconfont">&#xe622;</i><a href="#">1.华为P30系列</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">2.小米平板</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">3.华为P40系列</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">4.大疆无人机</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">5.联想（ThinkPad ）轻薄系列</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">6.七匹狼纯棉时尚休闲条纹翻领POLO衫T恤</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">7.联想（ThinkPad ）轻薄系列</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">8.大疆无人机</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">9.华为P40系列</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">10.小米平板</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">11.华为P30系列</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">12.七匹狼纯棉时尚休闲条纹翻领POLO衫T恤</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">13.大疆无人机</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">14.七匹狼纯棉时尚休闲条纹翻领POLO衫T恤</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">15.联想（ThinkPad ）轻薄系列</a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                </div> -->
                <!-- <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <p style="text-align: center;"> Copyright ©2020  All Rights Reserved.</p>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
        </div>
    </body>

    <script src="./js/echarts.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.myscroll').myScroll({
                speed: 60, //数值越大，速度越慢
                rowHeight: 38 //li的高度
            });

        });
        function getTime(){
            var myDate = new Date();
            var myYear = myDate.getFullYear(); //获取完整的年份(4位,1970-????)
            var myMonth = myDate.getMonth()+1; //获取当前月份(0-11,0代表1月)
            var myToday = myDate.getDate(); //获取当前日(1-31)
            var myDay = myDate.getDay(); //获取当前星期X(0-6,0代表星期天)
            var myHour = myDate.getHours(); //获取当前小时数(0-23)
            var myMinute = myDate.getMinutes(); //获取当前分钟数(0-59)
            var mySecond = myDate.getSeconds(); //获取当前秒数(0-59)
            var week = ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'];
            var nowTime;

            nowTime = myYear+'-'+fillZero(myMonth)+'-'+fillZero(myToday)+'&nbsp;&nbsp;'+fillZero(myHour)+':'+fillZero(myMinute)+':'+fillZero(mySecond)+'&nbsp;&nbsp;'+week[myDay]+'&nbsp;&nbsp;';
            //console.log(nowTime);
            $('#time').html(nowTime);
        };
        function fillZero(str){
            var realNum;
            if(str<10){
                realNum	= '0'+str;
            }else{
                realNum	= str;
            }
            return realNum;
        }
        setInterval(getTime,1000);
    </script>
    <script src="js/fontscroll.js"></script>

</html>