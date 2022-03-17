<%-- 
    Document   : managerACc
    Created on : Mar 15, 2022, 8:31:40 AM
    Author     : Thanh Thao
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Manager Product</title>
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
                            <h2>Manage <b>Account</b></h2>
                        </div>
                        <h3 class="text-danger"> ${mess}</h3>
                    </div>
                </div>
                <table  class="table table-striped table-hover ">
                    <thead>
                        <tr>
                            <th>AccountName</th>
                            <th>Username</th>
                            <th>Role</th>
                            <th>UnBlock</th>
                            <th>Block</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.account}" var="o">
                            <tr>

                                <td>${o.userName}</td>
                                <td>${o.userName}</td>
                                <td>${o.role}</td>

                                <td>
                                    <a href="unblock?aid=${o.accountID}" onclick="return confirm('You want to UnBlock Account?');"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="UnBlock">&#xE254;</i></a>
                                </td>
                                <td>
                                    <a href="block?aid=${o.accountID}" onclick="return confirm('You want to Block Account?');" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Block">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                 
            </div>
            <a href="home"><button type="button" class="btn btn-primary">Back to home</button></a>

        </div>
      


        <script src="assets/js/manager.js" type="text/javascript"></script>
    </body>
</html>