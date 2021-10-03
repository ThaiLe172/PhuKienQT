<?php
	include("ketnoi.php");
	session_start();
	$user = $_SESSION["MSKH"];
	$name = $_POST["name"];
	$phone = $_POST["phone"];
	$address = $_POST["address"];
	$note = $_POST["note"];
	$sql = $conn->query("UPDATE khachhang SET HoTenKH='$name', DiaChi='$address', SoDienThoai='$phone' WHERE MSKH='$user'");
	$sql1 = $conn->query("UPDATE dathang SET TrangThai='shipping' WHERE MSKH='$user' and TrangThai='wait'");
	if ($sql&&$sql1) {
?>
	<script type="text/javascript">
		alert("Đặt hàng thành công!");
		window.location.href="index.php";
	</script>
<?php
	}
?>
