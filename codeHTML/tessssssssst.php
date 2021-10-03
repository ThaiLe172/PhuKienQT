<div class="row">
        <?php
            $mshh = $_GET['id'];
            $sql = $conn->query("SELECT * FROM hanghoa WHERE MSHH = '$mshh'");
            $result = $sql->fetch_assoc();
            echo "<div class='p-2 mx-auto col'>";
            echo "<h6>".$result['TenHH']."</h6>";
            echo "</div>";
            echo "<div class='p-2 mx-auto'>";
            echo "<img width=200px src='../image/img/".$result['Hinh']."'>";
            echo "</div>";
            echo "<div class='p-2 mx-auto'>";
            echo "<h5>".$result['Gia']." ₫</h5>";
            echo "</div>";
        ?>
    </div>