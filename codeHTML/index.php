<!DOCTYPE html>
<html lang="en">
    <?php
        include("head.php");
    ?>
<body>
    <?php
        include("navbar.php");
    ?>
<!--Carousel-->
    <form action="xuli_index.php" method="POST">
        <div id="slides" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#slides" data-slide-to="0" class="active"></li>
            <li data-target="#slides" data-slide-to="1"></li>
            <li data-target="#slides" data-slide-to="2"></li>
            <li data-target="#slides" data-slide-to="3"></li> 
        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../image/carousel/carousel(1).png" width="200px" height="150px">
                <div class="carousel-caption">
                    <h1 class="display2">PHỤ KIỆN QT</h1>
                    <h4>Sự hài lòng của khách hàng là niềm vui của chúng tôi</h4>     
                </div>
            </div>
            <div class="carousel-item">
                <img src="../image/carousel/carousel(2).png" width="200px" height="150px">
            </div>
            <div class="carousel-item">
                <img src="../image/carousel/carousel(3).png" width="200px" height="150px">
            </div>
            <div class="carousel-item">
                <img src="../image/carousel/carousel(4).png" width="200px" height="150px">
            </div>
            <div>
                <a class="carousel-control-prev" href="#slides" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                  </a>
                <a class="carousel-control-next" href="#slides" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>
    </div>
    </form>
<!--Brand-->
    <div class="btn-group" role="group" aria-label="Basic example">
    <?php
        $sqll = $conn->query("SELECT * FROM brand WHERE MaNhom='PN'");
        while ($roww = $sqll->fetch_assoc()) {
    ?>
            <a class="btn btn-secondary ml-1" href="brand.php?id=<?php echo $roww['Hang'] ; ?>"><img src="../image/brand/<?php echo $roww['Logo'] ; ?>"></a>
    <?php
        }
    ?>
    </div>
<!--New Product-->
    <div class="container">
        <h2>Sản phẩm mới nhất:<span class="badge badge-secondary">New</span></h2>
        <div class="row">
            <div class="col">
                <?php 
                      $sql = "SELECT * FROM hanghoa WHERE MaNhom = 'PN' ORDER BY MSHH";
                      $result = mysqli_query($conn,$sql);
                      while ($row = $result -> fetch_array(MYSQLI_NUM)) {
                        $idsp=$row[0];
                        $slg = $row[3];
                ?>
                <div class="card float-left mt-2 mr-2 shadow-lg" style="width: 19%; height: 410px;">
                    <div class="card-header p-0" >
                        <?php echo "<a href='./product.php?id=$idsp'><img class='card-img-top' height=190px src='../image/img/".$row[5]."'alt='Card image cap'></a>"; ?>
                    </div>
                    <div class="card-body p-0">
                        <?php echo "<h5 class='card-title'><a href='./product.php?id=$idsp'>".$row[1]."</a></h5>"; ?>
                    </div>
                    <div class="card-footer p-0">
                        <?php echo "<p class='card-text text-danger'>".number_format($row[2]).''.' đ'."</p>"; ?>
                        <?php
                            if ($slg > 0) {
                        ?>
                        <a href="xuli_product.php?id=<?php echo $idsp;?>" class="stretched-link btn btn-primary mb-1 ml-1" style="width: 200px;">Thêm vào giỏ</a>
                        <?php
                            }
                            else {
                        ?>
                        <button type="button" onclick="checksp()" class="btn btn-primary mb-1 ml-1 bg-danger" style="width: 200px;">Sản phẩm đã hết</button>
                        <?php 
                            }
                        ?>
                    </div>
                </div>
                <?php 
                    }
                ?>
            </div>
        </div>
    </div>
<!--Highlights Product-->
    <div class="container">
        <h2>Sản phẩm bán chạy nhất:<span class="badge badge-secondary">New</span></h2>
        <div class="row">
            <div class="col">
                <?php 
                      $sql = "SELECT * FROM hanghoa WHERE MaNhom = 'BS' ORDER BY MSHH";
                      $result = mysqli_query($conn,$sql);
                      while ($row = $result -> fetch_array(MYSQLI_NUM)) {
                        $idsp=$row[0];
                        $slg = $row[3];
                ?>
                <div class="card float-left mt-2 mr-2 shadow-lg" style="width: 19%; height: 410px;">
                    <div class="card-header p-0" >
                        <?php echo "<a href='./product.php?id=$idsp'><img class='card-img-top' height=190px src='../image/img/".$row[5]."'alt='Card image cap'></a>"; ?>
                    </div>
                    <div class="card-body p-0">
                        <?php echo "<h5 class='card-title'><a href='./product.php?id=$idsp'>".$row[1]."</a></h5>"; ?>
                    </div>
                    <div class="card-footer p-0">
                        <?php echo "<p class='card-text text-danger'>".number_format($row[2]).''.' đ'."</p>"; ?>
                        <?php
                            if ($slg > 0) {
                        ?>
                        <a href="xuli_product.php?id=<?php echo $idsp;?>" class="stretched-link btn btn-primary mb-1 ml-1" style="width: 200px;">Thêm vào giỏ</a>
                        <?php
                            }
                            else {
                        ?>
                        <button type="button" onclick="checksp()" class="btn btn-primary mb-1 ml-1 bg-danger" style="width: 200px;">Sản phẩm đã hết</button>
                        <?php 
                            }
                        ?>
                    </div>
                </div>
                <?php 
                    }
                ?>
            </div>
        </div>
    </div>
    <hr>
<!--Footter-->
    <div class="container">
        <div class="row Footter">
            <div class="col">
                <a href="#">Mua hàng và thanh toán Online</a><br>
                <a href="#">Mua hàng trả góp Online</a><br>
                <a href="#">Hủy giao dịch và đổi trả</a><br>
                <a href="#">Thông tin đơn hàng</a><br>
                <a href="#">Tra thông tin bảo hành</a><br>
                <a href="#">Trung tâm bảo hành chính hãng</a>
            </div>
            <div class="col">
                <a href="#">Chính sách bảo hành</a><br>
                <a href="#">Chính sách sử dụng</a><br>
                <a href="#">Chính sách bảo mật</a><br>
                <a href="#">Liên hệ hợp tác kinh doanh</a><br>
                <a href="#">Ưu đãi từ đối tác</a><br>
                <a href="#">Tuyển dụng</a>
            </div>
            <div class="col">
                <a href="#">Gọi mua hàng: <b style="color: lightgreen;">1800.2097</b> (8h00 - 22h00)</a><br>
                <a href="#">Gọi khiếu nại: <b style="color: lightgreen;">1800.2063</b> (8h00 - 21h30)</a><br>
                <a href="#">Gọi bảo hành: <b style="color: lightgreen;">1800.2064</b> (8h00 - 21h00)</a><br>
                <!-- <a href="#">Chính sách bảo hành</a><br>
                <a href="#">Chính sách bảo hành</a><br>
                <a href="#">Chính sách bảo hành</a> -->
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function checksp() {
            alert("Sản phẩm đã hết. Quí khách vui lòng chọn sản phẩm khác!");
        }
    </script>
</body>
</html>