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
if($_SESSION['MSNV']){
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
                            Thêm sản phẩm
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form" action="xuli_admin/themsp.php" method="POST" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="mahh">Mã số hàng hóa (MSHH)</label>
                                    <input type="text" name="mshh" class="form-control" id="mahh" placeholder="Nhập mã số hàng hóa">
                                </div>
                                <div class="form-group">
                                    <label for="tenhh">Tên hàng hóa</label>
                                    <input type="text" name="user" class="form-control" id="tenhh" placeholder="Nhập tên hàng hóa">
                                </div>
                                <div class="form-group">
                                    <label for="giahh">Giá</label>
                                    <input type="text" name="gia" class="form-control" id="giahh" placeholder="Nhập giá">
                                </div>
                                <div class="form-group">
                                    <label for="sl">Số lượng</label>
                                    <input type="text" name="soluong" class="form-control" id="sl" placeholder="Nhập số lượng">
                                </div>
                                <div class="form-group">
                                    <label class=" control-label" for="inputSuccess">Nhóm hàng hóa</label>
                                    <div class="col">
                                        <select name="nhom" class="form-control m-bot15">
                                            <option value="BS">BS - Sản phẩm bán chạy nhất</option>
                                            <option value="PN">PN - Sản phẩm mới nhất</option>
                                            <option value="TN">TN - Tai nghe</option>
                                            <option value="SC">SC - Sạc cáp</option>
                                            <option value="OL">OL - Ốp lưng</option>
                                            <option value="PDP">PDP - Pin dự phòng</option>
                                        </select>

                                        <!-- <select multiple="" class="form-control">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select> -->
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="mt">Mô tả</label>
                                    <input type="text" name="mota" class="form-control" id="mt" placeholder="Mô tả">
                                </div>
                                <div class="form-group">
                                    <label for="img">Hình ảnh sản phẩm</label>
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
    else{
        header("location: login.php");
    }
?>
</body>
</html>
