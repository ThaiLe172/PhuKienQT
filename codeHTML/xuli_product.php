<?php
	session_start();
	include("ketnoi.php");
	if (isset($_SESSION['MSKH'])) {
		$mshh = $_GET['id'];
		$user = $_SESSION['MSKH'];
		$sl = 1;
		$tt = "wait";
		$sql1 = $conn->query("SELECT * FROM hanghoa WHERE MSHH='$mshh'");
		$row1 = $sql1->fetch_assoc();
		$gia = $row1['Gia'];
		$sluong = $row1['SoLuongHang']-1;
		$sql2 = $conn->query("SELECT * FROM khachhang WHERE MSKH='$user'");
		$row2 = $sql2->fetch_assoc();
		$result1 = $conn->query("INSERT INTO dathang (MSKH, TrangThai) VALUES ('$user','$tt')");
		if ($result1) {
			$sql3 = "SELECT MAX(SoDonDH) FROM dathang WHERE MSKH='$user'";
			$result3 = mysqli_query($conn,$sql3);
			$row3 = $result3->fetch_array(MYSQLI_NUM);
			$madh = $row3[0];
			$result2= $conn->query("INSERT INTO chitietdh (Mahh, SoLuong, Tong, MaDH) VALUES ('$mshh','$sl','$gia','$madh')");
			if ($result2) {
				$sql4 = $conn->query("UPDATE hanghoa SET SoLuongHang = $sluong WHERE MSHH='$mshh'");
			}
		}
	header("location: pay.php");
	}
	else {
	$mahh = $_GET['id'];
	header("location: pay.php?id=$mahh");
	}
?>