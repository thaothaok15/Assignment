<%-- 
    Document   : managerACc
    Created on : Mar 15, 2022, 8:31:40 AM
    Author     : Thanh Thao
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Manager Account</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        
         
<!--
         Icon fontanwesome 
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

       Layout 
        <link rel="stylesheet" href="./assets/css/common.css">-->


    </head>
    <body>
        <div>
            <jsp:include page="header2.jsp"/>
        </div>
        <div class="container">
            <h2>Manager Account</h2>
            <table class="table table-bordered table-sm">   
                <thead class="thead-dark">
                    <tr>
                        <th>Block Account</th>
                        <th>UnBlock Account</th>
                        <th>AccountName</th>
                        <th>Username</th>
                        
                        <th>Role</th>
                    </tr>
                </thead>
                <tbody>
                <tbody>
                    <c:forEach items="${requestScope.account}" var="a">
                        <tr class="text-center">
                            <td class="product-remove"><a href="block?aid=${a.adminID}" onclick="return confirm('You want to Block Account?');"><span class="ion-ios-close"></span></a></td>
                            <td class="product-remove"><a href="unblock?aid=${a.adminID}" onclick="return confirm('You want to UnBlock Account?');"><span class="ion-ios-checkbox"></span></a></td>

                            <td class="product-name">
                                <h3>${a.userName}</h3>
                            </td>
                            <td class="price">${a.userName}</td>

                            <td class="price">                                           
                                ${a.isAdmin}
                            </td>


                        </tr><!-- END TR-->
                    </c:forEach>
                </tbody>

                </tbody>
            </table>

        </div>
        <div>
            <jsp:include page="footer.jsp"/>
        </div>
         <script src="./assets/js/commonscript.js"></script>
    </body>
</html>
