<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <?php 
      include("ketnoi.php");
      session_start();
    ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phụ Kiện TK</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../codeCSS/login.css">
</head>

<body>
    <div class="container-fluid bg">
        <div class="row justify-content-center">
            <div class="col-md-3 col-sm-6 col-xs-12 row-container">
                <form action='xuli_login.php' method='POST'>
                    <h1>Đăng nhập</h1>
                    <div class="from-group">
                        <label for="account">Tài khoản:</label>
                        <input type="text" name="txUsername" class="form-control" id="account" placeholder="Nhập tài khoản">
                    </div>
                    <span id="err-user" class="text-danger"></span>
                    <div class="from-group my-2">
                        <label for="password">Mật khẩu:</label>
                        <input type="password" name="txPassword" class="form-control" id="password" placeholder="Nhập mật khẩu">
                    </div>
                    <span id="err-pass" class="text-danger"></span>
                    <div class="form-check my-2">
                        <input type="checkbox" class="form-check-input" id="rememberMe">
                        <label class="form-check-lable" for="rememberMe">Ghi nhớ đăng nhập</label>
                    </div>
                    <input type="button" onclick="checklogin()" id="login" name="login" value="Đăng nhập" class="btn btn-success btn-block" >
                    <p class="my-1">hoặc</p>
                    <input type="submit" name="registration" class="btn btn-success btn-block" value="Đăng kí">
                    <input type="submit" name="cancle" class="btn btn-success btn-block cancle" value="Hủy">
                </form>
            </div>

        </div>
    </div>
    <script type="text/javascript">
        function checklogin() {
            var user = document.getElementById("account").value;
            var pass = document.getElementById("password").value;
            var check=1;
            if (user=='') {
                document.getElementById("err-user").innerHTML="! Tài khoản không được trống";
                check = 0;
            }
            if (pass=='') {
                document.getElementById("err-pass").innerHTML="! Mật khẩu không được trống";
                check = 0;
            }
            if (check == 1) {
                document.getElementById("login").type="submit";
            }
        }
    </script>
    
</body>
</html>