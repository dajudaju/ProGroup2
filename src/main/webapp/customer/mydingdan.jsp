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
    <title>我的订单</title>

    <!--CSS bundle -->
    <link rel="stylesheet" media="all" href="css/bootstrap.css" />
    <link rel="stylesheet" media="all" href="css/animate.css" />
    <link rel="stylesheet" media="all" href="css/font-awesome.css" />
    <link rel="stylesheet" media="all" href="css/ion-range-slider.css" />
    <link rel="stylesheet" media="all" href="css/linear-icons.css" />
    <link rel="stylesheet" media="all" href="css/magnific-popup.css" />
    <link rel="stylesheet" media="all" href="css/owl.carousel.css" />
    <link rel="stylesheet" media="all" href="css/theme.css" />

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

        <!-- ========================  Checkout ======================== -->

        <section class="checkout">

            <!-- === header === -->

            <header>
                <div class="container">
                    <h2 class="title">我的订单</h2>
                    <div class="text">
                        <p>您收藏的订单信息都在这里哦</p>
                    </div>
                </div>
            </header>

            <section class="product-details">

                <div class="container">
    
                    <!--Tab links-->
    
                    <ul class="nav nav-pills nav-pills-flat justify-content-center" id="pills-tab" role="tablist">
                        
                        <li class="nav-item">
                            <a class="nav-link active" id="tab-review-tab" data-toggle="tab" href="#tab-review" role="tab">
                                已完成
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="tab-desc-tab" data-toggle="tab" href="#tab-desc" role="tab">
                                已发货
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="tab-info-tab" data-toggle="tab" href="#tab-shipping" role="tab">
                                退款待处理
                            </a>
                        </li>
                    </ul>
    
                    <!--Tab content-->
    
                    <div class="tab-content" id="pills-tabContent">
    
                        <!--Tab description-->
    
                        <div class="tab-pane fade show active" id="tab-review">
    
                            <div class="col-md-8 offset-md-2"> 
    
                                <!--Comments-->

                                <div class="container">

                                    <!-- ========================  Cart wrapper ======================== -->
                    
                                    <div class="cart-wrapper">
                    
                                        <!-- cart header -->
                    
                                        <div class="cart-block cart-block-header clearfix">
                                            <div><span>商品</span></div>
                                            <div><span>&nbsp;</span></div>
                                            <div><span>数量</span></div>
                                            <div class="text-right"><span>价格</span></div>
                                        </div>
                    
                                        <!-- cart items -->
                    
                                        <div class="clearfix">
                    
                                            <!-- cart item -->
                    
                                            <div class="cart-block cart-block-item clearfix">
                                                <div class="image">
                                                    <a href="product.html"><img src="assets/images/item-1.jpg" alt="" /></a>
                                                </div>
                                                <div class="title">
                                                    <div class="h4"><a href="product.html">Coffee machine</a></div>
                                                    <div>Electronics</div>
                                                </div>
                                                <div class="quantity">
                                                    <input type="number" value="2" class="form-control form-quantity" />
                                                </div>
                                                <div class="price">
                                                    <span class="final h3">$ 150,00</span>
                                                    <span class="discount">$ 190,00</span>
                                                </div>
                                                <!--delete-this-item-->
                                                <span class="icon icon-cross icon-delete"></span>
                                            </div>
                                        </div>
                    
                                        <!--cart prices -->
                    
                                        <div class="row">
                                            <div class="col-md-4 offset-md-8">
                                                <!-- discount -->
                    
                                                <div class="cart-block cart-block-footer clearfix">
                                                    <div>
                                                        <strong>运输</strong>
                                                    </div>
                                                    <div>
                                                        <span> 免运送费 </span>
                                                    </div>
                                                </div>
                    
                                                <!-- discount -->
                    
                                                <div class="cart-block cart-block-footer clearfix">
                                                    <div>
                                                        <strong>总价</strong>
                                                    </div>
                                                    <div>
                                                        <span>$ 商品总价</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                    
                                    <!-- ========================  Cart navigation ======================== -->
                    
                                    <div class="clearfix">
                                        <div class="row">
                                        </div>
                                    </div>
                    
                                </div>
    
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
                                                    <img src="assets/images/user.jpg" alt="Alternate Text" width="70" />
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
                                                        <img src="assets/images/user.jpg" alt="Alternate Text" width="70" />
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
                                            <hr>
                                                <div class="col-6">
                                                    <a href="#" class="btn btn-clean-dark"><span class="icon icon-chevron-left">返回首页</span></a>
                                                </div>
                                                <br>
                                                <br>
                                            <!--/reply-->
                                        </div>
    
                                        
                                    </div><!--/comment-wrapper-->
    
                                    
    
                                </div> <!--/comments-->
    
                            </div> <!--/col-md-8-->
    
                        </div> <!--/tab-pane -->
                        <!--Tab specification-->
    
                        <div class="tab-pane fade" id="tab-desc">
    
                            <div class="col-md-8 offset-md-2">
    
                                <div class="container">

                                    <!-- ========================  Cart wrapper ======================== -->
                    
                                    <div class="cart-wrapper">
                    
                                        <!-- cart header -->
                    
                                        <div class="cart-block cart-block-header clearfix">
                                            <div><span>商品</span></div>
                                            <div><span>&nbsp;</span></div>
                                            <div><span>数量</span></div>
                                            <div class="text-right"><span>价格</span></div>
                                        </div>
                    
                                        <!-- cart items -->
                    
                                        <div class="clearfix">
                    
                                            <!-- cart item -->
                    
                                            <div class="cart-block cart-block-item clearfix">
                                                <div class="image">
                                                    <a href="product.jsp"><img src="assets/images/item-1.jpg" alt="" /></a>
                                                </div>
                                                <div class="title">
                                                    <div class="h4"><a href="product.jsp">Coffee machine</a></div>
                                                    <div>Electronics</div>
                                                </div>
                                                <div class="quantity">
                                                    <input type="number" value="2" class="form-control form-quantity" />
                                                </div>
                                                <div class="price">
                                                    <span class="final h3">$ 150,00</span>
                                                    <span class="discount">$ 190,00</span>
                                                </div>
                                                <!--delete-this-item-->
                                                <span class="icon icon-cross icon-delete"></span>
                                            </div>
                                        </div>
                    
                                        <!--cart prices -->
                    
                                        <div class="row">
                                            <div class="col-md-4 offset-md-8">
                    
                    
                                                <!-- discount -->
                    
                                                <div class="cart-block cart-block-footer clearfix">
                                                    <div>
                                                        <strong>运输</strong>
                                                    </div>
                                                    <div>
                                                        <span> 免运送费 </span>
                                                    </div>
                                                </div>
                    
                                                <!-- discount -->
                    
                                                <div class="cart-block cart-block-footer clearfix">
                                                    <div>
                                                        <strong>总价</strong>
                                                    </div>
                                                    <div>
                                                        <span>$ 商品总价</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                    
                                    <!-- ========================  Cart navigation ======================== -->
                    
                                    <div class="clearfix">
                                        <div class="row">
                                            <div class="col-6">
                                                <a href="#" class="btn btn-clean-dark"><span class="icon icon-chevron-left">返回首页</span></a>
                                            </div>
                                        </div>
                                    </div>
                    
                                </div>
                            </div>
    
                        </div> 
                        
                        <!--Tab review-->
    
                        <div class="tab-pane fade" id="tab-shipping">
    
                            <div class="col-md-8 offset-md-2">
    
                                <div class="container">

                                    <!-- ========================  Cart wrapper ======================== -->
                    
                                    <div class="cart-wrapper">
                    
                                        <!-- cart header -->
                    
                                        <div class="cart-block cart-block-header clearfix">
                                            <div><span>商品</span></div>
                                            <div><span>&nbsp;</span></div>
                                            <div><span>数量</span></div>
                                            <div class="text-right"><span>价格</span></div>
                                        </div>
                    
                                        <!-- cart items -->
                    
                                        <div class="clearfix">
                    
                                            <!-- cart item -->
                    
                                            <div class="cart-block cart-block-item clearfix">
                                                <div class="image">
                                                    <a href="product.html"><img src="assets/images/item-1.jpg" alt="" /></a>
                                                </div>
                                                <div class="title">
                                                    <div class="h4"><a href="product.html">Coffee machine</a></div>
                                                    <div>Electronics</div>
                                                </div>
                                                <div class="quantity">
                                                    <input type="number" value="2" class="form-control form-quantity" />
                                                </div>
                                                <div class="price">
                                                    <span class="final h3">$ 150,00</span>
                                                    <span class="discount">$ 190,00</span>
                                                </div>
                                                <!--delete-this-item-->
                                                <span class="icon icon-cross icon-delete"></span>
                                            </div>
                    
                                            
                                        </div>
                    
                                        <!--cart prices -->
                    
                                        <div class="row">
                                            <div class="col-md-4 offset-md-8">
                    
                    
                                                <!-- discount -->
                    
                                                <div class="cart-block cart-block-footer clearfix">
                                                    <div>
                                                        <strong>运输</strong>
                                                    </div>
                                                    <div>
                                                        <span> 免运送费 </span>
                                                    </div>
                                                </div>
                    
                                                <!-- discount -->
                    
                                                <div class="cart-block cart-block-footer clearfix">
                                                    <div>
                                                        <strong>总价</strong>
                                                    </div>
                                                    <div>
                                                        <span>$ 商品总价</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                    
                                    <!-- ========================  Cart navigation ======================== -->
                    
                                    <div class="clearfix">
                                        <div class="row">
                                            <div class="col-6">
                                                <a href="index.jsp" class="btn btn-clean-dark"><span class="icon icon-chevron-left">返回首页</span></a>
                                            </div>
                                            <!-- <div class="col-6 text-right">
                                                <a href="checkout-2.html" class="btn btn-clean-dark"><span class="icon icon-cart"></span> Proceed to delivery</a>
                                            </div> -->
                                        </div>
                                    </div>
                    
                                </div>
                             </div>
    
    
                          </div><!--/tab-pane -->
    
                    </div> <!--/tab-content -->
                </div>
    
            </section>

            <!-- === left content === -->

             <!--/container-->

        </section>


        <div class="inc:_footer.html"></div>

    </div> <!--/wrapper-->
    <!--Scripts -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/include.js"></script>
    <script src="js/ion.rangeSlider.js"></script>
    <script src="js/magnific-popup.js"></script>
    <script src="js/owl.carousel.js"></script>
    <script src="js/tilt.jquery.js"></script>
    <script src="js/jquery.easypiechart.js"></script>
    <script src="js/bigtext.js"></script>
    <script src="js/main.js"></script>
</body>

</html>