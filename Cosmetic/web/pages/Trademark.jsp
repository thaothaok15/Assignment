<%-- 
    Document   : Trademark
    Created on : Dec 22, 2021, 12:48:26 AM
    Author     : coder
--%>

<%@page import="Entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        String trademark = "";
        if (request.getAttribute("trademark") != null) {
            trademark = request.getAttribute("trademark").toString();
        }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LeeStore</title>
        <link rel="stylesheet" href="css/stylehome.css">
        <script src="js/JSHome.js"></script>
    </head>
    <body>
        <header>
            <div class="header1">
                <div class="header--logo">
                    <img src="images/logo.png">
                </div>
                <div style="text-align: center;">
                    <h3 style="font-size: 3vh; margin: 0px; color: yellow">LeeStore</h3>
                    <h5 style="margin: 0px;color: #c13434;">Hotline: 0989.355.382</h5>
                </div>
                <div class="menu">
                    <a style="color: #ffee1f; text-decoration: none; text-shadow: 0px 0px 12px white;" href="Home">Home</a>
                </div>
                <div class="menu">
                    <a style="color: #ffee1f; text-decoration: none; text-shadow: 0px 0px 12px white;" href="#">Diễn đàn</a>
                </div>
                <div class="menu">
                    <a style="color: #ffee1f; text-decoration: none; text-shadow: 0px 0px 12px white;" href="#">Phụ kiện</a>
                </div>
                <div class="dropdown">
                    <button class="dropbtn-trademark" style="color: #ffee1f; text-decoration: none; text-shadow: 0px 0px 12px white;">Thương hiệu</button>
                    <div class="dropdown-content">
                        <a href="Trademark?id=kem dưỡng">kem dưỡng</a>
                        <a href="Trademark?id=mặt nạ">mặt nạ</a>
                        <a href="Trademark?id=son">son</a>
                        <a href="Trademark?id=kem chống năng">kem chống nắng</a>
                        <a href="Trademark?id=nước tẩy trang">nước tẩy trang</a>
                    </div>

                </div>

                <%
                    Account account = new Account();
                    String fName = "";
                    String lName = "";
                    if (session.getAttribute("account") != null) {
                        account = (Account) session.getAttribute("account");
                        fName = account.getFirtName();
                        lName = account.getLastName();
                    }
                %>
                <%
                if (fName.equals("") && lName.equals("")) {%>
                <div class="dropbtn menu">
                    <a href="Login">Đăng Nhập</a>
                </div>
                <% } else {%>
                <div class="dropdown login">
                    <button class="dropbtn"><%=fName%></button>
                    <div class="dropdown-content">
                        <a href="#">Thông tin tài khoản</a>
                        <a href="#">Giỏ hàng</a>
                        <a href="Logout">Đăng xuất</a>
                    </div>

                </div>
                <%}%>
            </div>
            <form class="menu" action="Trademark" method="get" style="text-align: center;">
                <input style="width: auto;" type="text" placeholder="Tìm kiếm sản phẩm theo tên">
                <button type="submit">Tìm kiếm</button>
            </form>
        </header>
        <div class="poster">
            <img style="width: 100%;" src="images/poster.jpg" />
        </div>
        <h2><%=trademark%></h2>
    </body>
</html>
