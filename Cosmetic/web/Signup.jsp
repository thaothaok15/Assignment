<%-- 
    Document   : Signup
    Created on : Mar 9, 2022, 11:40:49 PM
    Author     : Thanh Thao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
        <title>Sign Up</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script> 
        <style>
            body {
                /*color: #fff;*/
                /*background:pink;*/

                /*font-family: 'Roboto', sans-serif;*/

            }
            .form-control {
                height: 41px;
                background: #fff;
                box-shadow: none !important;
                border: none;

            }
            .form-control:focus {
                background: #e2e2e2;
            }
            .form-control, .btn {        
                border-radius: 3px;
            }
            .signup-form {
                width: 400px;
                margin: 30px auto;

            }
            .signup-form form {
                color: #999;
                border-radius: 3px;
                margin-bottom: 15px;
                /*background: #fff;*/
                background: #f2f2f2;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .signup-form h2  {
                color: #333;
                /*font-weight: bold;*/
                margin-top: 0;
                text-align: center;
            }
            .signup-form hr  {
                margin: 0 -30px 20px;
            }    
            .signup-form .form-group {
                margin-bottom: 20px;
            }
            .signup-form input[type="checkbox"] {
                margin-top: 3px;
            }
            .signup-form .row div:first-child {
                padding-right: 10px;
            }
            .signup-form .row div:last-child {
                padding-left: 10px;
            }
            .signup-form .btn {        
                font-size: 18px;
                font-weight: bold;
                background: #3598dc;
                border: none;
                min-width: 140px;
            }
            .signup-form .btn:hover, .signup-form .btn:focus {
                background: #2389cd !important;
                outline: none;
            }
            .signup-form a {
                color: blue;
                text-decoration: underline;
            }
            .signup-form a:hover {
                text-decoration: none;
            }
            .signup-form form a {
                color: #3598dc;
                text-decoration: none;
            }	
            .signup-form form a:hover {
                text-decoration: underline;
            }
            .signup-form .hint-text  {
                padding-bottom: 15px;
                text-align: center;
                font-size: 18px;
            }
        </style>
    </head>
    <body>
        <div class="signup-form">
            <form action="signup" method="post">
                <h2>????ng K??</h2>
                <hr>

                 <p class="text-danger">${mess}<p/> 
                 <p class="text-danger">${mess1}<p/>
                <div class="form-group">
                    <input type="text" class="form-control" name="username" placeholder="T??i kho???n" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="password" placeholder="M???t kh???u" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="repassword" placeholder="Nh???p l???i m???t kh???u" required="required">
                </div>        

                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg">????ng K??</button>
                </div>
            </form>
            <div class="hint-text">B???n ???? s???n s??ng ????ng nh???p? <a href="Login.jsp">????ng nh???p</a></div>
        </div>
    </body>
</html>
