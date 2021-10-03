<?php
    session_start();
    include("ketnoi.php");
    if(isset($_POST['submit'])) {
        $mshh = $_POST['mshh'];
        $ten = $_POST['user'];
        $gia = $_POST['gia'];
        $solg = $_POST['soluong'];
        $nhom = $_POST['nhom'];
        $mota = $_POST['mota'];
        // $hinh = $_POST['image'];
        // $target_dir = "../../image/img/";//Thu muc luu file upload
        // $target_file = $target_dir.basename($_FILES[$hinh]["name"]);
        // move_uploaded_file($_FILES[$hinh]["tmp_name"], $target_file);
        $file_name_temp="../../image/img/";
        $file_tmp= isset($_FILES['image']['tmp_name']) ?$_FILES['image']['tmp_name'] :"";
        $file_name=isset($_FILES['image']['name']) ?$_FILES['image']['name'] :"";
        $file_name_real = $file_name_temp.$file_name;
        move_uploaded_file($file_tmp,$file_name_real);
        if(!$mshh||!$ten||!$gia||!$solg||!$nhom||!$mota) {
            echo "Vui lòng nhập đầy đủ thông tin. <a href='javascript: history.go(-1)'>Trở lại</a>";
            exit;
        }
        $sql = $conn->query("SELECT * FROM hanghoa WHERE MSHH='$mshh'");
        if($sql->num_rows!=0) {
            echo "Mã hàng hóa đã tồn tại. <a href='javascript: history.go(-1)'>Trở lại</a>";
            exit;
        }
        if($gia>100000000){
            echo "Giá vượt quá 100.000.000 VND. Vui lòng kiểm tra lại. <a href='javascript: history.go(-1)'>Trở lại</a>";
            exit;
        }
        $result = $conn->query("INSERT INTO hanghoa (MSHH, TenHH, Gia, SoLuongHang, MaNhom, Hinh, MoTaHH)
        VALUES ('$mshh','$ten','$gia','$solg','$nhom','$file_name','$mota')");
        if($result){
            echo "Thành công. <a href='../form_validation.php'>Tiếp tục</a>";
            exit;
        }
    die();
    }
?>