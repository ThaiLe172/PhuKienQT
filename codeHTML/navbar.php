<nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
        <div class="container-fluid">
            <a class="navbar-branch" href="./index.php">
                <img src="../image/logo.png" height="50px"> 
            </a>
            <button class="navbar-toggler" type="button" data-toggler="collapse" data-target="#navbarResponsive">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="./index.php">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./listpd.php">Tai nghe</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./listcharge.php">Sạc-Cáp</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./listcase.php">Ốp lưng</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./listpin.php">Pin dự phòng</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0" action="search.php" method="POST">
                    <input class="form-control mr-sm-2" type="search" placeholder="Sản phẩm cần tìm..." aria-label="Search" name="search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="submit">Tìm kiếm</button>
                  </form>
                <form action="xuli_index.php" method="POST">
                <?php
                        if (isset($_SESSION['loggin']) && $_SESSION['loggin']=='true' ) {
                            $user = $_SESSION['MSKH'];
                            $sql = $conn->query("SELECT * FROM khachhang WHERE MSKH = '$user'");
                            $result = $sql->fetch_assoc();
                            echo "<div class='nav-item dropdown'>";
                            echo'<a class="btn btn-default btn-lg dropdown-toggle m-0 text-white" id="navbardrop" data-toggle="dropdown" data-target="#exampleModal" name="login"><small>'.$result['HoTenKH'].'</small>
                            <img src="../image/anhdaidien/'.$result['Hinh'].'" class="rounded-circle ml-1" width = "35px" height = "35px">
                            </a>';
                            echo "<a href='pay.php'><i style='color: lightblue;' class='fas fa-shopping-cart'></i></a>";
                            echo "<div class='dropdown-menu'>";
                            echo "<a class='dropdown-item' href='#'>Thông tin</a>";
                            echo "<a class='dropdown-item' href='logout.php'>Đăng xuất</a>";
                            echo "</div>";
                            echo "</div>";                            
                        }
                        else {
                            echo'<input type="submit" class="ml-1 btn btn-outline-light btn-sm float-sm-right" name="login" value="ĐĂNG NHẬP">';
                        }
                    ?>
                </form>
            </div>
        </div>
    </nav>