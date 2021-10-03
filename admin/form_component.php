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
    include("head.php");
?>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="form-w3layouts">
            <!-- page start-->
            <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm khách hàng
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    <label for="makh">Mã số khách hàng (MSKH)</label>
                                    <input type="text" name="mskh" class="form-control" id="makh" placeholder="Nhập mã số">
                                </div>
                                <div class="form-group">
                                    <label for="tenkh">Họ tên khách hàng</label>
                                    <input type="text" name="namekh" class="form-control" id="tenkh" placeholder="Nhập họ tên">
                                </div>
                                <div class="form-group">
                                    <label for="address">Địa chỉ</label>
                                    <input type="text" name="address" class="form-control" id="address" placeholder="Nhập địa chỉ">
                                </div>
                                <div class="form-group">
                                    <label for="sdt">Số điện thoại</label>
                                    <input type="text" name="sodt" class="form-control" id="sdt" placeholder="Nhập số điện thoại">
                                </div>
                                <div class="form-group">
                                    <label for="pass">Mật khẩu</label>
                                    <input type="password" name="pass" class="form-control" id="pass" placeholder="Nhập mật khẩu">
                                </div>
                                <div class="form-group">
                                    <label for="img">Ảnh đại diện</label>
                                    <input type="file" name="image" id="img">
                                </div>
                                <input type="submit" name="submit" class="btn btn-info" value="Lưu">
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
            </div>           
            <!-- page end-->
        </div>
        
</section>
<!-- Đây là dòng git -->
<!-- Dòng 2 -->
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
</body>
</html>
