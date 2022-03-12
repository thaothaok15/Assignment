<%-- 
    Document   : news
    Created on : Mar 2, 2022, 10:47:44 PM
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
    <title>Tin Tức</title>
    <!-- Font roboto -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <!-- Icon fontanwesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <!-- Reset css & grid sytem -->
    <link rel="stylesheet" href="./assets/css/library.css">
    <!-- Owl Slider css -->
    <link rel="stylesheet" href="assets/owlCarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/owlCarousel/assets/owl.theme.default.min.css">
    <!-- Layout -->
    <link rel="stylesheet" href="./assets/css/common.css">
    <!-- index -->
    <link rel="stylesheet" type="text/css" href="./assets/css/new.css">
    <!-- Jquery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Owl caroucel Js-->
    <script src="assets/owlCarousel/owl.carousel.min.js"></script>
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
            </ul>
        </div>
    </div>
    <div class="main">
        <div class="grid wide">
            <div class="main__taskbar">
                <div class="main__breadcrumb">
                    <div class="breadcrumb__item">
                        <a href="#" class="breadcrumb__link">Trang chủ</a>
                    </div>
                    <div class="breadcrumb__item">
                        <a href="#" class="breadcrumb__link">Danh sách tin tức</a>
                    </div>
                </div>
            </div>
            <div class="list-new">
                <div href="#" class="new-item">
                    <a href="#" class="new-item__img">
                        <img src="./assets/img/infor/mỹ phẩm 1.jpg" alt="">
                    </a>
                    <div class="new-item__body">
                        <a href="#" class="new-item__title">
                            
                            Những Item makeup nhà Etude House giá hạt dẻ, chất miễn đùa
                       </a>
                        <p class="new-item__time"> Ngày đăng: 12/3/2022</p>
                        <p class="new-item__description">Những Item makeup nhà Etude House giá hạt dẻ, chất miễn đùa Không phải là những item makeup mới. Thậm chí nếu không nói là lâu đời. Nhưng ở thời điểm hiện tại, chúng vẫn không lỗi thời. Rất lì lợm. Bao nhiêu dòng makeup mới ra
                            vẫn không làm chúng ngao ngán. Và tất nhiên, nàng nào muốn Những Item makeup nhà Etude House giá hạt dẻ, chất miễn đùa Không phải là những item makeup mới. Thậm chí nếu không nói là lâu đời. Nhưng ở thời điểm hiện tại, chúng
                            vẫn không lỗi thời. Rất lì lợm. Bao nhiêu dòng makeup mới ra vẫn không làm chúng ngao ngán. Và tất nhiên, nàng nào muốn Những Item makeup nhà Etude House giá hạt dẻ, chất miễn đùa Không phải là những item makeup mới. Thậm chí
                            nếu không nói là lâu đời. Nhưng ở thời điểm hiện tại, chúng vẫn không lỗi thời. Rất lì lợm. Bao nhiêu dòng makeup mới ra vẫn không làm chúng ngao ngán. Và tất nhiên, nàng nào muốn Những Item makeup nhà Etude House giá hạt dẻ,
                            chất miễn đùa Không phải là những item makeup mới. Thậm chí nếu không nói là lâu đời. Nhưng ở thời điểm hiện tại, chúng vẫn không lỗi thời. Rất lì lợm. Bao nhiêu dòng makeup mới ra vẫn không làm chúng ngao ngán. Và tất nhiên,
                            nàng nào muốn đep chuẩn mực thì mời vào team.Không khác biệt nhiều so với các dòng makeup Hàn Quốc khác</p>
                        <a href="#" class="btn btn--default">Xem thêm</a>
                    </div>
                </div>
                <div href="#" class="new-item">
                    <a href="#" class="new-item__img">
                        <img src="./assets/img/infor/trang điểm.jpg" alt="">
                    </a>
                    <div class="new-item__body">
                        <a href="#" class="new-item__title">
                            Cách trang điểm với lớp nền sáng bóng
                       </a>
                        <p class="new-item__time"> Ngày đăng: 12/03/2022</p>
                        <p class="new-item__description">
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
                        <a href="#" class="btn btn--default">Xem thêm</a>
                    </div>
                </div>
                <div href="#" class="new-item">
                    <a href="#" class="new-item__img">
                        <img src="./assets/img/infor/kẻ mắt.jpg" alt="">
                    </a>
                    <div class="new-item__body">
                        <a href="#" class="new-item__title">
                            Kỹ thuật kẻ mắt bằng eyeliner
                       </a>
                        <p class="new-item__time"> Ngày đăng: 12/03/2022</p>
                        <p class="new-item__description">
                            Trên thực tế kỹ thuật kẻ eyeliner vô hình nghĩa là kẻ viền mắt phía trong của mí. Đây là cách trang điểm được xuất hiện từ khá lâu tuy nhiên cho đến khi các sao Hàn đồng loạt lựa chọn thì nó mới trở thành xu thế.<br>
                            Việc kẻ eyeliner vô hình sẽ phần nào đó tạo được điểm nhấn và mang đến sự sắc nét cho đôi mắt. Bên cạnh đó đây cũng là phương pháp trang điểm dành cho những cô nàng ưa thích việc kẻ eyeliner nhưng lại sợ sự dữ dằn của kiểu kẻ mắt mèo<br>
                        “Mẹo” cho bạn đó là hãy vẽ eyeliner màu nâu nhé, vừa không sợ đậm mà còn đem lại hiểu quả tốt cho kiểu makeup nhẹ nhàng.
                        </p>
                        <a href="#" class="btn btn--default">Xem thêm</a>
                    </div>
                </div>
                <div href="#" class="new-item">
                    <a href="#" class="new-item__img">
                        <img src="./assets/img/infor/skincare.jpg" alt="">
                    </a>
                    <div class="new-item__body">
                        <a href="#" class="new-item__title">
                           Các bước chăm sóc da ban ngày đơn giản tại nhà
                       </a>
                        <p class="new-item__time"> Ngày đăng: 12/03/2022</p>
                        <p class="new-item__description">
                            Bước 1:Rửa mặt<br>
                            Bắt đầu chăm sóc đầu ngày của bạn bằng cách làm sạch da mặt bằng sữa rửa mặt dịu nhẹ mà bạn chọn. Bước này giúp đánh thức làn da của bạn và loại bỏ dầu và mỹ phẩm tích tụ trên mặt. <br>  
                        Bước 2:Sử dụng toner<br>
                        Sau khi làm sạch da mặt, lấy một vài giọt toner vào miếng bông tẩy trang và chấm nhẹ lên khắp mặt và cổ. Toner giúp duy trì sự cân bằng độ pH của da và giúp bạn giữ được vẻ ngoài tươi tắn.<br>
                        Bước 3:Thoa kem dưỡng ẩm<br>
                        Kem dưỡng ẩm giúp giữ ẩm cho làn da của bạn, da trở nên mềm mại và mịn màng, nhờ đó tạo ra một lớp nền đẹp để bạn trang điểm và các sản phẩm khác. Sau khi làm sạch hoặc tẩy tế bào chết, da của bạn có thể cảm thấy hơi khô.<br> Đối với mùa hè, bạn có thể sử dụng công thức dạng gel, và vào mùa đông, hãy chuyển sang loại kem dưỡng ẩm có chất dày hơn.<br>
                        Bước 4:Bôi kem chống nắng<br>
                        Kem dưỡng da chống nắng tạo ra một hàng rào bảo vệ chống lại các tia UV có hại và ngăn ngừa lão hóa sớm, đốm đen, nếp nhăn và các vấn đề về da khác.<br> Khi bạn ở ngoài nắng trong nhiều giờ, đừng quên thoa lại kem chống nắng sau mỗi vài giờ để có kết quả tốt nhất.
                        </p>
                        <a href="#" class="btn btn--default">Xem thêm</a>
                    </div>
                </div>
                <div href="#" class="new-item">
                    <a href="#" class="new-item__img">
                        <img src="./assets/img/infor/chăm sóc tóc.jpg" alt="">
                    </a>
                    <div class="new-item__body">
                        <a href="#" class="new-item__title">
                           Bật mí 7 cách chăm sóc đơn giản hiệu quả tại nhà chuẩn Salon
                       </a>
                        <p class="new-item__time"> Ngày đăng: 12/03/2022</p>
                        <p class="new-item__description">
                            1. Tẩy tế bào chết cho da đầu<br>
                          2. Gội đầu sạch sẽ<br>
                          3. Thoa dầu xả dưỡng ẩm cho tóc<br>
                          4. Cung cấp thêm dưỡng chất chăm sóc tóc<br>
                          5. Để tóc khô tự nhiên<br>
                          6. Bổ sung tinh chất chuyên sâu<br>
                          7. Cung cấp đầy đủ dinh dưỡng cho tóc
                        </p>
                        <a href="#" class="btn btn--default">Xem thêm</a>
                    </div>
                </div>
                     <div href="#" class="new-item">
                    <a href="#" class="new-item__img">
                        <img src="./assets/img/infor/mỹ phẩm.jpg" alt="">
                    </a>
                    <div class="new-item__body">
                        <a href="#" class="new-item__title">
                           Cách chọn mỹ phẩm nhà BeautyMona phù hợp với da
                       </a>
                        <p class="new-item__time"> Ngày đăng: 12/03/2022</p>
                        <p class="new-item__description">
                            1. Lựa chọn mỹ phẩm phù hợp cho da khô <br>
                            Đây là loại da có khả năng dưỡng ẩm kém; da dễ bị nứt nẻ; lỗ chân lông nhỏ và xuất hiện nhiều nếp nhăn. Thế nên, các bạn nên lựa chọn các sản phẩm có chiết xuất từ các loại vitamin E; Vitamin A; tinh chất làm mềm và dưỡng da giúp cân bằng độ ẩm. <br>
                            2. Lựa chọn mỹ phẩm phù hợp cho da dầu <br>
                            Da dầu là loại da có tuyến bã nhờn tiết ra rất nhiều khiến da lúc nào cũng bóng nhờn và nhất là vào màu hè nắng nóng. Vì vậy,cần bổ sung đầy đủ nước cho làn da để giúp hạn chế việc tiết dầu. <br>
                            3 Lựa chọn mỹ phẩm phù hợp cho da hỗn hợp <br>
                            Da hỗn hợp là loại da có sự kết hợp giữa da khô và da dầu. Thường trên vùng chữ T sẽ xuất hiện nhiều dầu. Còn hai bên má là vùng da khô. Với loại da hỗn hợp thì nên chọn các loại có tác dụng dưỡng ẩm dịu nhẹ. Chứa cá loại hydro axit như AHA, BHA.<br>
                            4 Lựa chọn mỹ phẩm phù hợp với da nhạy cảm <br>
                            Với loại da này thì nó có điểm nổi bật là mềm mịn; lỗ chân lông nhỏ; ít mụn và ít nếp nhăn. Tuy nhiên, muốn da khỏe khoắn và sáng mịn thì bạn cần có 1 chế độ ăn uống hợp lý<br>
                            
                        </p>
                        <a href="#" class="btn btn--default">Xem thêm</a>
                    </div>
                </div>
                              <div href="#" class="new-item">
                    <a href="#" class="new-item__img">
                        <img src="./assets/img/infor/chăm sóc body.jpg" alt="">
                    </a>
                    <div class="new-item__body">
                        <a href="#" class="new-item__title">
                           Cách chăm sóc body bật tông dưỡng trắng tại nhà 
                       </a>
                        <p class="new-item__time"> Ngày đăng: 12/03/2022</p>
                        <p class="new-item__description">
                            Bước 1: Làm sạch da<br>
                            Nên tắm bằng nước ấm 28 – 30 độ C, đây là nhiệt độ thích hợp để giúp tăng cường lưu thông máu, đồng thời làm giãn nở lỗ chân lông để dễ dàng loại bỏ bụi bẩn, dầu nhờn bám trên da.<br>
                            Chọn loại sữa tắm phù hợp với tính chất làn da. Da dầu không nên chọn sữa tắm có chứa thành phần dưỡng ẩm cao để tránh gây bết dính. Da khô không nên chọn loại có tính tẩy rửa mạnh vì khiến da khô và dễ bong tróc hơn.<br>
                            Không chà xát, kỳ cọ quá mạnh có thể gây tổn thương cho lớp biểu bì da, khiến da khô ráp hơn. Thay vào đó, nên massage nhẹ nhàng toàn cơ thể trong lúc tắm để thư giãn da và lưu thông máu tốt hơn.<br>
                            Bước 2: Tẩy tế bào chết<br>
                            Cũng như da mặt, các lớp da chết body lâu ngày không được làm sạch sẽ chất chồng lên nhau, khiến da sần sùi, xỉn màu. Đây cũng là nguyên nhân gây bít tắc lỗ chân lông khiến hình thành mụn, nhất là ở các vùng da như lưng, ngực.<br>
                            Vì vậy, ngoài việc làm sạch da bằng sữa tắm hằng ngày, thì chị em cần tẩy tế bào chết 1 – 2 lần/tuần để da thông thoáng, mịn màng và sáng khỏe hơn, đồng thời tăng cường hiệu quả hấp thụ dưỡng chất ở các bước dưỡng da tiếp theo.<br>
                            Bước 3: Sử dụng kem dưỡng thể<br>
                            Sau các bước làm sạch thì đây là thời điểm lý tưởng để dưỡng da, giúp da dễ dàng hấp thụ các dưỡng chất từ các sản phẩm dưỡng thể. Kem dưỡng sẽ giúp da body được cấp ẩm đầy đủ, mềm mịn và trắng sáng hơn.<br>
                            Nên ưu tiên chọn các sản phẩm có thành phần tự nhiên, lành tính cho da như vitamin C, E, B3… và các sản phẩm có khả năng chống nắng để góp phần bảo vệ da dưới tác động của ánh nắng mặt trời.<br>
                            Bước 4: Đắp mặt nạ ủ body<br>
                            Ngoài sử dụng kem dưỡng thể, bạn nên kết hợp đắp mặt nạ ủ cho da toàn thân để tăng cường hiệu quả dưỡng da. Đắp mặt nạ 2 – 3 lần/tuần, đặc biệt là sau khi tẩy da chết xong sẽ giúp da được cân bằng độ ẩm, mềm mịn và sáng khỏe hơn. Bạn có thể tự làm mặt nạ ủ body bằng các nguyên liệu tự nhiên có sẵn tại nhà.<br>
                            Bước 5: Chống nắng toàn thân<br>
                            Chăm sóc da body đúng cách cũng không thể thiếu bước chống nắng toàn thân. Bôi kem chống nắng sẽ giúp bảo vệ da khỏi tia UV – tác nhân hàng đầu gây ra các vấn đề về da như thâm sạm, xỉn màu, nám da, khô da…<br>
                            Nên chọn loại kem chống nắng có chỉ số SPF > 30, và thoa kem chống nắng 20 – 30 phút trước khi ra ngoài. Có thể dùng thêm viên uống chống nắng để tăng cường hiệu quả chống nắng cho da. Đồng thời, kết hợp che chắn kỹ bằng áo khoác, mũ, khẩu trang, kính râm để bảo vệ da.
                        </p>
                        <a href="#" class="btn btn--default">Xem thêm</a>
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
        
        <!-- Sccipt for owl caroucel -->

        <!-- Script common -->
        <script src="./assets/js/commonscript.js"></script>


</body>

</html>
