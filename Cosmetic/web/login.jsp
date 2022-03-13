<%-- 
    Document   : Login.jsp
    Created on : Mar 9, 2022, 10:35:02 PM
    Author     : Thanh Thao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title> Login Form</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
.login-form {
    width: 340px;
    margin: 50px auto;
  	font-size: 15px;
}
.login-form form {
    margin-bottom: 15px;
    background: #f7f7f7;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    padding: 30px;
    text-align: center;
    
}
.login-form h2 {
    margin: 0 0 15px;
}
.form-control, .btn {
    min-height: 38px;
    border-radius: 2px;
}
.btn {        
    font-size: 15px;
    font-weight: bold;
}



</style>
</head>
<body>
<div class="login-form">
    <br>
        <form action="login" method="post">
        <h2 class="text-center">Đăng Nhập</h2>  
        <hr>
        
        <p class="text-danger">${mess}</p>
        <div class="form-group">
            <input type="text" name="username" class="form-control" placeholder="Tài khoản" value="${cookie.user.value}" required="required">
        </div>
        <div class="form-group">
            <input type="password" name="password" class="form-control" placeholder="Mật khẩu" value="${cookie.pass.value}" required="required">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
        </div>
        <div class="clearfix">
            <label class="float-left form-check-label"><input type="checkbox" name="rem" value="ON" ${(cookie.rem.value eq 'ON')? "checked":""} > Nhớ mật khẩu</label>
            <!--<a href="#" class="float-right">Quên mật khẩu?</a>-->
        </div>        
    </form>
<!--            <form action="Signup.jsp"> 
                <button type="submit" class="text-center">Tạo tài khoản</button>
            </form>-->
            <div class="text-center">Bạn chưa có tài khoản?<a href="Signup.jsp">Đăng Kí</a></div>
</div>
    

</body>
</html>
