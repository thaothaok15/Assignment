<%-- 
    Document   : Signup
    Created on : Dec 22, 2021, 2:47:56 PM
    Author     : Thanh Thao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Beauty Cosmetic</title>
        <link rel="stylesheet" href="css/StyleSignup.css">
    </head>
    <body>
        <header>
            <div class="poster">
                <img style="width: 100%;" src="images/poster.jpg" />
            </div>
        </header>
        <main>
            <form method="post" action="Signup">
                <div>
                    <div class="left">Tên đăng nhập:</div>
                    <input class="right" type="text" name="username">
                </div>
                <div>
                    <div class="left">Mật khẩu:</div>
                    <input class="right" type="password" name="password">
                </div>
                <div>
                    <div class="left">Nhập lại mật khẩu:</div>
                    <input class="right" type="password" name="repassword">
                </div>
                <div>
                    <div class="left">Họ:</div>
                    <input class="right" type="text" name="Fname">
                </div>
                <div>
                    <div class="left">Tên:</div>
                    <input class="right" type="text" name="Lname">
                </div>
                <div>
                    <input type="submit" value="Đăng ký">
                    <a href="Login">Đăng nhập</a>
                </div>
            </form>
            <%
                String error = "";
                if (request.getAttribute("error") != null){
                    error = request.getAttribute("error").toString();%>
                    <h1><%= error %></h1>
                <%}
            %>
        </main>
    </body>
</html>
