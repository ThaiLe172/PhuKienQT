<!DOCTYPE html>
<html lang="en">
    <?php
        include("head.php");
    ?>
<body>
    <?php
        include("navbar.php");
    ?>
    <!-- <div class="btn-group" role="group" aria-label="Basic example">
    <?php
        $sqll = $conn->query("SELECT * FROM brand WHERE MaNhom='SC'");
        while ($roww = $sqll->fetch_assoc()) {
    ?>
    <button type="button" class="btn btn-secondary ml-1"><img src="../image/brand/<?php echo $roww['Logo'] ; ?>"></button>
    <?php
        }
    ?>
    </div> -->
    <div class="container">
        <div class="row">
            <div class="col">
                <?php 
                      $sql = "SELECT * FROM hanghoa WHERE MaNhom = 'OL' ORDER BY MSHH";
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
    <script type="text/javascript">
        function checksp() {
            alert("Sản phẩm đã hết. Quí khách vui lòng chọn sản phẩm khác!");
        }
    </script>
</body>
</html>