<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <?php 
      include("ketnoi.php");
      session_start();
    ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phụ Kiện QT</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../codeCSS/registration.css">
</head>

<body>
    <div class="container-fluid bg">
        <div class="row justify-content-center">
            <div class="col-md-3 col-sm-6 col-xs-12 row-container">
                <form action="xuli_registration.php" method="POST">
                    <h1>Đăng ký</h1>
                    <div class="form-group">
                        <input type="text" id="name" name="txName" class="form-control"placeholder="Nhập họ và tên">
                        <span id="err-name" class="text-danger"></span>
                    </div>
                    <div class="form-group">
                        <input type="text" id="user" name="txUsername" class="form-control"placeholder="Nhập tài khoản">
                        <span id="err-user" class="text-danger"></span>
                    </div>
                    <div class="form-group">
                        <input type="password" id="pass" name="txPassword" class="form-control"placeholder="Nhập mật khẩu">
                        <span id="err-pass" class="text-danger"></span>
                    </div>
                    <div class="form-group">
                        <input type="password" id="repass" name="txRepassword" class="form-control"placeholder="Nhập lại mật khẩu">
                        <span id="err-repass" class="text-danger"></span>
                    </div>
                    <div class="form-group">
                        <input type="text" id="phone" name="txPhone" class="form-control"placeholder="Nhập số điện thoại">
                        <span id="err-phone" class="text-danger"></span>
                    </div>
                    <div class="form-group">
                        <input type="text" id="address" name="txAddress" class="form-control" placeholder="Địa chỉ">
                        <span id="err-address" class="text-danger"></span>
                    </div>
                    <button type="button" id="register" onclick="checkregister()" value="Đăng ký" class="btn btn-success btn-block" name="registration">Đăng ký</button>
                    <button type="submit" value="Hủy" class="btn btn-success btn-block cancle" name="cancle">Hủy</button>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function checkregister(){
            var name = document.getElementById("name").value;
            var user = document.getElementById("user").value;
            var pass = document.getElementById("pass").value;
            var repass = document.getElementById("repass").value;
            var phone = document.getElementById("phone").value;
            var address = document.getElementById("address").value;
            var check = 1 ;
            // var checkphone = /^[0-9]{10}+$/;
            if (name=='') {
                document.getElementById("err-name").innerHTML="! Tên không được trống";
                check = 0;
            }
            if (user=='') {
                document.getElementById("err-user").innerHTML="! Tài khoản không được trống";
                check = 0;
            }
            if (pass=='') {
                document.getElementById("err-pass").innerHTML="! Mật khẩu không được trống";
                check = 0;
            }
            if (repass=='') {
                document.getElementById("err-repass").innerHTML="! Mật khẩu không được trống";
                check = 0;
            }else if (pass!=repass) {
                document.getElementById("err-repass").innerHTML="! Mật khẩu không khớp";
                check = 0;
            }
            if (phone=='') {
                document.getElementById("err-phone").innerHTML="! Số điện thoại không được trống";
                check = 0;
            } 
            // else if (!checkphone.test(phone)) {
            //     document.getElementById("err-phone").innerHTML="! Số điện thoại phải đủ 10 chữ số.";
            //     check = 0;
            // }
            if (address=='') {
                document.getElementById("err-address").innerHTML="! Địa chỉ không được trống";
                check = 0;
            }
            if (check==1) {
                document.getElementById("register").type="submit";
            }
        }
    </script>
    
</body>
</html>