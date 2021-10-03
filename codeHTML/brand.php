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
    
<!--Brand-->
    <!-- <div class="btn-group" role="group" aria-label="Basic example">
        <button type="button" class="btn btn-secondary"><img src="../image/samsung.png"></button>
        <button type="button" class="btn btn-secondary"><img src="../image/iphone.png"></button>
        <button type="button" class="btn btn-secondary"><img src="../image/xiaomi.png"></button>
        <button type="button" class="btn btn-secondary"><img src="../image/oppo.png"></button>
        <button type="button" class="btn btn-secondary"><img src="../image/vivo.png"></button>
        <button type="button" class="btn btn-secondary"><img src="../image/oneplus.png"></button>
    </div> -->
<!--New Product-->
    <div class="container">
<!--         <h2>Sản phẩm mới nhất:<span class="badge badge-secondary">New</span></h2> -->
         <div class="row">
         	<div class="col">
         	<?php
         		$hang = $_GET['id'];
         		$sql = $conn->query("SELECT * FROM hanghoa WHERE TenHH LIKE '%$hang%'");
         		while ($row = $sql->fetch_assoc()) {
         		$idsp=$row['MSHH'];
                $slg = $row['SoLuongHang']; 
         	?>
         	<div class="card float-left mt-2 mr-2 shadow-lg" style="width: 19%; height: 410px;">
         		<div class="card-header p-0" >
         			 <?php echo "<a href='./product.php?id=$idsp'><img class='card-img-top' height=190px src='../image/img/".$row['Hinh']."'alt='Card image cap'></a>"; ?>
         		</div>
         		<div class="card-body p-0">
         			<?php echo "<h5 class='card-title'><a href='./product.php?id=$idsp'>".$row['TenHH']."</a></h5>"; ?>
                </div>
                <div class="card-footer p-0">
                	<?php echo "<p class='card-text text-danger'>".number_format($row['Gia']).''.' đ'."</p>"; ?>
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
            <!-- <div class="col">
                <div class="card">
                    <a href="#"><img class="card-img-top" src="../image/imghp/imghp(0).png" alt="Card image cap"></a>
                    <div class="card-body">
                      <h5 class="card-title"><a href="#">Tai nghe Bluetooth Samsung Galaxy Buds Live</a></h5>
                      <p class="card-text">2.890.000 ₫</p>
                      <a href="#" class="btn btn-primary">Thêm vào giỏ hàng</a>
                    </div>
                  </div>
            </div> -->          
        </div>
        </div>
    </div>
</body>
</html>