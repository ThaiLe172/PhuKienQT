<?php
	include("ketnoi.php");
	session_start();
	$madh = $_GET['id'];
	$solg = $_GET['sl'];
	$gia = $_GET['gia'];
	$tong = $gia*$solg;
	$sql = $conn->query("UPDATE chitietdh SET SoLuong='$solg', Tong='$tong' WHERE MaDH='$madh'");
	if ($sql) {
		echo number_format($tong).''.' đ';
	}
?>