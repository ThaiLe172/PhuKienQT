<!DOCTYPE html>
<html lang="en">
    <?php
        include("head.php");
    ?>
<body>
    <?php
        include("navbar.php");
    ?>
    
    <div class="container d-flex flex-column mt-2" >
        <?php
            if (isset($_SESSION['MSKH'])) {
                $user = $_SESSION['MSKH'];
                $sql0 = $conn->query("SELECT * FROM khachhang WHERE MSKH ='$user'");
                $row0 = $sql0->fetch_assoc();
                $sql = $conn->query("SELECT * FROM dathang as a, chitietdh as b WHERE a.MSKH = '$user' and a.TrangThai='wait' and a.SoDonDH=b.MaDH");
                while($row=$sql->fetch_assoc()){
                $sodh = $row['SoDonDH'];
                $mshh = $row['Mahh'];
                $sql3 = $conn->query("SELECT * FROM hanghoa WHERE MSHH = '$mshh'");
                $row3 = $sql3->fetch_assoc();
        ?>
        <div class="row">
            <div class="col">     
            </div>
            <div class="col">
                <img class="img-thumbnail" src="../image/img/<?php echo $row3['Hinh'] ; ?>">
            </div>
            <div class="col">
                <h5><?php echo $row3['TenHH'] ; ?></h5><br>
                <h6 class="text-danger mb-5" id="B<?php echo $row['MaDH']; ?>"><?php echo number_format($row3['Gia']).''.' đ' ; ?></h6>
                <input type="hidden" id='A<?php echo $row['MaDH']; ?>' value='<?php echo $row3['Gia']; ?>'>
                <div class="buttons_added mb-4">
<!--                     <input class="minus is-form" onclick="checkminus()" type="button" value="-"> -->
                    <input id="<?php echo $row['MaDH']; ?>" aria-label="quantity" class="input-qty" type="text" onchange="udsolg('<?php echo $row['MaDH']; ?>')">
<!--                     <input class="plus is-form" onclick="checkplus()" type="button" value="+"> -->
                </div>
                <a class="btn btn-primary" href="xuli_pay.php?id=<?php echo $mshh ; ?>">Xóa khỏi giỏ hàng</a>
            </div>
            <div class="col"> 
            </div>
        </div>
        <?php
        }
        ?>
         <div class="p-5">
            <form action="xuli_dathang.php" method="POST">
                <div class="form-group">
                    <label for="name">Họ tên khách hàng:</label>
                    <input type="text" class="form-control" id="name" name="name" value="<?php echo $row0['HoTenKH'] ; ?>">
                </div>
                <div class="form-group">
                    <label for="phone">Số điện thoại:</label>
                    <input type="text" class="form-control" id="phone" name="phone" value="<?php echo $row0['SoDienThoai'] ; ?>">
                </div>
                <div class="form-group">
                  <label for="address">Địa chỉ:</label>
                  <input type="text" class="form-control" id="address" name="address" value="<?php echo $row0['DiaChi'] ; ?>">
                </div>
                <div class="form-group">
                    <label for="note">Ghi chú:</label>
                    <input type="text" class="form-control" id="note" placeholder="Ghi chú khi giao hàng..." name="note">
                  </div>
                <button type="submit" class="btn btn-success btn-block">Đặt hàng</button>
              </form>
        </div>
<!-- Khi khong dang nhap -->
        <?php
            }
            else { 
            $mshh = $_GET['id'];
            $sql = $conn->query("SELECT * FROM hanghoa WHERE MSHH = '$mshh'");
            $row= $sql->fetch_assoc();          
        ?>
        <div class="row">
            <div class="col">     
            </div>
            <div class="col">
                <img class="img-thumbnail" src="../image/img/<?php echo $row['Hinh'] ; ?>">
            </div>
            <div class="col">
                <h5><?php echo $row['TenHH'] ; ?></h5><br>
                <h6 class="text-danger mb-5"><?php echo number_format($row['Gia']).''.' đ' ; ?></h6>
                <div class="buttons_added">
                    <input class="minus is-form" type="button" value="-">
                    <input aria-label="quantity" class="input-qty" max="10" min="1" name="" type="number" value="">
                    <input class="plus is-form" type="button" value="+">
                </div>
            </div>
            <div class="col"> 
            </div>
        </div>
        <div class="p-5">
            <form action="xuli_dathang.php" method="POST">
                <div class="form-group">
                    <label for="name">Họ tên khách hàng:</label>
                    <input type="text" name="name" class="form-control" id="name" placeholder="Nhập họ tên...">
                    <span id="err-name" class="bg-white text-danger"></span>
                </div>
                <div class="form-group">
                    <label for="phone">Số điện thoại:</label>
                    <input type="text" name="phone" class="form-control" id="phone" placeholder="Nhập số điện thoại...">
                    <span id="err-phone" class="bg-white text-danger"></span>
                </div>
                <div class="form-group">
                  <label for="address">Địa chỉ:</label>
                  <input type="text" name="address" class="form-control" id="address" placeholder="Nhập địa chỉ...">
                  <span id="err-address" class="bg-white text-danger"></span>
                </div>
                <div class="form-group">
                    <label for="note">Ghi chú:</label>
                    <input type="text" class="form-control" id="note" placeholder="Ghi chú khi giao hàng..." name="note">
                  </div>
                <button type="button" id="dathang" onclick="checkdathang()" class="btn btn-success btn-block">Đặt hàng</button>
                <p class='text-center mt-3'>Đặt hàng nhanh hơn khi</p>
                <a href='login.php' class='btn btn-success btn-block'>Đăng nhập</a>
              </form>
        </div>
        <?php
            }
        ?>

    </div>
    <script type="text/javascript">
        function checkdathang() {
            var name=document.getElementById("name").value;
            var phone=document.getElementById("phone").value;
            var address=document.getElementById("address").value;
            var check=1;
            if (name=="") {
                document.getElementById("err-name").innerHTML="Tên khách hàng không được trống!";
                check=0;
            }
            if (phone=="") {
                document.getElementById("err-phone").innerHTML="Số điện thoại không được trống!";
                check=0;
            }
            if (address=="") {
                document.getElementById("err-address").innerHTML="Địa chỉ không được trống!";
                check=0;
            }
            if (check==1) {
                document.getElementById("dathang").type="submit";
            }
        }
        function udsolg(madh) {
            var xmlhttp;
            var solg=document.getElementById(madh).value;
            var gia= document.getElementById("A"+madh).value;
            if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp=new XMLHttpRequest();
            } else { // code for IE6, IE5
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            document.getElementById("B"+madh).innerHTML=xmlhttp.responseText;
            }
            }
            xmlhttp.open("GET","updatesl.php?id="+madh+"&sl="+solg+"&gia="+gia,true);
            xmlhttp.send();
        }
    </script>
</body>
</html>