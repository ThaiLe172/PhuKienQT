<?php
	session_start();
	// if (isset($_SESION['MSKH'])) {
	// 	unset($_SESSION['MSKH']);
	// 	unset($_SESION['loggin']);
	// }
	session_destroy();
	header("location: ./index.php");

?>