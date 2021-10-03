<?php
    session_start();
    include("ketnoi.php");
    if(isset($_POST['login'])){
        $user= $_POST['txUsername'];
        $pass= $_POST['txPassword'];
        $result = $conn->query("SELECT * from khachhang WHERE MSKH='$user'");
        if($result->num_rows==0){
?>
    <script type="text/javascript">
        alert("Tên đăng nhập không đúng! Vui lòng nhập lại!");
        history.go(-1);
    </script>
<?php
            exit;
        }
        $row = $result->fetch_assoc();
        if($pass != $row['MatKhau']){
?>
    <script type="text/javascript">
        alert("Mật khẩu không đúng! Vui lòng nhập lại!");
        history.go(-1);
    </script>
<?php
            exit;
        }
        $_SESSION['loggin'] = 'true';
        $_SESSION['MSKH']=$user;
        header("location: index.php");
    die();
    }

    if(isset($_POST['registration'])){
        header("location: registration.php");
        exit;
    }

    if (isset($_POST['cancle'])) {
        header("location: index.php");
        exit;
    }
?>