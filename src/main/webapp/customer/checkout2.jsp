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
    <title>购物车界面二</title>

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

        <div class="inc:_header.jsp"></div>

        <!-- ========================  Checkout ======================== -->

        <section class="checkout">

            <!--Header-->

            <header>
                <div class="container">
                    <h2 class="title">填写订单信息</h2>
                    <div class="text">
                        <p>确认您的订单信息</p>
                    </div>
                </div>
            </header>

            <!-- === step wrapper === -->

            <div class="step-wrapper">

                <div class="container">

                    <div class="stepper">
                        <ul class="row">
                            <li class="col-3 active ">
                                <span data-text="购物清单"></span>
                            </li>
                            <li class="col-3 active" >
                                <span data-text="确认订单"></span>
                            </li>
                            <li class="col-3">
                                <span data-text="确认付款"></span>
                            </li>
                            <li class="col-3">
                                <span data-text="购买成功"></span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- === left content === -->

            <div class="container">


                <!-- ========================  Delivery ======================== -->

                <div class="cart-wrapper">

                    <div class="note-block">
                        <div class="row">

                            <!-- === left content === -->

                            <div class="col-md-6">

                                <!-- === login-wrapper === -->

                                <div class="login-wrapper">

                                    <!--signin-->

                                    <div class="login-block login-block-signin">

                                        <!-- <div class="h4">Sign in <a href="javascript:void(0);" class="btn btn-main btn-sm btn-register pull-right">Create an account</a></div> -->

                                        <!-- <hr /> -->

                                        <!-- <div class="row">

                                            <div class="col-12">
                                                <div class="form-group">
                                                    <input type="text" value="" class="form-control" placeholder="User ID">
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="form-group">
                                                    <input type="password" value="" class="form-control" placeholder="Password">
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <span class="checkbox">
                                                    <input type="checkbox" id="checkBoxId3">
                                                    <label for="checkBoxId3">Remember me &nbsp;<a href="#">Forgot password?</a></label>
                                                </span>
                                            </div>

                                            <div class="col-12">
                                                <hr />
                                                <a href="#" class="btn btn-primary">Sign in</a>
                                            </div>
                                        </div> -->
                                    </div> <!--/signin-->
                                    <!--signup-->

                                    <div class="login-block login-block-signup">

                                        <div class="h4">收货人信息 </div>

                                        <hr />

                                        <div class="row">

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" value="" class="form-control" placeholder="name: *">
                                                </div>
                                            </div>

                                            <!-- <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" value="" class="form-control" placeholder="Last name: *">
                                                </div> -->
                                            <!-- </div> -->

                                            <!-- <div class="col-md-12">

                                                <div class="form-group">
                                                    <input type="text" value="" class="form-control" placeholder="Company name:">
                                                </div>
                                            </div> -->

                                            <!-- <div class="col-md-4">
                                                <div class="form-group">
                                                    <input type="text" value="" class="form-control" placeholder="Zip code: *">
                                                </div>
                                            </div> -->

                                            <!-- <div class="col-md-8">
                                                <div class="form-group">
                                                    <input type="text" value="" class="form-control" placeholder="City: *">
                                                </div>
                                            </div> -->

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" value="" class="form-control" placeholder="tel: *">
                                                </div>
                                            </div>

                                            <!-- <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" value="" class="form-control" placeholder="Phone: *">
                                                </div>
                                            </div> -->

                                            <!-- <div class="col-md-12">
                                                <hr />
                                                <span class="checkbox">
                                                    <input type="checkbox" id="checkBoxId1">
                                                    <label for="checkBoxId1">I have read and accepted the <a href="#">terms</a>, as well as read and understood our terms of <a href="#">business contidions</a></label>
                                                </span>
                                                <span class="checkbox">
                                                    <input type="checkbox" id="checkBoxId2">
                                                    <label for="checkBoxId2">Subscribe to exciting newsletters and great tips</label>
                                                </span>
                                                <hr />
                                            </div> -->

                                            <!-- <div class="col-md-12">
                                                <a href="#" class="btn btn-outline-dark">Create account</a>
                                            </div> -->

                                        </div>
                                    </div> <!--/signup-->
                                </div> <!--/login-wrapper-->
                            </div> <!--/col-md-6-->
                            <!-- === right content === -->

                            <div class="col-md-6">


                                <div class="h4">选择收获地址</div>

                                <hr />

                                <div class="checkbox">
                                    <input type="radio" id="deliveryId1" name="deliveryOption">
                                    <label for="deliveryId1">地址一：**************** </label>
                                </div>

                                <div class="checkbox">
                                    <input type="radio" id="deliveryId2" name="deliveryOption">
                                    <label for="deliveryId2">地址二：**************** </label>
                                </div>

                                <!-- <div class="checkbox">
                                    <input type="radio" id="deliveryId3" name="deliveryOption">
                                    <label for="deliveryId3">Pick up in the store - <strong>Free</strong></label>
                                </div> -->

                                <!-- <hr /> -->

                                <!-- <div class="clearfix">
                                    <p>A frequently overlooked, powerful fulfillment option is offering local pick-up. If you have a physical location and can allow your customers to forgo paying shipping costs altogether, you should!</p>                            <p><strong>Benefits:</strong></p>
                                    <ul>
                                        <li>Avoid both shipping and packaging costs</li>
                                        <li>Develop a face-to-face relationship with your customers</li>
                                        <li>Potential for additional purchases while customers are at your store</li>
                                    </ul>
                                </div> -->

                            </div>

                        </div>
                    </div>
                </div>

                <hr />

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
                                <div class="h4"><a href="product.jsp">商品名</a></div>
                                <div>商品描述或者介绍都可以</div>
                            </div>
                            <div class="quantity">
                                <input type="number" value="2" class="form-control form-quantity" />
                            </div>
                            <div class="price">
                                <span class="final h3">$ 商品价格</span>
                                <!-- <span class="discount">$ 190,00</span> -->
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
                                
                            </div>

                            <!-- discount -->

                            <div class="cart-block cart-block-footer clearfix">
                                <div>
                                    <strong>运费</strong>
                                </div>
                                <div>
                                    <span>免运费哦</span>
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
                            <a href="checkout1.jsp" class="btn btn-clean-dark"><span class="icon icon-chevron-left"></span> 返回上一级</a>
                        </div>
                        <div class="col-6 text-right">
                            <a href="checkout3.jsp" class="btn btn-clean-dark"><span class="icon icon-cart"></span> 继续付款</a>
                        </div>
                    </div>
                </div>

            </div> <!--/container-->

        </section>


        <div class="inc:_footer.jsp"></div>

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