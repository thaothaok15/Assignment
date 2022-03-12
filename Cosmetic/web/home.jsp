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
        <div>
            <jsp:include page="header.jsp"/>
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

        <div>
            <jsp:include page="footer.jsp"/>
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