<%-- 
    Document   : login
    Created on : Mar 3, 2022, 11:33:22 PM
    Author     : Thanh Thao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- https://cocoshop.vn/ -->
<!-- http://mauweb.monamedia.net/vanihome/ -->

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách sản phẩm</title>
    <!-- Font roboto -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <!-- Icon fontanwesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <!-- Reset css & grid sytem -->
    <link rel="stylesheet" href="./assets/css/library.css">
    <link href="./assets/owlCarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <!-- Layout -->
    <link rel="stylesheet" href="./assets/css/common.css">
    <!-- index -->
    <link href="./assets/css/home.css" rel="stylesheet" />

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Owl caroucel Js-->
    <script src="./assets/owlCarousel/owl.carousel.min.js"></script>

</head>

<body>
    <div class="header scrolling" id="myHeader">
        <div class="grid wide">
            <div class="header__top">
                <div class="navbar-icon">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                <a href="index.html" class="header__logo">
                    <img src="./assets/logo.png" alt="">
                </a>
                <div class="header__search">
                    <div class="header__search-wrap">
                        <input type="text" class="header__search-input" placeholder="Tìm kiếm">
                        <a class="header__search-icon" href="#">
                            <i class="fas fa-search"></i>
                        </a>
                    </div>
                </div>
                <div class="header__account">
                    <a href="#my-Login" class="header__account-login">Đăng Nhập</a>
                    <a href="#my-Register" class="header__account-register">Đăng Kí</a>
                </div>
                <!-- Cart -->
                <div class="header__cart have" href="#">
                    <i class="fas fa-shopping-basket"></i>
                    <div class="header__cart-amount">
                        3
                    </div>
                    <div class="header__cart-wrap">
                        <ul class="order__list">
                            <li class="item-order">
                                <div class="order-wrap">
                                    <a href="product.html" class="order-img">
                                        <img src="./assets/img/product/product1.jpg" alt="">
                                    </a>
                                    <div class="order-main">
                                        <a href="product.html" class="order-main-name">Áo sơ mi  caro kèm belt caro kèm belt Áo sơ mi caro kèm belt</a>
                                        <div class="order-main-price">2 x 45,000 ₫</div>
                                    </div>
                                    <a href="product.html" class="order-close"><i class="far fa-times-circle"></i></a>
                                </div>
                            </li>
                            <li class="item-order">
                                <div class="order-wrap">
                                    <a href="product.html" class="order-img">
                                        <img src="./assets/img/product/product1.jpg" alt="">
                                    </a>
                                    <div class="order-main">
                                        <a href="product.html" class="order-main-name">Áo sơ mi  caro kèm belt caro kèm belt Áo sơ mi caro kèm belt</a>
                                        <div class="order-main-price">2 x 45,000 ₫</div>
                                    </div>
                                    <a href="product.html" class="order-close"><i class="far fa-times-circle"></i></a>
                                </div>
                            </li>
                            <li class="item-order">
                                <div class="order-wrap">
                                    <a href="product.html" class="order-img">
                                        <img src="./assets/img/product/product1.jpg" alt="">
                                    </a>
                                    <div class="order-main">
                                        <a href="product.html" class="order-main-name">Áo sơ mi  caro kèm belt caro kèm belt Áo sơ mi caro kèm belt</a>
                                        <div class="order-main-price">2 x 45,000 ₫</div>
                                    </div>
                                    <a href="product.html" class="order-close"><i class="far fa-times-circle"></i></a>
                                </div>
                            </li>
                        </ul>
                        <div class="total-money">Tổng cộng: 120.000đ</div>
                        <a href="cart.html" class="btn btn--default cart-btn">Xem giỏ hàng</a>
                        <a href="pay.html" class="btn btn--default cart-btn orange">Thanh toán</a>
                        <!-- norcart -->
                        <!-- <img class="header__cart-img-nocart" src="http://www.giaybinhduong.com/images/empty-cart.png" alt=""> -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Menu -->
        <div class="header__nav">
            <ul class="header__nav-list">
                <li class="header__nav-item nav__search">
                    <div class="nav__search-wrap">
                        <input class="nav__search-input" type="text" name="" id="" placeholder="Tìm sản phẩm...">
                    </div>
                    <div class="nav__search-btn">
                        <i class="fas fa-search"></i>
                    </div>
                </li>
                <li class="header__nav-item authen-form">
                    <a href="#" class="header__nav-link">Tài Khoản</a>
                    <ul class="sub-nav">
                        <li class="sub-nav__item">
                            <a href="#my-Login" class="sub-nav__link">Đăng Nhập</a>
                        </li>
                        <li class="sub-nav__item">
                            <a href="#my-Register" class="sub-nav__link">Đăng Kí</a>
                        </li>
                    </ul>
                </li>
                <li class="header__nav-item index">
                    <a href="index.html" class="header__nav-link">Trang chủ</a>
                </li>
                <li class="header__nav-item">
                    <a href="#" class="header__nav-link">Giới Thiệu</a>
                </li>
                <li class="header__nav-item">
                    <a href="#" class="header__nav-link">Sản Phẩm</a>
                    <div class="sub-nav-wrap grid wide">
                        <ul class="sub-nav">
                            <li class="sub-nav__item">
                                <a href="" class="sub-nav__link heading">Nước hoa</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc toàn thân vvv</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Khuyến mãi</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc cơ thể</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Nước hoa</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc miệng</a>
                            </li>
                        </ul>
                        <ul class="sub-nav">
                            <li class="sub-nav__item">
                                <a href="" class="sub-nav__link heading">Nước hoa</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc toàn thân vvv</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Khuyến mãi</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc cơ thể</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Nước hoa</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc miệng</a>
                            </li>
                        </ul>
                        <ul class="sub-nav">
                            <li class="sub-nav__item">
                                <a href="" class="sub-nav__link heading">Nước hoa</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc toàn thân vvv</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Khuyến mãi</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc cơ thể</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Nước hoa</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc miệng</a>
                            </li>
                        </ul>
                        <ul class="sub-nav">
                            <li class="sub-nav__item">
                                <a href="" class="sub-nav__link heading">Nước hoa</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc toàn thân vvv</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Khuyến mãi</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc cơ thể</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Nước hoa</a>
                            </li>
                            <li class="sub-nav__item">
                                <a href="listProduct.html" class="sub-nav__link">Chăm sóc miệng</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="header__nav-item">
                    <a href="news.html" class="header__nav-link">Tin Tức</a>
                </li>
                <li class="header__nav-item">
                    <a href="contact.html" class="header__nav-link">Liên Hệ</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main">
        <!-- Slider -->
        <div class="main__slice">
            <div class="slider">
                <div class="slide active" style="background-image:url(./assets/img/slider/slide-6.jpg)">
                    <div class="container">
                        <div class="caption">
                            <h1>Giảm giá 30%</h1>
                            <p>Giảm giá cực sốc trong tháng 6!</p>
                            <a href="listProduct.html" class="btn btn--default">Xem ngay</a>

                        </div>
                    </div>
                </div>
                <div class="slide active" style="background-image:url(./assets/img/slider/slide-4.jpg)">
                    <div class="container">
                        <div class="caption">
                            <h1>Giảm giá 30%</h1>
                            <p>Giảm giá cực sốc trong tháng 6!</p>
                            <a href="listProduct.html" class="btn btn--default">Xem ngay</a>

                        </div>
                    </div>
                </div>
                <div class="slide active" style="background-image:url(./assets/img/slider/slide-5.jpg)">
                    <div class="container">
                        <div class="caption">
                            <h1>Giảm giá 30%</h1>
                            <p>Giảm giá cực sốc trong tháng 6!</p>
                            <a href="listProduct.html" class="btn btn--default">Xem ngay</a>

                        </div>
                    </div>
                </div>
            </div>
            <!-- controls  -->
            <div class="controls">
                <div class="prev">
                    <i class="fas fa-chevron-left"></i>
                </div>
                <div class="next">
                    <i class="fas fa-chevron-right"></i>
                </div>
            </div>
            <!-- indicators -->
            <div class="indicator">
            </div>
        </div>
        <!--Product Category -->
        <div class="main__tabnine">
            <div class="grid wide">
                <!-- Tab items -->
                <div class="tabs">
                    <div class="tab-item active">
                        Sản Phẩm Bán Chạy
                    </div>
                    <div class="tab-item">
                        Sản Phẩm Khuyến Mãi
                    </div>
                    <div class="tab-item">
                        Sản Phẩm Mới
                    </div>
                    <div class="line"></div>
                </div>
                <!-- Tab content -->
                <div class="tab-content">
                    <div class="tab-pane active">
                        <div class="row">
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product1.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product5.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product2.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product3.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product6.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product4.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product1.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product2.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product4.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product3.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product6.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product5.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane">
                        <div class="row">
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product4.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product5.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product2.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product3.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product6.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product4.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product1.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product2.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product4.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product3.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product6.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product5.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane">
                        <div class="row">
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product2.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product5.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product2.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product3.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product6.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product4.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product1.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product2.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product4.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product3.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product6.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="col l-2 m-4 s-6">
                                <div class="product">
                                    <div class="product__avt" style="background-image: url(./assets/img/product/product5.jpg);">
                                    </div>
                                    <div class="product__info">
                                        <h3 class="product__name">Kem dưỡng da NestPlae</h3>
                                        <div class="product__price">
                                            <div class="price__old">
                                                300.000 đ
                                            </div>
                                            <div class="price__new">200.000 <span class="price__unit">đ</span></div>
                                        </div>
                                        <div class="product__sale">
                                            <span class="product__sale-percent">24%%</span>
                                            <span class="product__sale-text">Giảm</span>
                                        </div>
                                    </div>
                                    <a href="product.html" class="viewDetail">Xem chi tiết</a>
                                    <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- HightLight  -->
        <div class="main__frame">
            <div class="grid wide">
                <h3 class="category__title">Thanh Thảo Cometics</h3>
                <h3 class="category__heading">SẢN PHẨM NỔI BẬT</h3>
                <div class="owl-carousel hight owl-theme">
                    <div class="product">
                        <div class="product__avt" style="background-image: url(./assets/img/product/product1.jpg);">
                        </div>
                        <div class="product__info">
                            <h3 class="product__name">Son môi cao cấp</h3>
                            <div class="product__price">
                                <div class="price__old">
                                    100.000 đ
                                </div>
                                <div class="price__new"> 70.000<span class="price__unit">đ</span></div>
                            </div>
                            <div class="product__sale">
                                <span class="product__sale-percent">23</span>
                                <span class="product__sale-text">Giảm</span>
                            </div>
                        </div>
                        <a href="product.html" class="viewDetail">Xem chi tiết</a>
                        <a href="cart.html" class="addToCart">Thêm vào giỏ</a>
                    </div>
                    <div class="product">
                        <div class="product__avt" style="background-image: url(./assets/img/product/product1.jpg);">
                        </div>
                        <div class="product__info">
                            <h3 class="product__name">Son môi cao cấp</h3>
                            <div class="product__price">
                                <div class="price__old">
                                    100.000 đ
                                </div>
                                <div class="price__new"> 70.000<span class="price__unit">đ</span></div>
                            </div>
                            <div class="product__sale">
                                <span class="product__sale-percent">23</span>
                                <span class="product__sale-text">Giảm</span>
                            </div>
                        </div>
                        <a href="product.html" class="viewDetail">Xem chi tiết</a>
                        <a href="cart.html" class="addToCart">Thêm vào giỏ</a>

                    </div>
                    <div class="product">
                        <div class="product__avt" style="background-image: url(./assets/img/product/product1.jpg);">
                        </div>
                        <div class="product__info">
                            <h3 class="product__name">Son môi cao cấp</h3>
                            <div class="product__price">
                                <div class="price__old">
                                    100.000 đ
                                </div>
                                <div class="price__new"> 70.000<span class="price__unit">đ</span></div>
                            </div>
                            <div class="product__sale">
                                <span class="product__sale-percent">23</span>
                                <span class="product__sale-text">Giảm</span>
                            </div>
                        </div>
                        <a href="product.html" class="viewDetail">Xem chi tiết</a>
                        <a href="cart.html" class="addToCart">Thêm vào giỏ</a>

                    </div>
                    <div class="product">
                        <div class="product__avt" style="background-image: url(./assets/img/product/product1.jpg);">
                        </div>
                        <div class="product__info">
                            <h3 class="product__name">Son môi cao cấp</h3>
                            <div class="product__price">
                                <div class="price__old">
                                    100.000 đ
                                </div>
                                <div class="price__new"> 70.000<span class="price__unit">đ</span></div>
                            </div>
                            <div class="product__sale">
                                <span class="product__sale-percent">23</span>
                                <span class="product__sale-text">Giảm</span>
                            </div>
                        </div>
                        <a href="product.html" class="viewDetail">Xem chi tiết</a>
                        <a href="cart.html" class="addToCart">Thêm vào giỏ</a>

                    </div>
                    <div class="product">
                        <div class="product__avt" style="background-image: url(./assets/img/product/product1.jpg);">
                        </div>
                        <div class="product__info">
                            <h3 class="product__name">Son môi cao cấp</h3>
                            <div class="product__price">
                                <div class="price__old">
                                    100.000 đ
                                </div>
                                <div class="price__new"> 70.000<span class="price__unit">đ</span></div>
                            </div>
                            <div class="product__sale">
                                <span class="product__sale-percent">23</span>
                                <span class="product__sale-text">Giảm</span>
                            </div>
                        </div>
                        <a href="product.html" class="viewDetail">Xem chi tiết</a>
                        <a href="cart.html" class="addToCart">Thêm vào giỏ</a>

                    </div>
                    <div class="product">
                        <div class="product__avt" style="background-image: url(./assets/img/product/product1.jpg);">
                        </div>
                        <div class="product__info">
                            <h3 class="product__name">Son môi cao cấp</h3>
                            <div class="product__price">
                                <div class="price__old">
                                    100.000 đ
                                </div>
                                <div class="price__new"> 70.000<span class="price__unit">đ</span></div>
                            </div>
                            <div class="product__sale">
                                <span class="product__sale-percent">23</span>
                                <span class="product__sale-text">Giảm</span>
                            </div>
                        </div>
                        <a href="product.html" class="viewDetail">Xem chi tiết</a>
                        <a href="cart.html" class="addToCart">Thêm vào giỏ</a>

                    </div>
                    <div class="product">
                        <div class="product__avt" style="background-image: url(./assets/img/product/product1.jpg);">
                        </div>
                        <div class="product__info">
                            <h3 class="product__name">Son môi cao cấp</h3>
                            <div class="product__price">
                                <div class="price__old">
                                    100.000 đ
                                </div>
                                <div class="price__new"> 70.000<span class="price__unit">đ</span></div>
                            </div>
                            <div class="product__sale">
                                <span class="product__sale-percent">23</span>
                                <span class="product__sale-text">Giảm</span>
                            </div>
                        </div>
                        <a href="product.html" class="viewDetail">Xem chi tiết</a>
                        <a href="cart.html" class="addToCart">Thêm vào giỏ</a>

                    </div>
                </div>
            </div>
        </div>
        <!-- Sales Policy -->
        <div class="main__policy">
            <div class="row">
                <div class="col l-3 m-6">
                    <div class="policy bg-1">
                        <img src="./assets/img/policy/policy1.png" class="policy__img"></img>
                        <div class="policy__info">
                            <h3 class="policy__title">GIAO HÀNG MIỄN PHÍ</h3>
                            <p class="policy__description">Cho đơn hàng từ 300K</p>
                        </div>
                    </div>
                </div>
                <div class="col l-3 m-6">
                    <div class="policy bg-2">
                        <img src="./assets/img/policy/policy2.png" class="policy__img"></img>
                        <div class="policy__info">
                            <h3 class="policy__title">ĐỔI TRẢ HÀNG</h3>
                            <p class="policy__description">Trong 3 ngày đầu tiên</p>
                        </div>
                    </div>
                </div>
                <div class="col l-3 m-6">
                    <div class="policy bg-1">
                        <img src="./assets/img/policy/policy3.png" class="policy__img"></img>
                        <div class="policy__info">
                            <h3 class="policy__title">HÀNG CHÍNH HÃNG</h3>
                            <p class="policy__description">Cam kết chất lượng</p>
                        </div>
                    </div>
                </div>
                <div class="col l-3 m-6">
                    <div class="policy bg-2">
                        <img src="./assets/img/policy/policy4.png" class="policy__img"></img>
                        <div class="policy__info">
                            <h3 class="policy__title">TƯ VẤN 24/24</h3>
                            <p class="policy__description">Giải đáp mọi thắc mắc</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- News -->
        <div class="main__frame bg-3">
            <div class="grid wide">
                <h3 class="category__title">Thanh Thảo Cometics</h3>
                <h3 class="category__heading">Tin Tức</h3>
                <div class="owl-carousel news owl-theme">
                    <a href="news.html" class="news">
                        <div class="news__img">
                            <img src="./assets/img/news/news1.jpg" alt="">
                        </div>
                        <div class="news__body">
                            <h3 class="news__body-title">Trang điểm đúng cách</h3>
                            <div class="new__body-date">13/6/2021</div>
                            <p class="news__description">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. In sit molestiae aperiam modi cum deserunt, maxime blanditiis voluptate officiis accusantium minima pariatur harum tenetur quo iste iusto commodi. Modi, culpa?
                            </p>
                        </div>
                    </a>
                    <a href="news.html" class="news">
                        <div class="news__img">
                            <img src="./assets/img/news/news1.jpg" alt="">
                        </div>
                        <div class="news__body">
                            <h3 class="news__body-title">Trang điểm đúng cách</h3>
                            <div class="new__body-date">13/6/2021</div>
                            <p class="news__description">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. In sit molestiae aperiam modi cum deserunt, maxime blanditiis voluptate officiis accusantium minima pariatur harum tenetur quo iste iusto commodi. Modi, culpa?
                            </p>
                        </div>
                    </a>
                    <a href="news.html" class="news">
                        <div class="news__img">
                            <img src="./assets/img/news/news1.jpg" alt="">
                        </div>
                        <div class="news__body">
                            <h3 class="news__body-title">Trang điểm đúng cách</h3>
                            <div class="new__body-date">13/6/2021</div>
                            <p class="news__description">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. In sit molestiae aperiam modi cum deserunt, maxime blanditiis voluptate officiis accusantium minima pariatur harum tenetur quo iste iusto commodi. Modi, culpa?
                            </p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="main__bands">
            <div class="grid wide">
                <div class="owl-carousel bands">
                    <a href="listProduct.html" class="band__item" style="background-image: url(./assets/img/band/band1.png)"></a>
                    <a href="listProduct.html" class="band__item" style="background-image: url(./assets/img/band/band2.png)"></a>
                    <a href="listProduct.html" class="band__item" style="background-image: url(./assets/img/band/band3.png)"></a>
                    <a href="listProduct.html" class="band__item" style="background-image: url(./assets/img/band/band4.png)"></a>
                    <a href="listProduct.html" class="band__item" style="background-image: url(./assets/img/band/band5.png)"></a>
                    <a href="listProduct.html" class="band__item" style="background-image: url(./assets/img/band/band6.png)"></a>
                    <a href="listProduct.html" class="band__item" style="background-image: url(./assets/img/band/band7.png)"></a>
                </div>
            </div>
        </div>

    </div>
    <div class="footer">
        <div class="grid wide">
            <div class="row">
                <div class="col l-3 m-6 s-12">
                    <h3 class="footer__title">Menu</h3>
                    <ul class="footer__list">
                        <li class="footer__item">
                            <a href="#" class="footer__link">Trang điểm</a>
                        </li>
                        <li class="footer__item">
                            <a href="#" class="footer__link">Chăm sóc da</a>
                        </li>
                        <li class="footer__item">
                            <a href="#" class="footer__link">Chăm sóc tóc</a>
                        </li>
                        <li class="footer__item">
                            <a href="#" class="footer__link">Mỹ Phẩm</a>
                        </li>
                        <li class="footer__item">
                            <a href="#" class="footer__link">Chăm sóc toàn thân </a>
                        </li>
                    </ul>
                </div>
                <div class="col l-3 m-6 s-12">
                    <h3 class="footer__title">Hỗ trợ khách hàng</h3>
                    <ul class="footer__list">
                        <li class="footer__item">
                            <a href="#" class="footer__link">Hướng dẫn mua hàng</a>
                        </li>
                        <li class="footer__item">
                            <a href="#" class="footer__link">Giải đáp thắc mắc</a>
                        </li>
                        <li class="footer__item">
                            <a href="#" class="footer__link">Chính sách mua hàng</a>
                        </li>
                        <li class="footer__item">
                            <a href="#" class="footer__link">Chính sách đổi trả</a>
                        </li>
                    </ul>
                </div>
                <div class="col l-3 m-6 s-12">
                    <h3 class="footer__title">Liên hệ</h3>
                    <ul class="footer__list">
                        <li class="footer__item">
                            <span class="footer__text">
                                    <i class="fas fa-map-marked-alt"></i> Pa Khóa, Sìn Hồ, Lai Châu
                                </span>
                        </li>
                        <li class="footer__item">
                            <a href="#" class="footer__link">
                                <i class="fas fa-phone"></i> 0387 974 042
                            </a>
                        </li>
                        <li class="footer__item">
                            <a href="#" class="footer__link">
                                <i class="fas fa-envelope"></i> hoangthithanhthao31082001@gmail.com
                            </a>
                        </li>
                        <li class="footer__item">
                            <div class="social-group">
                                <a href="#" class="social-item"><i class="fab fa-facebook-f"></i>
                                    </a>
                                <a href="#" class="social-item"><i class="fab fa-twitter"></i>
                                    </a>
                                <a href="#" class="social-item"><i class="fab fa-pinterest-p"></i>
                                    </a>
                                <a href="#" class="social-item"><i class="fab fa-invision"></i>
                                    </a>
                                <a href="#" class="social-item"><i class="fab fa-youtube"></i>  
                                    </a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col l-3 m-6 s-12">
                    <h3 class="footer__title">Đăng kí</h3>
                    <ul class="footer__list">
                        <li class="footer__item">
                            <span class="footer__text">Đăng ký để nhận được được thông tin ưu đãi mới nhất từ chúng tôi.</span>
                        </li>
                        <li class="footer__item">
                            <div class="send-email">
                                <input class="send-email__input" type="email" placeholder="Nhập Email...">
                                <a href="#" class="send-email__link">
                                    <i class="fas fa-paper-plane"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="copyright">
            <span class="footer__text"> &copy Bản quyền thuộc về <a class="footer__link" href="#"> Thanh Thảo</a></span>
        </div>
    </div>
    <!-- Modal Form -->
    <div class="ModalForm">
        <div class="modal" id="my-Register">
            <a href="#" class="overlay-close"></a>
            <div class="authen-modal register">
                <h3 class="authen-modal__title">Đăng Kí</h3>
                <div class="form-group">
                    <label for="account" class="form-label">Họ Tên</label>
                    <input id="account" name="account" type="text" class="form-control">
                    <span class="form-message">Không hợp lệ !</span>
                </div>
                <div class="form-group">
                    <label for="password" class="form-label">Tài khoản Email *</label>
                    <input id="password" name="password" type="text" class="form-control">
                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <label for="password" class="form-label">Mật khẩu *</label>
                    <input id="password" name="password" type="text" class="form-control">
                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <label for="password" class="form-label">Nhập lại mật khẩu *</label>
                    <input id="password" name="password" type="text" class="form-control">
                    <span class="form-message"></span>
                </div>
                <div class="authen__btns">
                    <div class="btn btn--default">Đăng Kí</div>
                </div>
            </div>
        </div>
        <div class=" modal" id="my-Login">
            <form method="post" action="Login">
            <a href="#" class="overlay-close"></a>
            <div class="authen-modal login">
                <h3 class="authen-modal__title">Đăng Nhập</h3>
                <div class="form-group">
                    <label for="username" class="form-label">Địa chỉ email *</label>
                    <input id="account" name="username" type="text" class="form-control">
                    <span class="form-message">Tài khoản không chính xác !</span>
                </div>
                <div class="form-group">
                    <label for="password" class="form-label">Mật khẩu *</label>
                    <input id="password" name="password" type="text" class="form-control">
                    <span class="form-message"></span>
                </div>
                <div class="authen__btns">
                    <div class="btn btn--default">Đăng Nhập</div>
                    <input type="checkbox" class="authen-checkbox">
                    </form>
                    <label class="form-label">Ghi nhớ mật khẩu</label>
                </div>
                <a class="authen__link">Quên mật khẩu ?</a>
            </div>
        </div>
        <div class="up-top" id="upTop" onclick="goToTop()">
            <i class="fas fa-chevron-up"></i>
        </div>
        

    </div>
    <script>
        $('.owl-carousel.hight').owlCarousel({
            loop: true,
            margin: 20,
            nav: true,
            dots: false,
            autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 2
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 5
                }
            }
        })
        $('.owl-carousel.news').owlCarousel({
            loop: true,
            margin: 20,
            nav: true,
            dots: false,
            autoplay: true,
            autoplayTimeout: 4000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 1
                },
                1000: {
                    items: 2
                }
            }
        })
        $('.owl-carousel.bands').owlCarousel({
            loop: true,
            margin: 20,
            nav: false,
            dots: false,
            autoplay: true,
            autoplayTimeout: 2000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 2
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 6
                }
            }
        })
    </script>
    <!-- Script common -->
    <script src="./assets/js/homeScript.js"></script>
    <script src="./assets/js/commonscript.js"></script>
</body>

</html>