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
    <title>我的收藏</title>

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
                    <h2 class="title">我的收藏</h2>
                    <div class="text">
                        <p>您收藏的商品都在这里哦</p>
                    </div>
                </div>
            </header>

            <!-- === step wrapper === -->

            <!-- <div class="step-wrapper">

                <div class="container">

                    <div class="stepper">
                        <ul class="row">
                            <li class="col-3 active">
                                <span data-text="Cart items"></span>
                            </li>
                            <li class="col-3">
                                <span data-text="Delivery"></span>
                            </li>
                            <li class="col-3">
                                <span data-text="Payment"></span>
                            </li>
                            <li class="col-3">
                                <span data-text="Receipt"></span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div> -->

            <!-- === left content === -->

            <div class="container">

                <!-- ========================  Cart wrapper ======================== -->

                <div class="cart-wrapper">

                    <!-- cart header -->

                    <div class="cart-block cart-block-header clearfix">
                        <div><span>商品</span></div>
                        <div><span>&nbsp;</span></div>
                        <div><span></span></div>
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
                                
                            </div>
                            <div class="price">
                                <span class="final h3">$ 150,00</span>
                                <!-- <span class="discount">$ 190,00</span> -->
                            </div>
                            <!--delete-this-item-->
                            <span class="icon icon-cross icon-delete"></span>
                        </div>
                    </div>

                    <!--cart prices -->

                    <div class="row">
                        <div class="col-md-4 offset-md-8">

                        </div>
                    </div>

                    <!-- cart final price -->

                    <!-- <div class="clearfix">
                        <div class="cart-block cart-block-footer cart-block-footer-price clearfix">
                            <div>
                                <span class="checkbox">
                                    <input type="checkbox" id="couponCodeID">
                                    <label for="couponCodeID">Promo code</label>
                                    <input type="text" class="form-control form-coupon" value="" placeholder="Enter your coupon code" />
                                </span>
                            </div>
                            <div>
                                <div class="h2 title">$ 1259,00</div>
                            </div>
                        </div>
                    </div> -->
                </div>

                <!-- ========================  Cart navigation ======================== -->

                <div class="clearfix">
                    <div class="row">
                        <div class="col-6">
                            <a href="index.jsp" class="btn btn-clean-dark"><span class="icon icon-chevron-left">返回首页</span></a>
                        </div>
                    </div>
                </div>

            </div> <!--/container-->

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