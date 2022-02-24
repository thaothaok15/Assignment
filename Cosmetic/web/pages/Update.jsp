<%-- 
    Document   : Update
    Created on : Dec 16, 2021, 4:17:43 PM
    Author     : coder
--%>

<%@page import="Entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chỉnh Sửa Sản Phẩm</title>
    </head>
    <body>
        <%
            String name = "";
            int quantity = 0;
            double price = 0;
            String link = "";
            String trademark = "";
            if (request.getAttribute("product") != null) {
                Product product = (Product) request.getAttribute("product");
                name = product.getProductName();
                quantity = product.getQuantity();
                price = product.getPrice();
                link = product.getImageLink();
                String temp = "";
                for (int i = 7; i < link.length(); i++) {
                    temp = temp + link.charAt(i);
                }
                link = temp;
                trademark = product.getTrademark();
            }
        %>
        <form method="post" action="Update">
            <div>
                Tên Sản Phẩm: 
                <input type="text" name="name" value="<%=name%>"> 
            </div>
            <div style="margin-top: 1%">
                Số Lượng:   
                <input type="text" name="quantity" value=<%=quantity%>>
            </div>   
            <div style="margin-top: 1%" value=<%=quantity%>>
                Giá: 
                <input type="text" name="price" value=<%=price%>>
            </div>   
            <div style="margin-top: 1%">
                Tên Ảnh Của Sản Phẩm:
                <input type="text" name="image" value=<%=link%>>
            </div>
            <div style="margin-top: 1%" value=<%=quantity%>>
                Thương Hiệu:
                <input type="text" name="trademark" value=<%=trademark%>>
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
                <h1>Chỉnh Sửa Sản Phẩm Thành Công</h1>
                <% } else {%>
                <h1><%=err%></h1>
                <%}
            }%>
    </body>
</html>
