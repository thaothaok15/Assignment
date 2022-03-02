<%-- 
    Document   : Home
    Created on : Dec 14, 2021, 9:46:52 AM
    Author     : Thanh Thao
--%>

<%@page import="Entity.Account"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Beauty Cosmetic</title>
        <link rel="stylesheet" href="css/stylehome.css">
        <script src="js/JSHome.js"></script>
    </head>
    <body>
        <header>
            <div class="header1">
                <div class="header--logo">
                    <img src="images/logo.jpg">
                </div>
                <div style="text-align: center;">
                    <h3 style="font-size: 3vh; margin: 0px; color: yellow">Beauty Cosmetic</h3>
                    <h5 style="margin: 0px;color: #c13434;">Hotline: 0387.974.042</h5>
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
                        
                        <%
                            if (account.getUserName().equals("admin")){
                            %>
                            <a href="Edit">Chỉnh sửa mặt hàng</a>
                            <% } %>
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
        <%
            ArrayList<Product> list = (ArrayList<Product>) request.getAttribute("listProduct");
            if (list.size() == 0) {%>
        <h1>Sản phẩm của shop hiện tại đã hết. Cảm ơn quý khách đã ghé thăm!</h1>
        <%} else {%>
        <h2>Sản Phẩm Hot Nhất 2021</h2>
        <%for (int i = 0; i < list.size(); i++) {%>
        <div class="card">

            <img src=<%= list.get(i).getImageLink()%> />
            <div>
                <a>Tên Sản Phẩm: <%= list.get(i).getProductName()%></a>
            </div>
            <div>
                <a>Giá: <%= list.get(i).getPrice()%> VNĐ</a>
            </div>
            <div>
                <a>Số Lượng Tại Shop: <%= list.get(i).getQuantity()%></a>
            </div>
        </div>
        <%}
            }%>

    </body>
</html>
