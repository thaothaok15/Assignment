<%-- 
    Document   : managerHistoryOrder
    Created on : Mar 16, 2022, 10:23:19 PM
    Author     : Thanh Thao
--%>

<%@page import="model.Product"%>
<%@page import="model.Profile"%>
<%@page import="model.OrderDetail"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Order"%>
<%@page import="dal.DAO"%>
<%@page import="model.Account"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>History Order</title>
        <!--        <link href="assets/css/manager.css" rel="stylesheet" type="text/css"/>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
                <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
                <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
                <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="assets/css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
        <!--        <script>
                    $(document).ready(function () {
                        $('#dtTableProduct').DataTable();
                        $('.dataTables_length').addClass('bs-select');
                    });
                </script>-->
    </head>
    <body>
        <div class="container">
            <div class="table-wrapper">

                <div class="table-title">

                    <div class="row">
                        <div class="col-sm-6">
                            <h2>History <b>Order</b></h2>
                        </div>
                        <!--<h3 class="text-danger"> ${mess}</h3>-->
                    </div>
                </div>
                <table  class="table table-striped table-hover ">
                    <thead>
                        <tr>
                            <th>Name</th> 
                            <!--<th>Username</th>-->
                            <th>Phone</th> 
                            <th>Email</th> 
                            <th>Address</th> 
                            <th>ProductName</th>
                            <th>Quantity</th>
                            <th>Total Price</th> 
                            <!--                            <th>Note</th>-->
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            DAO dao = new DAO();
                            session = request.getSession();
                            Account account = (Account) session.getAttribute("acc");
                            Profile profile = (Profile) session.getAttribute("profile");
                            List<Order> listOrder = dao.getOrderByAccountID(account.getAccountID());
                            for (int i = 0; i < listOrder.size(); i++) {
                                List<OrderDetail> listOrderDetail = dao.getOrderDetailByOrderID(listOrder.get(i).getOrderID());
                                for (int j = 0; j < listOrderDetail.size(); j++) {%>
                        <tr>
                            <td><%=profile.getName()%></td>
                            <td><%=profile.getPhone()%></td>
                            <td><%=profile.getEmail()%></td>
                            <td><%=listOrder.get(i).getAddress()%></td>
                            <%
                                Product product = dao.getProductByID(listOrderDetail.get(j).getPid() + "");
                            %>
                            <td><%=product.getProductName()%></td>
                            <td><%=listOrderDetail.get(j).getQuantity()%></td>
                            <td><%=listOrderDetail.get(j).getTotal()%></td>
                        </tr>
                        <%}
                            }%>
                    </tbody>
                </table>
            </div>
            <a href="home"><button type="button" class="btn btn-primary">Back to home</button></a>
        </div>
        <script src="assets/js/manager.js" type="text/javascript"></script>
    </body>
</html>
