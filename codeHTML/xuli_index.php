<?php
	include("ketnoi.php");
  if (isset($_POST['login'])) {
    header("location: login.php");
  }
  if (isset( $_POST['submit']) && $_POST["search"] != '') {
    $search = $_POST['search'];
   	$query = "SELECT * FROM hanghoa WHERE TenHH like '%$search%'";
    $sql = mysqli_query($conn, $query);
    $num = mysqli_num_rows($sql);
    if ( $num > 0) {
      while($row = mysqli_fetch_array($sql)){
        $idsp=$row[0];
        $slg = $row[3];
?>
       <div class="card float-left mt-2 mr-2 shadow-lg" style="width: 19%; height: 410px;">
                    <div class="card-header p-0" >
                        <?php echo "<a href='./product.php?id=".$row['MSHH']."'><img class='card-img-top' height=190px src='../image/img/".$row['Hinh']."'alt='Card image cap'></a>"; ?>
                    </div>
                    <div class="card-body p-0">
                        <?php echo "<h5 class='card-title'><a href='./product.php?id=".$row['MSHH']."'>".$row['TenHH']."</a></h5>"; ?>
                    </div>
                    <div class="card-footer p-0">
                        <?php echo "<p class='card-text text-danger'>".number_format($row['Gia']).''.' đ'."</p>"; ?>
                        <?php
                            if ($slg > 0) {
                        ?>
                        <a href="xuli_product.php?id=<?php echo $idsp;?>" class="stretched-link btn btn-primary mb-1 ml-1" style="width: 206px;">Thêm vào giỏ</a>
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
    } 
    else {
?>
      <script>
          alert("Không có kết quả liên quan đến từ khóa!");
          history.go(-1);
      </script>
<?php
    }
    } 
    if ($search=='') {
?>
      <script>
          alert("Vui lòng nhập từ khóa tìm kiếm!");
          history.go(-1);
      </script>
<?php        
    }
?>
<script type="text/javascript">
      function checksp() {
           alert("Sản phẩm đã hết. Quí khách vui lòng chọn sản phẩm khác!");
       }
</script>