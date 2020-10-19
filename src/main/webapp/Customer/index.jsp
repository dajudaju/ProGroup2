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
    <title>小飞猪首页</title>

    <!--CSS bundle -->
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath }/Customer/css/bootstrap.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath }/Customer/css/animate.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath }/Customer/css/font-awesome.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath }/Customer/css/ion-range-slider.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath }/Customer/css/linear-icons.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath }/Customer/css/magnific-popup.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath }/Customer/css/owl.carousel.css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath }/Customer/css/theme.css" />

    <!--Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=latin-ext" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

     <!-- ======================== Navigation ======================== -->

     <nav>

        <div class="container">

            <a href="index.jsp" class="logo"><img src="assets/images/divano-logo.svg" alt=""  width="130" height="55"/></a>

            <!-- ==========  Top navigation ========== -->

            <div class="navigation navigation-top clearfix">
                <ul>
                    <!--add active class for current page-->
                    <!-- <li class="left-side"><a href="index.html" class="logo-icon"><img src="assets/images/littleflypig2.jpg" alt="Alternate Text" width="150" height="34"/></a></li> -->
                    <li class="left-side"><a href="#">小飞猪</a></li>
                    <li class="left-side"><a href="about.jsp">关于我们</a></li>
                    <li><a href="javascript:void(0);" class="open-login"><i class="icon icon-user"></i></a></li>
                    <li><a href="javascript:void(0);" class="open-search"><i class="icon icon-magnifier"></i></a></li>
                    <li><a href="javascript:void(0);" class="open-cart"><i class="icon icon-cart"></i> </a></li>
                </ul>
            </div>

            <!-- ==========  Main navigation ========== -->

            <div class="navigation navigation-main">
                <a href="#" class="open-login"><i class="icon icon-user"></i></a>
                <a href="#" class="open-search"><i class="icon icon-magnifier"></i></a>
                <a href="#" class="open-cart"><i class="icon icon-cart"></i> <span>4</span></a>
                <a href="#" class="open-menu"><i class="icon icon-menu"></i></a>

                <div class="floating-menu">
                    <!--mobile toggle menu trigger-->
                    <div class="close-menu-wrapper">
                        <span class="close-menu"><i class="icon icon-cross"></i></span>
                    </div>
                    <ul>
                        <li>
                            <a href="mynews.jsp">我的消息 </a>
                        </li>
                        <li>
                            <a href="myshoucnag.jsp">我的收藏</a>
                        </li>
                        <li>
                            <a href="mydingdan.jsp">我的订单</a>
                            
                        </li>
                        <li>
                            <a href="checkout1.jsp">我的购物车</a>
                            
                        </li>
                        <li>
                            <a href="#">客服</a>
                            
                        </li>
                        
                        <li>
                            
                        </li>

                        <li>
                            <a href="#">更多功能 <span class="open-dropdown"><i class="fa fa-angle-down"></i></span></a>
                            <div class="navbar-dropdown">
                                <div class="navbar-box">
                                    <div class="box-full">
                                        <div class="box clearfix">
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <ul>
                                                        <li>敬请期待...</li>
                                                        
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- ==========  Search wrapper ========== -->

            <div class="search-wrapper">
                <input class="form-control" placeholder="Search..." />
                <button class="btn btn-outline-dark btn-sm">Search now</button>
            </div>

            <!-- ==========  Login wrapper ========== -->

            <div class="login-wrapper">
                <div class="h5">Sign in</div>
                <form action="${pageContext.request.contextPath }/customerServlet?cmd=login" method="post">
                    <div class="form-group">
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <a href="#forgotpassword" class="open-popup btn btn-main btn-sm">Forgot password?</a>
                        <a href="#createaccount" class="open-popup btn btn-main btn-sm">Don't have an account?</a>
                    </div>
                    <button type="submit" class="btn btn-block btn-outline-primary">Submit</button>
                </form>
            </div>

            <!-- ==========  Cart wrapper ========== -->

            <div class="cart-wrapper">
                <div class="checkout">
                    <div class="clearfix">

                        <!--cart item-->

                        <div class="row">

                            <div class="cart-block cart-block-item clearfix">
                                <div class="image">
                                    <a href="product.html"><img src="assets/images/item-1.jpg" alt="" /></a>
                                </div>
                                <div class="title">
                                    <div><a href="product.html">Product item</a></div>
                                    <small>Product category</small>
                                </div>
                                <div class="quantity">
                                    <input type="number" value="2" class="form-control form-quantity" />
                                </div>
                                <div class="price">
                                    <span class="final">$ 1.998</span>
                                    <!-- <span class="discount">$ 2.666</span> -->
                                </div>
                                <!--delete-this-item-->
                                <span class="icon icon-cross icon-delete"></span>
                            </div>

                            
                        </div>

                        <hr />

                        <!--cart prices -->

                        

                        <hr />

                        <!--cart final price -->

                        <div class="clearfix">
                            <div class="cart-block cart-block-footer clearfix">
                                <div>
                                    <strong>总价</strong>
                                </div>
                                <div>
                                    <div class="h4 title">$ 总价金额</div>
                                </div>
                            </div>
                        </div>


                        <!--cart navigation -->

                        <div class="cart-block-buttons clearfix">
                            <div class="row">
                                <div class="col-sm-6">
                                    <a href="checkout1.jsp" class="btn btn-outline-info">进入购物车</a>
                                </div>
                                <div class="col-sm-6 text-right">
                                    <!-- <a href="checkout-1.html" class="btn btn-outline-warning"><span class="icon icon-cart"></span> Checkout</a> -->
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </nav>


    <div class="page-loader">
        <div class="spinner-border" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>

    <div class="wrapper">

        <div class="inc:_header.html"></div>

        <!-- ========================  Header content ======================== -->

        <section class="header-content">

            <h2 class="d-none">Slider element</h2>

            <div class="container-fluid">

                <div class="owl-slider owl-carousel owl-theme" data-autoplay="true">

                    <!--Slide item-->

                    <div class="item d-flex align-items-center" style="background-image:url(assets/images/slide-2.jpg)">
                        <div class="container">
                            <div class="caption">
                                <div class="animated" data-start="fadeInUp">
                                    <div class="big-text big-text-sm">
                                        <span>厨房配套</span>

                                        <div>
                                            <a href="#" target="_blank" class="btn btn-info btn-block">立即前往</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="animated d-none" data-start="fadeInUp">
                                    <a href="#" target="_blank" class="btn btn-info">Buy this template</a>
                                    <a href="#" target="_blank" class="btn btn-outline-light"> Get first discount</a>
                                </div> -->

                                <div class="animated" data-start="fadeInUp">
                                    <div class="promo pt-5">
                                        <!-- <div class="badge badge-secondary">现代厨房</div> -->
                                        <div class="h2 p-0 mt-1">全新理念打造现代厨房</div>
                                        <!-- <div class="price">
                                            <span>$7299,99</span>
                                            <span>8399,99</span>
                                        </div> -->
                                        <!-- <small class="d-none d-sm-block">为舒适打call </small> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Slide item-->

                    <div class="item d-flex align-items-center" style="background-image:url(assets/images/slide-1.jpg)">
                        <div class="container">
                            <div class="caption">
                                <div class="animated" data-start="fadeInUp">
                                    <div class="promo pt-3">
                                        <div class="title title-sm p-0">纯皮沙发</div>
                                    </div>
                                </div>
                                <div class="animated" data-start="fadeInUp">
                                    让灵感自由释放
                                    <br />
                                    创造一个心灵渴望的空间
                                </div>
                                <div class="animated" data-start="fadeInUp">
                                    <div class="pt-3">
                                        <a href="#" target="_blank" class="btn btn-outline-warning">前往购买</a>
                                        <!-- <a href="#" target="_blank" class="btn btn-outline-light"> Get first discount</a> -->
                                    </div>
                                </div>
                                <div class="animated" data-start="fadeInUp">
                                    <div class="promo pt-5">
                                        <!-- <div class="h6 p-0 m-0">Get special price</div>
                                        <div class="price">
                                            <span>$1499,99</span>
                                            <span>3499,99</span>
                                        </div>
                                        <small class="d-none d-sm-block">** Product prices with discount are available until the end of stock </small> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Slide item-->

                    <div class="item d-flex align-items-center" style="background-image:url(assets/images/slide-3.jpg)">
                        <div class="container">
                            <div class="caption">
                                <div class="promo text-center">
                                    <div class="animated" data-start="fadeInUp">
                                        <div class="title title-sm p-0">小飞猪一站式浴室</div>
                                    </div>
                                    <div class="animated" data-start="fadeInUp">
                                        这里是小飞猪为您打开浴室新风格
                                    </div>
                                    <div class="animated" data-start="fadeInUp">
                                        <a href="#" target="_blank" class="btn btn-light">新系列</a>
                                        <!-- <a href="#" target="_blank" class="btn btn-outline-light"> Get first discount</a> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div> <!--/owl-slider-->
            </div>

            <!--Icons-->

            <div class="owl-icons-wrapper">

                <div class="container">

                    <div class="owl-icons owl-carousel owl-theme" data-icons-sm="3" data-icons-md="4" data-icons-lg="8">

                        <a href="products-gird-shafa.jsp">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-sofa.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>沙发</figcaption>
                            </figure>
                        </a>

                        <!-- <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-armchair.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>Armchairs</figcaption>
                            </figure>
                        </a> -->

                        <a href="products-gird-yizi.jsp">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-chair.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>椅子</figcaption>
                            </figure>
                        </a>

                        <a href="products-gird-canzhuo.jsp">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-dining.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>餐桌</figcaption>
                            </figure>
                        </a>

                        <a href="products-gird-chufang.jsp">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-kitchen.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>厨房</figcaption>
                            </figure>
                        </a>


                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-mediacabinet.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>媒体存储</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-table.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>桌子</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-bookcase.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>书柜</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-bedroom.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>卧室</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-nightstand.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>床头柜</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-kidsroom.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>儿童</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-bathroom.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>浴室</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-wardrobe.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>衣柜</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-shocabinet.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>鞋柜</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-office.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>办公室</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-barset.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>酒吧套</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-light.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>灯具</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-carpet.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>地毯</figcaption>
                            </figure>
                        </a>

                        <a href="#">
                            <figure>
                                <div class="image">
                                    <img src="assets/icons/icon-accessories.svg" alt="Alternate Text" />
                                </div>
                                <figcaption>配饰</figcaption>
                            </figure>
                        </a>

                    </div> <!--/owl-icons-->
                </div>

            </div>
        </section>

        <!-- ========================  Popular products  ======================== -->

        <section class="products">

            <!--Header-->

            <header>
                <div class="container">
                    <h2 class="title">人气商品</h2>
                    <div class="text">
                        <p>
                            找到完美搭配 <a href="products-grid.jsp" class="btn btn-main">所有商品</a>
                        </p>
                    </div>
                </div>
            </header>

            <!--Content-->

            <div class="container">

                <div class="row">

                    <!--Product item-->

                    <div class="col-6 col-lg-4">
                        <article>
                            <div class="info">
                                <span class="add-">
                                    <a href="javascrifavoritept:void(0);" data-title="Add to favorites" data-title-added="Added to favorites list">
                                        <i class="icon icon-heart"></i>
                                    </a>
                                </span>
                                <span>
                                    <a href="#productid1" class="mfp-open" data-title="Quick wiew">
                                        <i class="icon icon-eye"></i>
                                    </a>
                                </span>
                            </div>
                            <div class="btn btn-add">
                                <i class="icon icon-cart"></i>
                            </div>
                            <div class="figure-grid">
                                <div class="image">
                                    <a href="product.jsp">
                                        <img src="assets/images/product-10.jpg" alt="" />
                                    </a>
                                </div>
                                <div class="text">
                                    <h2 class="title h4">
                                        <a href="product.jsp">Anna</a>
                                    </h2>
                                    <!-- <sub>$ 159,-</sub> -->
                                    <sup>$ 139 </sup> 
                                </div>
                            </div>
                        </article>
                    </div>
                </div> <!--/row-->

            </div>

        </section>

        <!-- ========================  Product popup ======================== 商品弹窗展示 -->

        <div class="popup-main mfp-hide" id="productid1">

            <!--Product popup-->

            <div class="product">

                <!--Popup-title -->

                <div class="popup-title">
                    <div class="h3 title">
                        商品名字
                        <small>分类名字</small>
                    </div>
                </div>

                <!--Product gallery-->

                <div class="owl-product-gallery owl-theme owl-carousel">
                    <img src="assets/images/item-1.jpg" alt="" width="640" />
                    <img src="assets/images/item-2.jpg" alt="" width="640" />
                </div>

                <!--Popup info-->

                <div class="popup-content">
                    <div class="product-info-wrapper">
                        <div class="row">

                            <!--Left side-->

                            <div class="col-sm-6">
                                <div class="info-box">
                                    <strong>品牌</strong>
                                    <span>品牌名字</span>
                                </div>
                                <div class="info-box">
                                    <strong>材料</strong>
                                    <span>材料描述</span>
                                </div>
                                <div class="info-box">
                                    <strong>库存</strong>
                                    <span><i class="fa fa-check-square-o"></i> 有货</span>
                                </div>
                            </div>

                            <!--Right side-->

                            <div class="col-sm-6">
                                <div class="info-box">
                                    <strong>我们这个椅子啊，非常好，具体什么好您买了就知道</strong>
                                </div>
                            </div>

                        </div> <!--/row-->
                    </div> <!--/product-info-wrapper-->
                </div> <!--/popup-content-->

                <div class="popup-table">
                    <div class="popup-cell">
                        <div class="price">
                            <span class="h3">$ 1999,00 </span>
                        </div>
                    </div>
                    <div class="popup-cell">
                        <div class="popup-buttons">
                            <a href="product.jsp"><span class="icon icon-eye"></span> <span class="hidden-xs">了解更多</span></a>
                            <!-- <a href="javascript:void(0);"><span class="icon icon-cart"></span> <span class="hidden-xs">添加购物车</span></a> -->
                        </div>
                    </div>
                </div>

            </div> <!--/product-->
        </div>

        <!-- ========================  Cards ======================== -->

        <section class="cards">

            <!--Header-->

            <header>
                <div class="container">
                    <h2 class="title"></h2>
                    <div class="text">
                        <p>
                            为您和您的家人打造舒适空间
                        </p>
                    </div>
                </div>
            </header>

            <!--Content-->

            <div class="container-fluid">

                <div class="row">

                    <!--Item-->

                    <div class="col-lg-8">
                        <figure>
                            <figcaption style="background-image:url(assets/images/box-1.jpg)">
                                <img src="assets/images/box-1.jpg" alt="" />
                            </figcaption>
                            <a href="#interiorId1" class="btn btn-clean">Open up for easy living</a>
                        </figure>
                    </div>

                    <!--Item-->

                    <div class="col-lg-4">
                        <figure>
                            <figcaption style="background-image:url(assets/images/box-2.jpg)">
                                <img src="assets/images/box-2.jpg" alt="" />
                            </figcaption>
                            <a href="#interiorId1" class="btn btn-clean">Traditional looks</a>
                        </figure>
                    </div>

                    <!--Item-->

                    <div class="col-lg-4">
                        <figure>
                            <figcaption style="background-image:url(assets/images/box-3.jpg)">
                                <img src="assets/images/box-3.jpg" alt="" />
                            </figcaption>
                            <a href="#interiorId1" class="btn btn-clean">Sleek and sustainable</a>
                        </figure>
                    </div>

                    <!--Item-->

                    <div class="col-lg-4">
                        <figure>
                            <figcaption style="background-image:url(assets/images/box-4.jpg)">
                                <img src="assets/images/box-4.jpg" alt="" />
                            </figcaption>
                            <a href="#interiorId1" class="btn btn-clean">Compact living</a>
                        </figure>
                    </div>

                    <!--Item-->

                    <div class="col-lg-4">
                        <figure>
                            <figcaption style="background-image:url(assets/images/box-5.jpg)">
                                <img src="assets/images/box-5.jpg" alt="" />
                            </figcaption>
                            <a href="#interiorId1" class="btn btn-clean">Classic design</a>
                        </figure>
                    </div>



                </div> <!--/row-->

            </div> <!--/container-fluid-->

        </section>

        <!-- ========================  Blog ======================== -->

        <section class="blog blog-widget blog-animated">

            <!--Header-->

            <header>
                <div class="container">
                    <h2 class="h2 title">设计背后的故事</h2>
                    <div class="text">
                        <p>
                            这是一只特立独行的小飞猪 <a href="blog-grid.html" class="btn btn-main">所有故事</a>
                        </p>
                    </div>
                </div>
            </header>

            <!--Content-->

            <div class="container">

                <div class="row">

                    <!--Blog item-->

                    <div class="col-md-12 col-lg-4">
                        <article>
                            <a href="article.jsp" class="blog-link">
                                <div class="image" style="background-image:url(assets/images/product-1.jpg)">
                                    <img src="assets/images/product-1.jpg" alt="" />
                                </div>
                                <div class="entry entry-table">
                                    <div class="date-wrapper">
                                        <div class="date">
                                            <span>Sep</span>
                                            <strong>08</strong>
                                            <span>2019</span>
                                        </div>
                                    </div>
                                    <div class="title">
                                        <h2 class="h5">Home Organizers that Add Color to Your Space</h2>
                                    </div>
                                </div>
                            </a>
                        </article>
                    </div>

                    <!--Blog item-->

                    <div class="col-md-12 col-lg-4">
                        <article>
                            <a href="article.jsp" class="blog-link">
                                <div class="image" style="background-image:url(assets/images/product-2.jpg)">
                                    <img src="assets/images/product-2.jpg" alt="" />
                                </div>
                                <div class="entry entry-table">
                                    <div class="date-wrapper">
                                        <div class="date">
                                            <span>Sep</span>
                                            <strong>04</strong>
                                            <span>2019</span>
                                        </div>
                                    </div>
                                    <div class="title">
                                        <h2 class="h5">How to use room dividers in small spaces</h2>
                                    </div>
                                </div>
                            </a>
                        </article>
                    </div>

                    <!--Blog item-->

                    <div class="col-md-12 col-lg-4">
                        <article>
                            <a href="article.jsp" class="blog-link">
                                <div class="image" style="background-image:url(assets/images/product-3.jpg)">
                                    <img src="assets/images/product-3.jpg" alt="" />
                                </div>
                                <div class="entry entry-table">
                                    <div class="date-wrapper">
                                        <div class="date">
                                            <span>Sep</span>
                                            <strong>01</strong>
                                            <span>2019</span>
                                        </div>
                                    </div>
                                    <div class="title">
                                        <h2 class="h5">How to pick a garden color palette</h2>
                                    </div>
                                </div>
                            </a>
                        </article>
                    </div>

                </div> <!--/row-->

            </div> <!--/container-->

        </section>

        <!-- ========================  Newsletter ======================== -->

        <section class="banner">

            <div class="container-fluid">

                <div class="banner-image" style="background-image:url(assets/images/gallery-1.jpg)">
                    <!--Header-->

                    <header>
                        <div class="container">

                            <h2 class="h2 title">常回来看看!</h2>
                            <!-- <div class="text">
                                <p>Be first to know about all new interior features!</p>
                            </div> -->

                        </div>
                    </header>

                    <!--Content-->

                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <input type="email" class="form-control" name="name" value="" placeholder="输入你的电子邮箱">
                            </div>
                            <div class="col-md-4">
                                <a href="#" class="btn btn-clean">Subscribe now</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div> <!--/container-fluid-->

        </section>

        <!-- ========================  Instagram ======================== -->

        <section class="instagram">

            <!--Header-->

            <header>
                <h2 class="h6 title">
                    <i class="fa fa-instagram fa-3x"></i> <br>
                    #小飞猪家居
                </h2>
            </header>

            <!--Gallery-->

            <div class="container">

                <div class="gallery clearfix">
                    <a class="item" >
                        <img src="assets/images/product-1.jpg" alt="Alternate Text">
                    </a>
                    <a class="item" >
                        <img src="assets/images/product-2.jpg" alt="Alternate Text">
                    </a>
                    <a class="item" >
                        <img src="assets/images/product-3.jpg" alt="Alternate Text">
                    </a>
                    <a class="item" >
                        <img src="assets/images/product-4.jpg" alt="Alternate Text">
                    </a>
                    <a class="item" >
                        <img src="assets/images/product-5.jpg" alt="Alternate Text">
                    </a>
                    <a class="item" >
                        <img src="assets/images/product-6.jpg" alt="Alternate Text">
                    </a>
                </div> <!--/gallery-->

            </div>

        </section>

        <!-- ========================  Benefits ======================== -->

        <section class="benefits">

            <!--Header-->

            <header class="d-none">
                <div class="container">
                    <h2 class="h2 title">Benefits</h2>
                </div>
            </header>

            <!--Header-->

            <div class="container">

                <div class="row">

                    <!--Icon-->

                    <div class="col-6 col-lg-3" data-tilt>
                        <figure>
                            <div class="icon"><i class="icon icon-gift"></i></div>
                            <figcaption>
                                <span>
                                    <strong>新用户好礼待领</strong> <br />
                                    <small>您是新用户吗？</small>
                                </span>
                            </figcaption>
                        </figure>
                    </div>

                    <!--Icon-->

                    <div class="col-6 col-lg-3" data-tilt>
                        <figure>
                            <div class="icon"><i class="icon icon-rocket"></i></div>
                            <figcaption>
                                <span>
                                    <strong>快捷交货</strong> <br />
                                    <small>我们向全世界发货</small>
                                </span>
                            </figcaption>
                        </figure>
                    </div>

                    <!--Icon-->

                    <div class="col-6 col-lg-3" data-tilt>
                        <figure>
                            <div class="icon"><i class="icon icon-history"></i></div>
                            <figcaption>
                                <span>
                                    <strong>退货有保障</strong> <br />
                                    <small>30天退款保证</small>
                                </span>
                            </figcaption>
                        </figure>
                    </div>

                    <!--Icon-->

                    <div class="col-6 col-lg-3" data-tilt>
                        <figure>
                            <div class="icon"><i class="icon icon-diamond"></i></div>
                            <figcaption>
                                <span>
                                    <strong>VIP 折扣</strong> <br />
                                    <small>快来打开新世界</small>
                                </span>
                            </figcaption>
                        </figure>
                    </div>
                </div> <!--/row-->

            </div> <!--/container-->

        </section>


        <div class="inc:_footer.html"></div>

         <!-- ================== Footer  ================== -->

         <footer>

            <div class="container-fluid">

                <div class="footer-wrap">

                    <div class="container">

                        <!--footer showroom-->
                        <div class="footer-showroom">
                            <div class="text-center">
                                <a href="/">小飞猪为您服务</a>
                            </div>
                        </div>

                        <!--footer links-->
                        <div class="footer-links">
                            <!-- <div class="row">
                                <div class="col-md-2">
                                    <h5>Browse by</h5>
                                    <ul>
                                        <li><a href="#">Brand</a></li>
                                        <li><a href="#">Product</a></li>
                                        <li><a href="#">Category</a></li>
                                        <li><a href="#">Projects</a></li>
                                        <li><a href="#">Sales</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-2">
                                    <h5>Quick links</h5>
                                    <ul>
                                        <li><a href="#">In-Store Pickup</a></li>
                                        <li><a href="#">Gift Cards</a></li>
                                        <li><a href="#">Afterpay</a></li>
                                        <li><a href="#">Shop</a></li>
                                        <li><a href="#">FAQ</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-2">
                                    <h5>Order info</h5>
                                    <ul>
                                        <li><a href="#">Order Status </a></li>
                                        <li><a href="#">Payments</a></li>
                                        <li><a href="#">Shipping</a></li>
                                        <li><a href="#">Returns</a></li>
                                        <li><a href="#">Order history</a></li>
                                    </ul>
                                </div>
                                <div class="offset-md-3 col-md-3">
                                    <h5>Sign up for our newsletter</h5>
                                    <p><i>Add your email address to sign up for our monthly emails and to receive promotional offers.</i></p>
                                    <div class="form-group form-newsletter">
                                        <input class="form-control" type="text" name="email" value="" placeholder="Email address" />
                                        <input type="submit" class="btn btn-secondary btn-sm" value="Subscribe" />
                                    </div>
                                </div>
                            </div> -->
                        </div>

                        <!--footer social-->

                        <div class="footer-social">
                            <div class="row">
                                <div class="col-sm-6" style="text-align: center;">
                                    <a href="#" target="_blank"> 设计源于生活，细节成就品质。</a>
                                </div>
                                <!-- <div class="col-sm-6 links">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                    </ul>
                                </div> -->
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </footer>

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

<!-- ==================  Navigation (main menu) ================== -->
<script type="text/javascript">
    $(function () {
        // Main navigation & mega menu
        // ----------------------------------------------------------------

        // Global menu variables

        var objSearch = $('.search-wrapper'),
            objLogin = $('.login-wrapper'),
            objCart = $('.cart-wrapper'),
            objMenu = $('.floating-menu'),
            objMenuLink = $('.floating-menu a'),
            $search = $('.open-search'),
            $login = $('.open-login'),
            $cart = $('.open-cart'),
            $menu = $('.open-menu'),
            $openDropdown = $('.open-dropdown'),
            $close = $('.close-menu'),
            $settingsItem = $('.nav-settings .nav-settings-list li');

        // Open/close login

        $login.on('click', function () {
            toggleOpen($(this));
            objLogin.toggleClass('open-login');
            closeSearch();
            closeCart();
        });

        // Open/close search bar

        $search.on('click', function () {
            toggleOpen($(this));
            objSearch.toggleClass('open-search');
            objSearch.find('input').focus();
            closeLogin();
            closeCart();
        });

        // Open/close cart

        // $cart.on('click', function () {
        //     toggleOpen($(this));
        //     objCart.toggleClass('open-cart');
        //     closeLogin();
        //     closeSearch();
        // });

        // Settings language & currency dropdown

        $settingsItem.on('click', function () {
            var $value = $(this).closest('.nav-settings').find('.nav-settings-value');
            $value.text($(this).text());
        });


        // Mobile menu open/close

        $menu.on('click', function () {
            objMenu.addClass('expanded');
            closeSearch();
            closeLogin();
            closeCart();
        });

        // Floating menu hyperlink
        if ($('nav').hasClass('navbar-single-page')) {
            objMenuLink.on('click', function () {
                objMenu.removeClass('expanded');
            });
        }

        // Open dropdown/megamenu

        $openDropdown.on('click', function (e) {

            e.preventDefault();

            var liParent = $(this).parent().parent(),
                liDropdown = liParent.find('.navbar-dropdown');

            liParent.toggleClass('expanded');

            if (liParent.hasClass('expanded')) {
                liDropdown.slideDown();
            }
            else {
                liDropdown.slideUp();
            }
        });

        // Close menu (mobile)

        $close.on('click', function () {
            $('nav').find('.expanded').removeClass('expanded');
            $('nav').find('.navbar-dropdown').slideUp();
        });

        // Global functions

        function toggleOpen(el) {
            $(el).toggleClass('open');
        }

        function closeSearch() {
            objSearch.removeClass('open');
            $search.removeClass('open');
        }
        function closeLogin() {
            objLogin.removeClass('open');
            $login.removeClass('open');
        }
        function closeCart() {
            objCart.removeClass('open');
            $cart.removeClass('open');
        }

        // Sticky header
        // ----------------------------------------------------------------

        var navbarFixed = $('nav.navbar-fixed');

        // When reload page - check if page has offset
        if ($(document).scrollTop() > 94) {
            navbarFixed.addClass('navbar-sticked');
        }
        // Add sticky menu on scroll
        $(document).on('bind ready scroll', function () {
            var docScroll = $(document).scrollTop();
            if (docScroll >= 10) {
                navbarFixed.addClass('navbar-sticked');
            } else {
                navbarFixed.removeClass('navbar-sticked');
            }
        });

                var navHeight = $('nav').height();

        if ($(".owl-slider").hasClass('owl-slider-fullscreen')) {
            $('.header-content .item').height($(window).height() - navHeight - 50);
        }

    });
</script>

</html>