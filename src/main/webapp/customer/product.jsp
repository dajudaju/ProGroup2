<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Mobile Web-app fullscreen -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">

    <!-- Meta tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <!--Title-->
    <title>商品详情展示</title>

    <!--CSS bundle -->
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/customer/css/bootstrap.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/customer/css/animate.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/customer/css/font-awesome.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/customer/css/ion-range-slider.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/customer/css/linear-icons.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/customer/css/magnific-popup.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/customer/css/owl.carousel.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/customer/css/theme.css" />

    <!--Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:400,600,700&amp;subset=latin-ext" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div class="page-loader">
        <div class="spinner-border" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>

    <div class="wrapper">

        <div class="inc:_header.html"></div>


        <!-- ======================== Products ======================== -->

        <section class="product pt-0">

            <header>
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/customer/index.jsp">小飞猪首页</a></li>
                        <li class="breadcrumb-item"><a href="#">商品</a></li>
                    </ol>
                    <h2 class="title">${warename }</h2>
                    <div class="text">
                        <p>小飞猪带给你更多选择</p>
                    </div>
                </div>
            </header>

            <div class="main">
                <div class="container">
                    <div class="row product-flex">

                        <div class="col-lg-4 product-flex-info">
                            <div class="clearfix">

                                <div class="clearfix">

                                    <!--price wrapper-->

                                    <div class="price">
                                        <span class="h3">
                                        	${wareprice }
                                        </span>
                                    </div>

                                    <hr />

                                    <!--info-box-->

                                    <div class="info-box">
                                        <span><strong>品牌</strong></span>
                                        <span>小飞猪</span>
                                    </div>

                                    <!--info-box-->

                                    <div class="info-box">
                                        <span><strong>产品材料</strong></span>
                                        <span>${warematires }</span>
                                    </div>

                                    <hr />


                                    <!--info-box-->

                                    <div class="info-box">
                                        <span><strong>${waredescribe }</strong></span>
                                    </div>

                                    <hr />

                                    <div class="info-box">
                                        <span>
                                           剩余 ${warerepertory } 件
                                        </span>
                                        <span>
                                            <span class="row">
                                                <span class="col-6">
                                                    <input type="number" value="1" class="form-control">
                                                </span>
                                                <span class="col-6">
                                                    <a href="#" class="btn btn-danger">立即购买</a>
                                                </span>
                                            </span>
                                        </span>
                                    </div>

                                    <hr />

                                    <div class="info-box">
                                        <span>
                                            <small>***我们会尽快处理您的运输订单。请注意，收到您的订单后，我们将无法更改收货地址。在下订单之前，请务必控制您的地址详细信息！</small>
                                        </span>
                                    </div>

                                    <hr />

                                    <div class="info-box info-box-addto added">
                                        <span>
                                            <i class="add"><i class="fa fa-heart-o"></i> 添加到购物车</i>
                                            <i class="added"><i class="fa fa-heart"></i> 从我的购物车移除</i>
                                        </span>
                                    </div>

                                    <div class="info-box info-box-addto">
                                        <span>
                                            <i class="add"><i class="fa fa-star-o"></i> 添加到我的收藏</i>
                                            <i class="added"><i class="fa fa-star"></i> 从我的收藏移除</i>
                                        </span>
                                    </div>

                                </div> <!--/clearfix-->
                            </div> <!--/product-info-wrapper-->
                        </div> <!--/col-lg-4-->
                        <!--product item gallery-->

                        <div class="col-lg-8 product-flex-gallery">

                            <!--product gallery-->

                            <div class="owl-product-gallery owl-carousel owl-theme open-popup-gallery">
                                <a href="${pageContext.request.contextPath}/customer/assets/images/product-10.jpg"><img src="${pageContext.request.contextPath}/customer/assets/images/product-10.jpg" alt="" /></a>
                                <a href="${pageContext.request.contextPath}/customer/assets/images/product-9.jpg"><img src="${pageContext.request.contextPath}/customer/assets/images/product-9.jpg" alt="" /></a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </section>

        <!--=========================== Comments & rating ============================-->

        <section class="product-details">

            <div class="container">

                <!--Tab links-->

                <ul class="nav nav-pills nav-pills-flat justify-content-center" id="pills-tab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="tab-review-tab" data-toggle="tab" href="#tab-review" role="tab">
                            评论
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="tab-desc-tab" data-toggle="tab" href="#tab-desc" role="tab">
                            描述
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="tab-info-tab" data-toggle="tab" href="#tab-shipping" role="tab">
                            运输
                        </a>
                    </li>
                </ul>

                <!--Tab content-->

                <div class="tab-content" id="pills-tabContent">

                    <!--Tab description-->

                    <div class="tab-pane fade show active" id="tab-review">

                        <div class="col-md-8 offset-md-2">


                            <!--Comments-->

                            <div class="comments">

                                <div class="comment-header">
                                    <div class="h3 m-0">所有评论</div>
                                    
                                </div>

                                <div class="comment-wrapper">

                                    <!--Comment-->

                                    <div class="comment-block">

                                        <!--Comment user-->

                                        <div class="comment-user">
                                            <div>
                                                <img src="${pageContext.request.contextPath}/customer/assets/images/user.jpg" alt="Alternate Text" width="70" />
                                            </div>
                                            <div>
                                                <h5>
                                                    <span>John Doe</span>
                                                    
                                                    <small>评论日期</small>
                                                </h5>
                                            </div>
                                        </div>

                                        <!--Comment description-->

                                        <div class="comment-desc">
                                            <p>
                                                评论内容
                                            </p>
                                        </div>

                                        <!--Comment reply-->

                                        <div class="comment-block">
                                            <div class="comment-user">
                                                <div>
                                                    <img src="${pageContext.request.contextPath}/customer/assets/images/user.jpg" alt="Alternate Text" width="70" />
                                                </div>
                                                <div>
                                                    <h5>
                                                        小飞猪回复
                                                        <small>回复日期</small>
                                                    </h5>
                                                </div>
                                            </div>
                                            <div class="comment-desc">
                                                <p>
                                                    小飞猪回复内容
                                                </p>
                                            </div>
                                        </div>
                                        <!--/reply-->
                                    </div>

                                    <!--Comment-->

                            </div> <!--/comments-->

                        </div> <!--/col-md-8-->

                    </div> <!--/tab-pane -->
                    <!--Tab specification-->

                    <div class="tab-pane fade" id="tab-desc">

                        <div class="col-md-8 offset-md-2">

                            <div>
                                <div class="h3 m-0">小飞猪商品展示</div>
                                
                            </div>

                            <hr />

                            <div class="row">
                                <div class="col-6">
                                    <img class="img-fluid" src="${pageContext.request.contextPath}/customer/assets/images/specs.png" alt="Alternate Text" width="350" />

                                </div>
                                <div class="col-6">
                                    <img class="img-fluid" src="${pageContext.request.contextPath}/customer/assets/images/specs.png" alt="Alternate Text" width="350" />

                                </div>

                            </div> 

                        </div>

                    </div> 
                    
                    <!--Tab review-->

                    <div class="tab-pane fade" id="tab-shipping">

                        <div class="col-md-8 offset-md-2">

                            <div>
                                <div class="h3 m-0">运输展示开发中，敬请期待！</div>
                                
                            </div>
                            <br>
                            <br>
                            <br>

                            <!-- <hr />

                            <h5>Money Back Guarantee</h5>
                            <p>
                                Our Money Back Guarantee applies to virtually everything on our site, and
                                there's no extra fee for coverage. It’s automatic and covers your purchase price plus
                                original shipping on eligible purchases*. Follow these steps to get your refund.
                            </p>

                            <h5>Need to Return an Item?</h5>

                            <p>
                                Whatever you’re looking for, millions of items on our store are returnable. Before you
                                buy an item, check the seller’s return policy, then follow these easy steps to
                                make a return. If the item you received doesn't match the description in the
                                original listing, or if it arrived faulty or damaged,
                            </p>

                            <h5>Check an open return request</h5>

                            <p>
                                You can keep an eye on the progress of your return request by selecting Check your
                                return status below, or in your Purchase history.
                            </p>

                            <h5>Send the item back</h5>

                            <p>
                                You'll need to send it back within 5 business days. Who covers the shipping costs
                                depends on why you're returning it. Find more information about return shipping.

                                When you send your item back we recommend using tracked shipping. Adding tracking
                                details to your return helps protect against delays or issues in the refund process.
                            </p> -->
                         </div>


                      </div><!--/tab-pane -->

                </div> <!--/tab-content -->
            </div>

        </section>

    </div> <!--/wrapper-->
    <!--Scripts -->
    <script src="${pageContext.request.contextPath}/customer/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/customer/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/customer/js/include.js"></script>
    <script src="${pageContext.request.contextPath}/customer/js/ion.rangeSlider.js"></script>
    <script src="${pageContext.request.contextPath}/customer/js/magnific-popup.js"></script>
    <script src="${pageContext.request.contextPath}/customer/js/owl.carousel.js"></script>
    <script src="${pageContext.request.contextPath}/customer/s/tilt.jquery.js"></script>
    <script src="${pageContext.request.contextPath}/customer/js/jquery.easypiechart.js"></script>
    <script src="${pageContext.request.contextPath}/customer/js/bigtext.js"></script>
    <script src="${pageContext.request.contextPath}/customer/js/main.js"></script>
</body>

</html>