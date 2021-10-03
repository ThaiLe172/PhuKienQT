<?php
    session_start();
    include("ketnoi.php");
    if(isset($_POST['dangki'])) {
        $msnv = $_POST['msnv'];
        $ten = $_POST['name'];
        $pass = $_POST['pass'];
        $pass2 = $_POST['repass'];
        $diachi = $_POST['address'];
        $sdt = $_POST['phone'];
        $dongy = $_POST['accept'];
        if($pass!=$pass2) {
            echo "Mật khẩu nhập lại không đúng. <a href='javascript: history.go(-1)'>Trở lại</a>";
            exit;
        }
        $sql = $conn->query("SELECT * FROM nhanvien WHERE MSNV ='$msnv'");
        if($sql->num_rows!=0) {
            echo "Mã số nhân viên đã tồn tại. <a href='javascript: history.go(-1)'>Trở lại</a>";
            exit;
        }
        $result = $conn->query("INSERT INTO nhanvien (MSNV, HoTenNV, DiaChiNV, SoDienThoai, MKNV)
        VALUES ('$msnv','$ten','$diachi','$sdt','$pass')");
        if($result) {
            $_SESSION['MSNV']=$msnv;
            header("location: ../index.php");
            exit;
        }
    die();
    }
?>