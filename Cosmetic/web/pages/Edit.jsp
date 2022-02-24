<%-- 
    Document   : Edit
    Created on : Dec 15, 2021, 3:51:09 PM
    Author     : coder
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm/Sửa/Xóa</title>
        <link rel="stylesheet" href="css/StyleEdit.css">
    </head>
    <body>
        <%
            ArrayList<Product> listProduct = (ArrayList<Product>) request.getAttribute("listProduct");

        %>
        <div class="cardAdd">
        <a href="Add" target="_blank">
            <button>Thêm Sản Phẩm</button>
        </a>
    </div>

    <table>
        <tr>
            <th class="col1">Ảnh sản phẩm</th>
            <th class="col2">Tên sản phẩm</th>
            <th class="col3">Giá</th>
            <th class="col4">Số Lượng Hiện Tại</th>
            <th class="col5">Tên Ảnh Sản Phẩm</th>
        </tr>
        <% for (int i = 0; i < listProduct.size(); i++) {
                int id = listProduct.get(i).getProductID();
        %>
        <tr>
            <td class="col1"><img src =<%=listProduct.get(i).getImageLink()%> /></td>
            <td class="col2"><%=listProduct.get(i).getProductName()%></td>
            <td class="col3"><%=listProduct.get(i).getPrice()%></td>
            <td class="col4"><%=listProduct.get(i).getQuantity()%></td>
            <td class="col5"><%=listProduct.get(i).getImageLink()%></td>
            <td class="col6"><a href="Delete?id=<%=id%>">
                    <button>Delete</button>
                </a></td>
            <td class="col7"><a href="Update?id=<%=id%>">
                    <button>Edit</button>
                </a></td>
        </tr>
        <% }%>
    </table>
</body>
</html>
