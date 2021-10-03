<?php
	session_start();
	include("ketnoi.php");
	if (isset($_SESSION['MSKH'])) {
		$mshh = $_GET['id'];
		$user = $_SESSION['MSKH'];
		$sql0 = $conn->query("SELECT * FROM hanghoa WHERE MSHH='$mshh'");
		$row0 = $sql0->fetch_assoc();
		$sl = $row0['SoLuongHang']+1;
		$sql = "SELECT MAX(SoDonDH) FROM dathang WHERE MSKH = '$user'";
		$result = mysqli_query($conn,$sql);
		$row = $result->fetch_array(MYSQLI_NUM);
		$sodh = $row[0];
		$sql2 = $conn->query("DELETE FROM chitietdh WHERE MaDH = '$sodh' and Mahh = '$mshh'");
		$sql1 = $conn->query("DELETE FROM dathang WHERE SoDonDH = '$sodh'");
		$sql3 = $conn->query("UPDATE hanghoa SET SoLuongHang=$sl WHERE MSHH = '$mshh'");
	}
	header("location: pay.php");
?>