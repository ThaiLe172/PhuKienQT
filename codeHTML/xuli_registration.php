<?php
    session_start();
    include("ketnoi.php");
    if(isset($_POST['registration'])){
        include('ketnoi.php');
        $ten = $_POST['txName'];
        $user = $_POST['txUsername'];
        $pass = $_POST['txPassword'];
        $repass = $_POST['txRepassword'];
        $phone = $_POST['txPhone'];
        $address = $_POST['txAddress'];
        $result = $conn->query("SELECT MSKH FROM khachhang WHERE MSKH = '$user'");
        if($result->num_rows >0){
?>
    <script type="text/javascript">
        alert("Tên đăng nhập đã được sử dụng. Vui lòng nhập tên đăng nhập khác!");
        history.go(-1);
    </script>
<?php
            // echo "Tài khoản đã tồn tại. Vui lòng điền tên đăng nhập khác. <a href='javascript: history.go(-1)'>Trở lại</a>";
            exit;
        }
        $result = $conn->query("SELECT SoDienThoai FROM khachhang WHERE SoDienThoai = '$phone' ");
        if($result->num_rows >0){
?>
    <script type="text/javascript">
        alert("Số điện thoại đã được sử dụng. Vui lòng nhập số điện thoại khác!");
        history.go(-1);
    </script>
<?php
            // echo "Số điện thoại đã được sử dụng. Vui lòng nhập số điện thoại khác. <a href='javascript: history.go(-1)'>Trở lại</a>";
            exit;
        }
        $result = $conn->query("INSERT INTO khachhang (MSKH, HoTenKH, DiaChi, SoDienThoai, MatKhau)
        VALUES ('$user','$ten','$address','$phone','$pass')");
        if($result){
            $_SESSION['MSKH'] = $user;
            header("location: login.php");
            exit;
        }
        else {
            echo "Đăng ký thất bại. <a href='./registration.php'>Đăng ký lại</a>";
            exit;
        }
    }
    
    if(isset($_POST['cancle'])){
        header("location: login.php");
        die();
    }
?>