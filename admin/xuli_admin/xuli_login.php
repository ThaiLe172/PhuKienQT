<?php
    session_start();
    include("ketnoi.php");
        if(isset($_POST['login'])) {
            $user = $_POST['taikhoan'];
            $pass = $_POST['matkhau'];
            $sql = $conn->query("SELECT * FROM nhanvien WHERE MSNV='$user'");
            $result = $sql->fetch_assoc();
            // if(!$user||!$pass) {
            //     echo ("Nhập đầy đủ tài khoản mật khẩu. <a href='javascript: history.go(-1)'>Trở lại</a>");
            //     exit;
            // }
            if($sql->num_rows==0) {
                echo ("Tài khoản không tồn tại. <a href='javascript: history.go(-1)'>Trở lại</a>");
                exit;
            }
            if($pass!=$result['MKNV']) {
                echo ("Mật khẩu không chính xác. <a href='javascript: history.go(-1)'>Trở lại</a>");
                exit;
            }
            $_SESSION['loggin'] = 'true';
            $_SESSION['MSNV']=$user;
            header("location: ../index.php");
        exit();
        }
?>