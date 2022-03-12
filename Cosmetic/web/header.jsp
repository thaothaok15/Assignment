<%-- 
    Document   : header
    Created on : Mar 12, 2022, 4:23:41 PM
    Author     : Thanh Thao
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <form action="search" methot="post" class="search infor">
                        <div class="header__search-wrap">
                            <input value="${txtS}" name="txt" type="text" class="header__search-input" placeholder="Tìm kiếm">
                            <button type="submit" class="header__search-icon" href="#">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                             </form>
                    </div>
                        <!--</form>-->
                    <div class="header__account">
                        <c:if test="${sessionScope.acc != null}">
                             <li class="sub-nav__item">
                        <a href="#" class="header__nav-link">${sessionScope.acc.userName}</a>
                            </li>
                             <li>
                        <a href="logout" class="header__account-login">Đăng Xuất</a>
                        </li>
                        </c:if>
                        <c:if test="${sessionScope.acc == null}">
                            <li>
                        <a href="Login.jsp" class="header__account-login">Đăng Nhập</a>
                        </li>

                          
                        <li>
                        <a href="Signup.jsp" class="header__account-register">Đăng Kí</a>
                        </li>
                         </c:if>
                        
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
                                            <a href="product.html" class="order-main-name">Áo sơ mi</a>
                                            <div class="order-main-price">2 x 45,000 ?</div>
                                        </div>
                                        <a href="product.html" class="order-close"><i class="far fa-times-circle"></i></a>
                                    </div>
                                </li>
<!--                                <li class="item-order">
                                    <div class="order-wrap">
                                        <a href="product.html" class="order-img">
                                            <img src="./assets/img/product/product1.jpg" alt="">
                                        </a>
                                        <div class="order-main">
                                            <a href="product.html" class="order-main-name">Áo s? mi  caro kèm belt caro kèm belt Áo s? mi caro kèm belt</a>
                                            <div class="order-main-price">2 x 45,000 ?</div>
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
                                            <a href="product.html" class="order-main-name">Áo s? mi  caro kèm belt caro kèm belt Áo s? mi caro kèm belt</a>
                                            <div class="order-main-price">2 x 45,000 ?</div>
                                        </div>
                                        <a href="product.html" class="order-close"><i class="far fa-times-circle"></i></a>
                                    </div>
                                </li>-->
                            </ul>
                            <div class="total-money">Tổng cộng: 120.000?</div>
                            <a href="cart" class="btn btn--default cart-btn">Xem giỏ hàng</a>
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
                            <a href="#my-Login" class="sub-nav__link">Đăng Nhâp</a>
                        </li>
                        <li class="sub-nav__item">
                            <a href="#my-Register" class="sub-nav__link">Đăng Kí</a>
                        </li>
                    </ul>
                </li>
                <li class="header__nav-item index">
                    <a href="home" class="header__nav-link">Trang chủ</a>
                </li>
                <li class="header__nav-item">
                    <a href="introduction.jsp" class="header__nav-link">Giới Thiệu</a>
                </li>
                <li class="header__nav-item">
                    <a href="#" class="header__nav-link">Sản Phẩm</a>
                    <div class="sub-nav-wrap grid wide">
                        <c:forEach items="${listC}" var="o">
                        <ul class="sub-nav">
                            <li class="sub-nav__item">
                                <a href="category?categoryID=${o.categoryID}" class="sub-nav__link heading ${tag == o.categoryID ? "active":""}">${o.categoryName}</a>
                            </li> 
                        </ul>
                        </c:forEach>

                    </div>
                </li>
                <li class="header__nav-item">
                    <a href="news.jsp" class="header__nav-link">Tin Tức</a>
                </li>
                <li class="header__nav-item">
                    <a href="contact.jsp" class="header__nav-link">Liên Hệ</a>
                </li>
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                <li class="header__nav-item">
                    <a href="manager" class="header__nav-link">Quản lí sản phẩm</a>
                </li>
                <li class="header__nav-item">
                    <a href="contact.html" class="header__nav-link">Quản lí tài khoản</a>
                </li>
                </c:if>
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
                                <p>Giảm giá cực sốc trong tháng 3!</p>
                                <a href="listProduct.html" class="btn btn--default">Xem ngay</a>

                            </div>
                        </div>
                    </div>
                    <div class="slide active" style="background-image:url(./assets/img/slider/slide-4.jpg)">
                        <div class="container">
                            <div class="caption">
                                <h1>Giảm giá 30%</h1>
                                <p>Giảm giá cực sốc trong tháng 3!</p>
                                <a href="listProduct.html" class="btn btn--default">Xem ngay</a>

                            </div>
                        </div>
                    </div>
                    <div class="slide active" style="background-image:url(./assets/img/slider/slide-5.jpg)">
                        <div class="container">
                            <div class="caption">
                                <h1>Giảm giá 30%</h1>
                                <p>Giảm giá cực sốc trong tháng 3!</p>
                                <a href="listProduct.html" class="btn btn--default">Xem ngay</a>

                            </div>
                        </div>
                    </div>
                </div>
