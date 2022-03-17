<%-- 
    Document   : listProduct
    Created on : Mar 2, 2022, 10:47:34 PM
    Author     : Thanh Thao
--%>

<%@page import="model.Product"%>
<%@page import="java.util.List"%>
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
        <!-- Layout -->
        <link rel="stylesheet" href="./assets/css/common.css">
        <!-- index -->
        <link rel="stylesheet" type="text/css" href="./assets/css/product.css">
        <link rel="stylesheet" type="text/css" href="./assets/css/productSale.css">


    </head>

    <body>

       
        <div>
            <jsp:include page="header2.jsp"/>
        </div>
        <div class="main">
            <div class="grid wide">
                <div class="main__taskbar">
                    <div class="main__breadcrumb">
                        <div class="breadcrumb__item">
                            <a href="#" class="breadcrumb__link">Trang chủ</a>
                        </div>
                        <div class="breadcrumb__item">
                            <a href="#" class="breadcrumb__link">Tất cả sản phẩm</a>
                        </div>

                    </div>

                    <div class="main__sort">
                        <h3 class="sort__title">
                            Hiển thị kết quả theo
                        </h3>                 
                        <select  name="forma" onchange="location = this.value;" style="width: 90%; height: 40px; font-size: 16px">
                            <option value="list">Thứ tự mặc định</option>
                            <option value="listup">Giá: Cao đến thấp</option>
                            <option value="listdown">Giá : Thấp đến cao</option>
                        </select>
                    </div>
                </div>
                <div class="productList">
                    <div class="listProduct">
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
                                                <div class="price__new"> ${o.salePrice} <span class="price__unit">đ</span></div>

                                            </div>
                                            <div class="product__sale">
                                                <span class="product__sale-percent">24%%</span>
                                                <span class="product__sale-text">Giảm</span>
                                            </div>
                                        </div>
                                        <a href="detail?productID=${o.productID}" class="viewDetail">Xem chi tiết</a>

                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <div>
            <jsp:include page="footer.jsp"/>
        </div>
        <!-- Script common -->
        <script src="./assets/js/commonscript.js"></script>
    </body>

</html>
