<?php 
	$db_hostname='localhost';
	$db_user='root';
	$db_pass='';
	$db_name='db_banhang';

	$conn = mysqli_connect($db_hostname,$db_user,$db_pass,$db_name);
	if (!$conn) {
		die('Không thể kết nối: ' . msqli_error($conn));
		exit();
	}
 ?>