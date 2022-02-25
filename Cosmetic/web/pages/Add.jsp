<%-- 
    Document   : Add.jsp
    Created on : Dec 15, 2021, 9:34:27 PM
    Author     : Thanh Thao
--%>

<%@page import="javafx.scene.control.Alert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../js/mycode.js"></script>

        <title>Thêm Sản Phẩm</title>
    </head>
    <body>
        <form method="post" action="Add">
            <div>
                Tên Sản Phẩm: 
                <input type="text" name="name"> 
            </div>
            <div style="margin-top: 1%">
                Số Lượng:   
                <input type="text" name="quantity">
            </div>   
            <div style="margin-top: 1%">
                Giá: 
                <input type="text" name="price">
            </div>   
            <div style="margin-top: 1%">
                Tên Ảnh Của Sản Phẩm:
                <input type="text" name="image">
            </div>
            <div style="margin-top: 1%">
                Thương Hiệu:
                <input type="text" name="trademark">
            </div>
            <div style="margin-top: 1%">
                <input type="submit" value="done">
            </div>
        </form>
        <%
            String err = "";
            if (request.getAttribute("err") != null) {
                err = request.getAttribute("err").toString();  
                if (err.equals("")){%>
                <h1>Thêm Sản Phẩm Thành Công</h1>
                <% } else {%>
                <h1><%=err%></h1>
                <%}
            }%>
    </body>
</html>
