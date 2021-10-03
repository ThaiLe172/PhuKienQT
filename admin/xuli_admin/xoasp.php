<?php
    session_start();
    include("ketnoi.php");
    $mshh = $_GET['id'];
    $sql = $conn->query("DELETE FROM hanghoa WHERE MSHH = '$mshh'");
    if($sql) {
        echo "Thành công <a href='javascript: history.go(-1)'></a>";
        exit;
    }
?>