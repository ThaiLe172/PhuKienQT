<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
<?php
    session_start();
    include("xuli_admin/ketnoi.php");
?>
<title>Phụ kiện QT - MarCo ThaiS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
</head>
<body>

<?php
if($_SESSION['MSNV']) {
    include("head.php");
?>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
     THÔNG TIN TÀI KHOẢN KHÁCH HÀNG
    </div>
    <div>
      <table class="table" ui-jq="footable" ui-options='{
        "paging": {
          "enabled": true
        },
        "filtering": {
          "enabled": true
        },
        "sorting": {
          "enabled": true
        }}'>
        <thead>
          <tr>
            <th data-breakpoints="xs">MSKH</th>
            <th>Họ tên khách hàng</th>
            <th>Địa chỉ khách hàng</th>
            <th data-breakpoints="xs">Số điện thoại</th>
            <th data-breakpoints="xs">Mật khẩu</th>
          </tr>
        </thead>
        <tbody>
            <?php
                $sql = $conn->query("SELECT * FROM khachhang");
                while($row=$sql->fetch_assoc()){
                    echo "<tr data-expanded='true'>";
                    echo "<td>".$row['MSKH']."</td>";
                    echo "<td>".$row['HoTenKH']."</td>";
                    echo "<td>".$row['DiaChi']."</td>";
                    echo "<td>".$row['SoDienThoai']."</td>";
                    echo "<td>".$row['MatKhau']."</td>";
                    echo "</tr>";
                }
            ?>                                                          
        </tbody>
      </table>
    </div>
  </div>
</div>
</section>
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
      <p>Website bán hàng Phụ kiện QT | Người thực hiện <a href="#">Lê Quốc Thái</a></p>
			</div>
		  </div>
  <!-- / footer -->
</section>

<!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<?php }
  else {
    header("location: login.php");
  }
?>
</body>
</html>
