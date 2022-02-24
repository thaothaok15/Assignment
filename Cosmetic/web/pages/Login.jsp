<%-- 
    Document   : Login
    Created on : Dec 21, 2021, 3:40:29 PM
    Author     : coder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Nhập</title>
        <link rel="stylesheet" href="css/StyleLogin.css">
    </head>
    <body>
        <header>
            <div class="poster">
            <img style="width: 100%;" src="images/poster.jpg" />
        </div>
        </header>
        <div class="allform">
            <form method="post" action="Login">
                <div>
                    Tên Đăng Nhập:
                    <input class="textbox" type="text" name="userName">
                </div>
                <div class="password">
                    Mật Khẩu:
                    <input class="textbox" type="password" name="password">
                </div>
                <div class="submit">
                    <input type="submit" name="done" value="đăng nhập"></input>
                </div>
            </form>
            <a class="left" href="Signup">Đăng ký</a>
            <a class="right" href="#">Quên mật khẩu</a>
        </div>
        <%
            String error = "";
            if (request.getAttribute("error") != null) {
                error = request.getAttribute("error").toString();%>
        <h1><%=error%></h1>
        <%}
        %>
    </body>
</html>
