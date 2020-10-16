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
    <title>购物车页面三</title>

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

            <!-- === header === -->

            <header>
                <div class="container">
                    <h2 class="title">下单付款</h2>
                    <div class="text">
                        <p>确认您的订单信息哦</p>
                    </div>
                </div>
            </header>

            <!-- === step wrapper === -->

            <div class="step-wrapper">

                <div class="container">

                    <div class="stepper">
                        <ul class="row">
                            <li class="col-3 active">
                                <span data-text="购物清单"></span>
                            </li>
                            <li class="col-3 active">
                                <span data-text="确认订单"></span>
                            </li>
                            <li class="col-3 active" >
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

                <!-- ========================  Payment ======================== -->

                <div class="cart-wrapper">

                    <div class="note-block">

                        <div class="row">
                            <!-- === left content === -->

                            <div class="col-md-6">

                                <div class="white-block">

                                    <div class="h4">订单详细信息</div>

                                    <hr />

                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>订单号</strong> <br />
                                                <span>具体订单号码</span>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>收获地址</strong> <br />
                                                <span>收货人具体地址</span>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>收货人姓名</strong> <br />
                                                <span>收货人名字</span>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>收货人电话</strong> <br />
                                                <span>收货人电话号码</span>
                                            </div>
                                        </div>

                                    </div>

                                    <!-- <div class="h4">Shipping info</div> -->

                                    <!-- <hr /> -->

                                    <!-- <div class="row">

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>Name</strong> <br />
                                                <span>John Doe</span>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>Email</strong><br />
                                                <span>johndoe@company.com</span>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>Phone</strong><br />
                                                <span>+122 523 352</span>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>Zip</strong><br />
                                                <span>94107</span>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>City</strong><br />
                                                <span>San Francisco, California</span>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>Address</strong><br />
                                                <span>795 Folsom Ave, Suite 600</span>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>Company name</strong><br />
                                                <span>Mobel Inc</span>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <strong>Company phone</strong><br />
                                                <span>+122 333 6665</span>
                                            </div>
                                        </div>


                                    </div> -->

                                </div> <!--/col-md-6-->

                            </div>

                            <!-- === right content === -->

                            <div class="col-md-6">
                                <div class="white-block">

                                    <div class="h4">选择支付方式</div>

                                    <hr />

                                    <span class="checkbox">
                                        <input type="radio" id="paymentID1" name="paymentOption" checked="checked">
                                        <label for="paymentID1">
                                            <strong>支付宝支付</strong> <br />
                                            <!-- <small>(MasterCard, Maestro, Visa, Visa Electron, JCB and American Express)</small> -->
                                        </label>
                                    </span>

                                    <br>    

                                    <span class="checkbox">
                                        <input type="radio" id="paymentID2" name="paymentOption">
                                        <label for="paymentID2">
                                            <strong>微信支付</strong> <br />
                                            <!-- <small>Purchase with your fingertips. Look for us the next time you're paying from a mobile app, and checkout faster on thousands of mobile websites.</small> -->
                                        </label>
                                    </span>

                                    <br>

                                    <span class="checkbox">
                                        <input type="radio" id="paymentID3" name="paymentOption">
                                        <label for="paymentID3">
                                            <strong>银行卡支付</strong> <br />
                                            <!-- <small>You can make payments directly into our bank account and email the bank wire transfer receipt to us. We recommend bank wire transfer for payments exceeding $500,00. </small> -->
                                        </label>
                                    </span>

                                    <!-- <hr />

                                    <p>Please allow three working days for the payment confirmation to reflect in your <a href="#">online account</a>. Once your payment is confirmed, we will generate your e-invoice, which you can view/print from your account or email.</p> -->
                                </div>
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
                                <div class="h4"><a href="product.html">商品名</a></div>
                                <div>商品分类</div>
                            </div>
                            <div class="quantity">
                                <input type="number" value="2" class="form-control form-quantity" />
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


                            <!-- discount -->

                            <div class="cart-block cart-block-footer clearfix">
                                <div>
                                    <strong>运费</strong>
                                </div>
                                <div>
                                    <span> 免运费哦 </span>
                                </div>
                            </div>

                            <!-- discount -->

                            <div class="cart-block cart-block-footer clearfix">
                                <div>
                                    <strong>总价</strong>
                                </div>
                                <div>
                                    <span>$ 总价金额</span>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- ========================  Cart navigation ======================== -->

                <div class="clearfix">
                    <div class="row">
                        <div class="col-6">
                            <a href="checkout2.jsp" class="btn btn-clean-dark"><span class="icon icon-chevron-left">返回上一级</span> </a>
                        </div>
                        <div class="col-6 text-right">
                            <a href="checkout4.jsp" class="btn btn-clean-dark"><span class="icon icon-cart">付款</span>  </a>
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