<!DOCTYPE html>
<html lang="en">
    <?php
        include("head.php");
    ?>
<body>
    <?php
        include("navbar.php");
    ?>
<!--product info-->

<hr>
    <div class="container" >
        <div class="row">
            <?php 
                $mshh = $_GET['id'];
                $sql = $conn->query("SELECT * FROM hanghoa WHERE MSHH = '$mshh'");
                $row = $sql->fetch_assoc();
                $sql2 = $conn->query("SELECT SoLuongHang FROM hanghoa WHERE MSHH = '$mshh'");
                $data = mysqli_fetch_all($sql2);
                $sql3 = $conn->query("SELECT MSHH FROM hanghoa WHERE MSHH ='$mshh'");
                $data2 = mysqli_fetch_all($sql3);
            ?>
            <div class="col">
                <h4><?php echo $row['TenHH']; ?></h4>
                <hr>
                <div class="fakeimg"><?php echo "<img src='../image/img/".$row['Hinh']."'>"?></div>
              
            </div>
            <div class="col">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                <span class="fa fa-star"></span>
                <h4 id="money"><?php echo "<p class='card-text text-danger'>".number_format($row['Gia']).''.' đ'."</p>";?></h4>
                <?php echo "<a class='btn btn-success btn-block buy' name='buy' id='buy' onclick='checkdh()' >MUA NGAY</a>"; ?>
            </div>
            <div class="col">
                <?php
                    $sql2 = $conn->query("SELECT * FROM thongso WHERE mahh='$mshh'");
                    $row2 = $sql2->fetch_assoc();
                ?>
                <table class="table">
                    <tr>
                        <th></th>
                        <th>Thông số kỹ thuật</th>
                    </tr>
                    <?php
                        if ($row2['hangsx']!='') {
                            echo "<tr>";
                            echo "<th style='width: 100px;'>Hãng sản xuất</th>";
                            echo "<td>".$row2['hangsx']."</td>";
                            echo "</tr>";
                        }
                        if ($row2['trongluong']!='') {
                            echo "<tr>";
                            echo "<th>Trọng lượng</th>";
                            echo "<td>".$row2['trongluong']."</td>";
                            echo "</tr>";
                        }
                        if ($row2['chatlieu']!='') {
                            echo "<tr>";
                            echo "<th>Chất liệu</th>";
                            echo "<td>".$row2['chatlieu']."</td>";
                            echo "</tr>";
                        }
                        if ($row2['kichthuoc']!='') {
                            echo "<tr>";
                            echo "<th>Kích thước</th>";
                            echo "<td>".$row2['kichthuoc']."</td>";
                            echo "</tr>";
                        }
                        if ($row2['mota']!='') {
                            echo "<tr>";
                            echo "<th>Đặc điểm khác</th>";
                            echo "<td>".$row2['mota']."</td>";
                            echo "</tr>";
                        }
                    ?>
                </table>
            </div>
            <div>
                <?php
                    echo "<h6>".$row['MoTaHH']."</h6>";
                ?>
            </div>
            
        </div>
    </div>
<script>
var a = <?= json_encode($data); ?>;
var a2 = <?= json_encode($data2); ?>;
    function checkdh(){
        if(a==0){
            alert("Sản phẩm tạm hết hàng. Quí khách vui lòng chọn sản phẩm khác!!!");
        }
        else {
            document.getElementById("buy").href="xuli_product.php?id="+a2;
        }
    }
</script>
</body>
</html>