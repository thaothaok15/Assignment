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
<!--                        <div class="tab-item active">
                            Sản Phẩm Bán Chạy
                        </div>-->
                        <div class="tab-item">
                            Sản Phẩm Khuyến Mãi
                        </div>
<!--                        <div class="tab-item">
                            Sản Phẩm Mới
                        </div>-->
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
                                                        ${o.oldPrice}
                                                    </div>
                                                    <div class="price__new">  ${o.salePrice}<span class="price__unit">đ</span></div>
                                                    <!--<input type="text" id="quantity" name="num" class="form-control input-number" value="1"  >-->
                                                </div>
                                                <div class="product__sale">
                                                    <span class="product__sale-percent">24%%</span>
                                                    <span class="product__sale-text">Giảm</span>
                                                </div>
                                            </div>
                                            <a href="detail?productID=${o.productID}" class="viewDetail">Xem chi tiết</a>
                                            <!--<a href="cart?productID=${o.productID}" class="addToCart">Thêm vào giỏ</a>-->
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
                                        ${o.oldPrice}
                                    </div>
                                    <div class="price__new">${o.salePrice}<span class="price__unit">đ</span></div>
                                </div>
                                <div class="product__sale">
                                    <span class="product__sale-percent">23</span>
                                    <span class="product__sale-text">Giảm</span>
                                </div>
                            </div>
                            <a href="detail?productID=${o.productID}" class="viewDetail">Xem chi tiết</a>
                            
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
                                   <b style="font-weight: bold; font-size: 20px">Bước 1:Sử dụng kem lót</b> <br>
                                Để có một lớp nền căng bóng thì không thể thiếu đến kem lót . bạn nên sử dụng kem lót có ánh nhủ như Mac, 3ce…. Vừa có độ nhũ mà còn mỏng mịn.Cách làm rất đơn giản bạn chấm ít kem lót tại các vị trí trên khuôn mặt, dùng cọ hoặc tay tán nhẹ  lên toàn bộ khuôn mặt là xong.<br>
                                <b style="font-weight: bold; font-size: 20px">Bước 2:Kem nền </b><br>
                                Kem nền là bước không thể thiếu trong cách trang điểm nhẹ nhàng dễ thương. Cách làm cũng giống như kem lót, bạn tán đều và mỏng lớp kem nền lên mặt bằng cọ hoặc bằng bông mút trang điểm.
                                Lưu ý : Đừng nên sử dụng kem nền quá nhiều vì như thế nhìn da mặt sẽ bị năngj và cứng đơ trông rất không tự nhiên.<br>
                                <b style="font-weight: bold; font-size: 20px">Bước 3:Phấn phủ</b><br>
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
                                <img src="./assets/img/infor/skincare.jpg" alt="">
                            </div>
                            <div class="news__body">
                                <h3 class="news__body-title"> Các bước chăm sóc da ban ngày đơn giản tại nhà</h3>
                                <div class="new__body-date">12/03/2022</div>
                                <p class="news__description">
                                   <b style="font-weight: bold; font-size: 20px">Bước 1:Rửa mặt</b><br>
                                Bắt đầu chăm sóc đầu ngày của bạn bằng cách làm sạch da mặt bằng sữa rửa mặt dịu nhẹ mà bạn chọn. Bước này giúp đánh thức làn da của bạn và loại bỏ dầu và mỹ phẩm tích tụ trên mặt. <br>  
                                <b style="font-weight: bold; font-size: 20px">Bước 2:Sử dụng toner</b><br>
                                Sau khi làm sạch da mặt, lấy một vài giọt toner vào miếng bông tẩy trang và chấm nhẹ lên khắp mặt và cổ. Toner giúp duy trì sự cân bằng độ pH của da và giúp bạn giữ được vẻ ngoài tươi tắn.<br>
                                <b style="font-weight: bold; font-size: 20px">Bước 3:Thoa kem dưỡng ẩm</b><br>
                                Kem dưỡng ẩm giúp giữ ẩm cho làn da của bạn, da trở nên mềm mại và mịn màng, nhờ đó tạo ra một lớp nền đẹp để bạn trang điểm và các sản phẩm khác. Sau khi làm sạch hoặc tẩy tế bào chết, da của bạn có thể cảm thấy hơi khô.<br> Đối với mùa hè, bạn có thể sử dụng công thức dạng gel, và vào mùa đông, hãy chuyển sang loại kem dưỡng ẩm có chất dày hơn.<br>
                                <b style="font-weight: bold; font-size: 20px">Bước 4:Bôi kem chống nắng</b><br>
                                Kem dưỡng da chống nắng tạo ra một hàng rào bảo vệ chống lại các tia UV có hại và ngăn ngừa lão hóa sớm, đốm đen, nếp nhăn và các vấn đề về da khác.<br> Khi bạn ở ngoài nắng trong nhiều giờ, đừng quên thoa lại kem chống nắng sau mỗi vài giờ để có kết quả tốt nhất.
                                </p>
                            </div>
                        </a>
                        <a href="news.jsp" class="news">
                            <div class="news__img">
                                <img src="./assets/img/infor/chăm sóc tóc.jpg" alt="">
                            </div>
                            <div class="news__body">
                                <h3 class="news__body-title"> Bật mí 7 cách chăm sóc đơn giản hiệu quả tại nhà chuẩn Salon</h3>
                                <div class="new__body-date">12/03/2022</div>
                                <p class="news__description">
                                    <b style="font-weight: bold; font-size: 20px">1</b>. Tẩy tế bào chết cho da đầu<br>
                                <b style="font-weight: bold; font-size: 20px">2</b>. Gội đầu sạch sẽ<br>
                                <b style="font-weight: bold; font-size: 20px">3</b>. Thoa dầu xả dưỡng ẩm cho tóc<br>
                                <b style="font-weight: bold; font-size: 20px">4</b>. Cung cấp thêm dưỡng chất chăm sóc tóc<br>
                                <b style="font-weight: bold; font-size: 20px">5</b>. Để tóc khô tự nhiên<br>
                                <b style="font-weight: bold; font-size: 20px">6</b>. Bổ sung tinh chất chuyên sâu<br>
                                <b style="font-weight: bold; font-size: 20px">7</b>. Cung cấp đầy đủ dinh dưỡng cho tóc
                                </p>
                            </div>
                        </a>
                        <a href="news.jsp" class="news">
                            <div class="news__img">
                                <img src="./assets/img/infor/mỹ phẩm.jpg" alt="">
                            </div>
                            <div class="news__body">
                                <h3 class="news__body-title">  Cách chọn mỹ phẩm nhà BeautyMona phù hợp với da</h3>
                                <div class="new__body-date">12/03/2022</div>
                                <p class="news__description">
                                    <b style="font-weight: bold; font-size: 20px">1. Lựa chọn mỹ phẩm phù hợp cho da khô </b><br>
                                Đây là loại da có khả năng dưỡng ẩm kém; da dễ bị nứt nẻ; lỗ chân lông nhỏ và xuất hiện nhiều nếp nhăn. Thế nên, các bạn nên lựa chọn các sản phẩm có chiết xuất từ các loại vitamin E; Vitamin A; tinh chất làm mềm và dưỡng da giúp cân bằng độ ẩm. <br>
                                <b style="font-weight: bold; font-size: 20px">2. Lựa chọn mỹ phẩm phù hợp cho da dầu</b> <br>
                                Da dầu là loại da có tuyến bã nhờn tiết ra rất nhiều khiến da lúc nào cũng bóng nhờn và nhất là vào màu hè nắng nóng. Vì vậy,cần bổ sung đầy đủ nước cho làn da để giúp hạn chế việc tiết dầu. <br>
                                <b style="font-weight: bold; font-size: 20px">3 Lựa chọn mỹ phẩm phù hợp cho da hỗn hợp</b> <br>
                                Da hỗn hợp là loại da có sự kết hợp giữa da khô và da dầu. Thường trên vùng chữ T sẽ xuất hiện nhiều dầu. Còn hai bên má là vùng da khô. Với loại da hỗn hợp thì nên chọn các loại có tác dụng dưỡng ẩm dịu nhẹ. Chứa cá loại hydro axit như AHA, BHA.<br>
                                <b style="font-weight: bold; font-size: 20px">4 Lựa chọn mỹ phẩm phù hợp với da nhạy cảm</b> <br>
                                Với loại da này thì nó có điểm nổi bật là mềm mịn; lỗ chân lông nhỏ; ít mụn và ít nếp nhăn. Tuy nhiên, muốn da khỏe khoắn và sáng mịn thì bạn cần có 1 chế độ ăn uống hợp lý<br>
                                </p>
                            </div>
                        </a>
                        <a href="news.jsp" class="news">
                            <div class="news__img">
                                <img src="./assets/img/infor/chăm sóc body.jpg" alt="">
                            </div>
                            <div class="news__body">
                                <h3 class="news__body-title">  Cách chăm sóc body bật tông dưỡng trắng tại nhà </h3>
                                <div class="new__body-date">12/03/2022</div>
                                <p class="news__description">
                                  <b style="font-weight: bold; font-size: 20px"> Bước 1: Làm sạch da</b><br>
                                Nên tắm bằng nước ấm 28 – 30 độ C, đây là nhiệt độ thích hợp để giúp tăng cường lưu thông máu, đồng thời làm giãn nở lỗ chân lông để dễ dàng loại bỏ bụi bẩn, dầu nhờn bám trên da.<br>
                                Chọn loại sữa tắm phù hợp với tính chất làn da. Da dầu không nên chọn sữa tắm có chứa thành phần dưỡng ẩm cao để tránh gây bết dính. Da khô không nên chọn loại có tính tẩy rửa mạnh vì khiến da khô và dễ bong tróc hơn.<br>
                                Không chà xát, kỳ cọ quá mạnh có thể gây tổn thương cho lớp biểu bì da, khiến da khô ráp hơn. Thay vào đó, nên massage nhẹ nhàng toàn cơ thể trong lúc tắm để thư giãn da và lưu thông máu tốt hơn.<br>
                                <b style="font-weight: bold; font-size: 20px">Bước 2: Tẩy tế bào chết</b><br>
                                Cũng như da mặt, các lớp da chết body lâu ngày không được làm sạch sẽ chất chồng lên nhau, khiến da sần sùi, xỉn màu. Đây cũng là nguyên nhân gây bít tắc lỗ chân lông khiến hình thành mụn, nhất là ở các vùng da như lưng, ngực.<br>
                                Vì vậy, ngoài việc làm sạch da bằng sữa tắm hằng ngày, thì chị em cần tẩy tế bào chết 1 – 2 lần/tuần để da thông thoáng, mịn màng và sáng khỏe hơn, đồng thời tăng cường hiệu quả hấp thụ dưỡng chất ở các bước dưỡng da tiếp theo.<br>
                                <b style="font-weight: bold; font-size: 20px">Bước 3: Sử dụng kem dưỡng thể</b><br>
                                Sau các bước làm sạch thì đây là thời điểm lý tưởng để dưỡng da, giúp da dễ dàng hấp thụ các dưỡng chất từ các sản phẩm dưỡng thể. Kem dưỡng sẽ giúp da body được cấp ẩm đầy đủ, mềm mịn và trắng sáng hơn.<br>
                                Nên ưu tiên chọn các sản phẩm có thành phần tự nhiên, lành tính cho da như vitamin C, E, B3… và các sản phẩm có khả năng chống nắng để góp phần bảo vệ da dưới tác động của ánh nắng mặt trời.<br>
                                <b style="font-weight: bold; font-size: 20px">Bước 4: Đắp mặt nạ ủ body</b><br>
                                Ngoài sử dụng kem dưỡng thể, bạn nên kết hợp đắp mặt nạ ủ cho da toàn thân để tăng cường hiệu quả dưỡng da. Đắp mặt nạ 2 – 3 lần/tuần, đặc biệt là sau khi tẩy da chết xong sẽ giúp da được cân bằng độ ẩm, mềm mịn và sáng khỏe hơn. Bạn có thể tự làm mặt nạ ủ body bằng các nguyên liệu tự nhiên có sẵn tại nhà.<br>
                                <b style="font-weight: bold; font-size: 20px">Bước 5: Chống nắng toàn thân</b><br>
                                Chăm sóc da body đúng cách cũng không thể thiếu bước chống nắng toàn thân. Bôi kem chống nắng sẽ giúp bảo vệ da khỏi tia UV – tác nhân hàng đầu gây ra các vấn đề về da như thâm sạm, xỉn màu, nám da, khô da…<br>
                                Nên chọn loại kem chống nắng có chỉ số SPF > 30, và thoa kem chống nắng 20 – 30 phút trước khi ra ngoài. Có thể dùng thêm viên uống chống nắng để tăng cường hiệu quả chống nắng cho da. Đồng thời, kết hợp che chắn kỹ bằng áo khoác, mũ, khẩu trang, kính râm để bảo vệ da.
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