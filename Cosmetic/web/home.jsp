<%-- 
    Document   : index
    Created on : Mar 2, 2022, 10:47:09 PM
    Author     : Thanh Thao
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


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
                                            <a href="product.html" class="order-main-name">Áo sơ mi  caro kèm belt caro kèm belt Áo sơ mi caro kèm belt</a>
                                            <div class="order-main-price">2 x 45,000 ₫</div>
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
                                </li>-->
                            </ul>
                            <div class="total-money">Tổng cộng: 120.000đ</div>
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
                            <a href="#my-Login" class="sub-nav__link">Đăng Nhập</a>
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
                                <c:forEach items="${listP}" var="o">
                                    <div class="col l-2 m-4 s-6">
                                        <div class="product">
                                            <div class="product__avt" style="padding: 0px"><img style="width: 100%; height: auto" src="${o.imageLink}"></div>
                                             
                                            <div class="product__info">
                                                <h3 href="detail?productID=${o.productID}" class="product__name">${o.productName}</h3>
                                                <div class="product__price">
                                                    <div class="price__old">
                                                        300.000 đ
                                                    </div>
                                                    <div class="price__new">${o.price} <span class="price__unit">đ</span></div>
                                                    <!--<input type="text" id="quantity" name="num" class="form-control input-number" value="1"  >-->
                                                </div>
                                                <div class="product__sale">
                                                    <span class="product__sale-percent">24%%</span>
                                                    <span class="product__sale-text">Giảm</span>
                                                </div>
                                            </div>
                                            <a href="detail?productID=${o.productID}" class="viewDetail">Xem chi tiết</a>
                                            <a href="cart?productID=${o.productID}" class="addToCart">Thêm vào giỏ</a>
                                        </div>
                                    </div>
                                </c:forEach>
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
                         <c:forEach items="${listP}" var="o">
                        <div class="product">
                            <div class="product__avt"  style="padding: 0px"><img style="width: 100%; height: auto" src="${o.imageLink}">
                            </div>
                            <div class="product__info">
                                <h3 class="product__name">${o.productName}</h3>
                                <div class="product__price">
                                    <div class="price__old">
                                        100.000 đ
                                    </div>
                                    <div class="price__new"> ${o.price}<span class="price__unit">đ</span></div>
                                </div>
                                <div class="product__sale">
                                    <span class="product__sale-percent">23</span>
                                    <span class="product__sale-text">Giảm</span>
                                </div>
                            </div>
                            <a href="detail?productID=${o.productID}" class="viewDetail">Xem chi tiết</a>
                            <a href="cart?productID=${o.productID}" class="addToCart">Thêm vào giỏ</a>
                        </div>
                         </c:forEach>
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
                        <a href="news.jsp" class="news">
                            <div class="news__img">
                                <img src="./assets/img/infor/mỹ phẩm 1.jpg" alt="">
                            </div>
                            <div class="news__body">
                                <h3 class="news__body-title">Những Item makeup nhà Etude House giá hạt dẻ, chất miễn đùa</h3>
                                <div class="new__body-date">12/03/2022</div>
                                <p class="news__description">
                                    Những Item makeup nhà Etude House giá hạt dẻ, chất miễn đùa Không phải là những item makeup mới. Thậm chí nếu không nói là lâu đời. Nhưng ở thời điểm hiện tại, chúng vẫn không lỗi thời. Rất lì lợm. Bao nhiêu dòng makeup mới ra
                            vẫn không làm chúng ngao ngán. Và tất nhiên, nàng nào muốn Những Item makeup nhà Etude House giá hạt dẻ, chất miễn đùa Không phải là những item makeup mới. Thậm chí nếu không nói là lâu đời. Nhưng ở thời điểm hiện tại, chúng
                            vẫn không lỗi thời. Rất lì lợm. Bao nhiêu dòng makeup mới ra vẫn không làm chúng ngao ngán. Và tất nhiên, nàng nào muốn Những Item makeup nhà Etude House giá hạt dẻ, chất miễn đùa Không phải là những item makeup mới. Thậm chí
                            nếu không nói là lâu đời. Nhưng ở thời điểm hiện tại, chúng vẫn không lỗi thời. Rất lì lợm. Bao nhiêu dòng makeup mới ra vẫn không làm chúng ngao ngán. Và tất nhiên, nàng nào muốn Những Item makeup nhà Etude House giá hạt dẻ,
                            chất miễn đùa Không phải là những item makeup mới. Thậm chí nếu không nói là lâu đời. Nhưng ở thời điểm hiện tại, chúng vẫn không lỗi thời. Rất lì lợm. Bao nhiêu dòng makeup mới ra vẫn không làm chúng ngao ngán. Và tất nhiên,
                            nàng nào muốn đep chuẩn mực thì mời vào team.Không khác biệt nhiều so với các dòng makeup Hàn Quốc khác.
                                </p>
                            </div>
                        </a>
                        <a href="news.jsp" class="news">
                            <div class="news__img">
                                <img src="./assets/img/infor/trang điểm.jpg" alt="">
                            </div>
                            <div class="news__body">
                                <h3 class="news__body-title">Cách trang điểm với lớp nền sáng bóng</h3>
                                <div class="new__body-date">12/03/2022</div>
                                <p class="news__description">
                                    Bước 1:Sử dụng kem lót <br>
                            Để có một lớp nền căng bóng thì không thể thiếu đến kem lót . bạn nên sử dụng kem lót có ánh nhủ như Mac, 3ce…. Vừa có độ nhũ mà còn mỏng mịn.Cách làm rất đơn giản bạn chấm ít kem lót tại các vị trí trên khuôn mặt, dùng cọ hoặc tay tán nhẹ  lên toàn bộ khuôn mặt là xong.<br>
                            Bước 2:Kem nền <br>
                            Kem nền là bước không thể thiếu trong cách trang điểm nhẹ nhàng dễ thương. Cách làm cũng giống như kem lót, bạn tán đều và mỏng lớp kem nền lên mặt bằng cọ hoặc bằng bông mút trang điểm.
                            Lưu ý : Đừng nên sử dụng kem nền quá nhiều vì như thế nhìn da mặt sẽ bị năngj và cứng đơ trông rất không tự nhiên.<br>
                            Bước 3:Phấn phủ<br>
                            Để khóa lớp nền thì ta nên phủ môt lớp phấn nhẹ, có thể sử dụng phấn nén hoặc phấn bột, dặm nhẹ và đều tay để lớp nền không bị vón cục nhé.
                            Theo như các chuyên gia cho biết thì gam màu trung tính sẽ giúp làn da tự nhiên hơn. Tuy nhiên nếu da bạn hơi tái thì phấn nền màu hoa cà
                            chính là sự lựa chọn đúng đắn nhất.
                                </p>
                            </div>
                        </a>
                        <a href="news.jsp" class="news">
                            <div class="news__img">
                                <img src="./assets/img/infor/kẻ mắt.jpg" alt="">
                            </div>
                            <div class="news__body">
                                <h3 class="news__body-title"> Kỹ thuật kẻ mắt bằng eyeliner</h3>
                                <div class="new__body-date">12/03/2022</div>
                                <p class="news__description">
                                    Trên thực tế kỹ thuật kẻ eyeliner vô hình nghĩa là kẻ viền mắt phía trong của mí. Đây là cách trang điểm được xuất hiện từ khá lâu tuy nhiên cho đến khi các sao Hàn đồng loạt lựa chọn thì nó mới trở thành xu thế.<br>
                            Việc kẻ eyeliner vô hình sẽ phần nào đó tạo được điểm nhấn và mang đến sự sắc nét cho đôi mắt. Bên cạnh đó đây cũng là phương pháp trang điểm dành cho những cô nàng ưa thích việc kẻ eyeliner nhưng lại sợ sự dữ dằn của kiểu kẻ mắt mèo<br>
                        “Mẹo” cho bạn đó là hãy vẽ eyeliner màu nâu nhé, vừa không sợ đậm mà còn đem lại hiểu quả tốt cho kiểu makeup nhẹ nhàng.
                                </p>
                            </div>
                        </a>
                        <a href="news.jsp" class="news">
                            <div class="news__img">
                                <img src="./assets/img/infor/kẻ mắt.jpg" alt="">
                            </div>
                            <div class="news__body">
                                <h3 class="news__body-title"> Kỹ thuật kẻ mắt bằng eyeliner</h3>
                                <div class="new__body-date">12/03/2022</div>
                                <p class="news__description">
                                    Trên thực tế kỹ thuật kẻ eyeliner vô hình nghĩa là kẻ viền mắt phía trong của mí. Đây là cách trang điểm được xuất hiện từ khá lâu tuy nhiên cho đến khi các sao Hàn đồng loạt lựa chọn thì nó mới trở thành xu thế.<br>
                            Việc kẻ eyeliner vô hình sẽ phần nào đó tạo được điểm nhấn và mang đến sự sắc nét cho đôi mắt. Bên cạnh đó đây cũng là phương pháp trang điểm dành cho những cô nàng ưa thích việc kẻ eyeliner nhưng lại sợ sự dữ dằn của kiểu kẻ mắt mèo<br>
                        “Mẹo” cho bạn đó là hãy vẽ eyeliner màu nâu nhé, vừa không sợ đậm mà còn đem lại hiểu quả tốt cho kiểu makeup nhẹ nhàng.
                                </p>
                            </div>
                        </a>
                        <a href="news.jsp" class="news">
                            <div class="news__img">
                                <img src="./assets/img/infor/kẻ mắt.jpg" alt="">
                            </div>
                            <div class="news__body">
                                <h3 class="news__body-title"> Kỹ thuật kẻ mắt bằng eyeliner</h3>
                                <div class="new__body-date">12/03/2022</div>
                                <p class="news__description">
                                    Trên thực tế kỹ thuật kẻ eyeliner vô hình nghĩa là kẻ viền mắt phía trong của mí. Đây là cách trang điểm được xuất hiện từ khá lâu tuy nhiên cho đến khi các sao Hàn đồng loạt lựa chọn thì nó mới trở thành xu thế.<br>
                            Việc kẻ eyeliner vô hình sẽ phần nào đó tạo được điểm nhấn và mang đến sự sắc nét cho đôi mắt. Bên cạnh đó đây cũng là phương pháp trang điểm dành cho những cô nàng ưa thích việc kẻ eyeliner nhưng lại sợ sự dữ dằn của kiểu kẻ mắt mèo<br>
                        “Mẹo” cho bạn đó là hãy vẽ eyeliner màu nâu nhé, vừa không sợ đậm mà còn đem lại hiểu quả tốt cho kiểu makeup nhẹ nhàng.
                                </p>
                            </div>
                        </a>
                        <a href="news.jsp" class="news">
                            <div class="news__img">
                                <img src="./assets/img/infor/kẻ mắt.jpg" alt="">
                            </div>
                            <div class="news__body">
                                <h3 class="news__body-title"> Kỹ thuật kẻ mắt bằng eyeliner</h3>
                                <div class="new__body-date">12/03/2022</div>
                                <p class="news__description">
                                    Trên thực tế kỹ thuật kẻ eyeliner vô hình nghĩa là kẻ viền mắt phía trong của mí. Đây là cách trang điểm được xuất hiện từ khá lâu tuy nhiên cho đến khi các sao Hàn đồng loạt lựa chọn thì nó mới trở thành xu thế.<br>
                            Việc kẻ eyeliner vô hình sẽ phần nào đó tạo được điểm nhấn và mang đến sự sắc nét cho đôi mắt. Bên cạnh đó đây cũng là phương pháp trang điểm dành cho những cô nàng ưa thích việc kẻ eyeliner nhưng lại sợ sự dữ dằn của kiểu kẻ mắt mèo<br>
                        “Mẹo” cho bạn đó là hãy vẽ eyeliner màu nâu nhé, vừa không sợ đậm mà còn đem lại hiểu quả tốt cho kiểu makeup nhẹ nhàng.
                                </p>
                            </div>
                        </a>
                        <a href="news.jsp" class="news">
                            <div class="news__img">
                                <img src="./assets/img/infor/kẻ mắt.jpg" alt="">
                            </div>
                            <div class="news__body">
                                <h3 class="news__body-title"> Kỹ thuật kẻ mắt bằng eyeliner</h3>
                                <div class="new__body-date">12/03/2022</div>
                                <p class="news__description">
                                    Trên thực tế kỹ thuật kẻ eyeliner vô hình nghĩa là kẻ viền mắt phía trong của mí. Đây là cách trang điểm được xuất hiện từ khá lâu tuy nhiên cho đến khi các sao Hàn đồng loạt lựa chọn thì nó mới trở thành xu thế.<br>
                            Việc kẻ eyeliner vô hình sẽ phần nào đó tạo được điểm nhấn và mang đến sự sắc nét cho đôi mắt. Bên cạnh đó đây cũng là phương pháp trang điểm dành cho những cô nàng ưa thích việc kẻ eyeliner nhưng lại sợ sự dữ dằn của kiểu kẻ mắt mèo<br>
                        “Mẹo” cho bạn đó là hãy vẽ eyeliner màu nâu nhé, vừa không sợ đậm mà còn đem lại hiểu quả tốt cho kiểu makeup nhẹ nhàng.
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
                                <a href="news.jsp" class="footer__link">Trang điểm</a>
                            </li>
                            <li class="footer__item">
                                <a href="news.jsp" class="footer__link">Chăm sóc da</a>
                            </li>
                            <li class="footer__item">
                                <a href="news.jsp" class="footer__link">Chăm sóc tóc</a>
                            </li>
                            <li class="footer__item">
                                <a href="news.jsp" class="footer__link">Mỹ Phẩm</a>
                            </li>
                            <li class="footer__item">
                                <a href="news.jsp" class="footer__link">Chăm sóc toàn thân </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col l-3 m-6 s-12">
                        <h3 class="footer__title">Hỗ trợ khách hàng</h3>
                        <ul class="footer__list">
                            <li class="footer__item">
                                <a href="introduction.jsp" class="footer__link">Hướng dẫn mua hàng</a>
                            </li>
                            <li class="footer__item">
                                <a href="introduction.jsp" class="footer__link">Giải đáp thắc mắc</a>
                            </li>
                            <li class="footer__item">
                                <a href="introduction.jsp" class="footer__link">Chính sách mua hàng</a>
                            </li>
                            <li class="footer__item">
                                <a href="introduction.jsp" class="footer__link">Chính sách đổi trả</a>
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
                                    <a href="#" class="social-item"><i class="fab fa-instagram"></i>
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