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
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Thông tin sản phẩm
    </div>
    <form>
      <div class="row w3-res-tb">
        <div class="col-sm-5 m-b-xs">
          <select class="input-sm form-control w-sm inline v-middle">
            <option value="0">Bulk action</option>
            <option value="1">Delete selected</option>
            <option value="2">Bulk edit</option>
            <option value="3">Export</option>
          </select>
          <button class="btn btn-sm btn-default">Apply</button>                
        </div>
        <div class="col-sm-4">
        </div>
        <div class="col-sm-3">
          <div class="input-group">
            <input type="text" name="textsearch" class="input-sm form-control" placeholder="Search">
            <span class="input-group-btn">
              <button class="btn btn-sm btn-default" name="search" type="submit">Tìm kiếm</button>
            </span>
          </div>
        </div>
      </div>
    </form>
    <div class="table-responsive">
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th style="width:20px;">
              <!-- <label class="i-checks m-b-none">
                <input type="checkbox"><i></i>
              </label> -->
            </th>
            <th>MSHH</th>
            <th>Tên sản phẩm</th>
            <th>Hình ảnh</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th style="width:20px;"></th>
            <th style="width:20px;"></th>
          </tr>
        </thead>
        <tbody>
          <?php
            $sql = $conn->query("SELECT * FROM hanghoa");
            while($row = $sql->fetch_assoc()) {
              echo "<tr>";
              echo "<td><label class='i-checks m-b-none'><input type='checkbox' name='post[]'><i></i></label></td>";
              echo "<td>".$row['MSHH']."</td>";
              echo "<td>".$row['TenHH']."</td>";
              echo "<td><img style='width:70px;' src='../image/img/".$row['Hinh']."'/></td>";
              echo "<td>".$row['Gia']." ₫</td>";
              echo "<td>".$row['SoLuongHang']."</td>";
              $id = $row['MSHH'];
              echo "<td>
                        <a href='edit_sp.php?id=$id'><i class='fa fa-check text-success text-active'></i></a>
                    </td";
              echo "</tr>";
              echo "<td>
                        <a href='xuli_admin/xoasp.php?id=$id'><i class='fa fa-times text-danger text'></i></a>
                    </td";
              echo "</tr>";
            }
          ?>                                         
        </tbody>
      </table>
    </div>
    <!-- <footer class="panel-footer">
      <div class="row">
        
        <div class="col-sm-5 text-center">
          <small class="text-muted inline m-t-sm m-b-sm">showing 20-30 of 50 items</small>
        </div>
        <div class="col-sm-7 text-right text-center-xs">                
          <ul class="pagination pagination-sm m-t-none m-b-none">
            <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
            <li><a href="">1</a></li>
            <li><a href="">2</a></li>
            <li><a href="">3</a></li>
            <li><a href="">4</a></li>
            <li><a href=""><i class="fa fa-chevron-right"></i></a></li>
          </ul>
        </div>
      </div>
    </footer> -->
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
