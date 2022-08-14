<?php
$dataUser = dataUser();
$jml_pengeluaran = mysqli_fetch_assoc(mysqli_query($conn, "SELECT sum(jumlah_pengeluaran) as jml_pengeluaran FROM pengeluaran"));
$jml_pengeluaran = $jml_pengeluaran['jml_pengeluaran'];

$jml_uang_kas = mysqli_fetch_assoc(mysqli_query($conn, "SELECT sum(minggu_ke_1 + minggu_ke_2 + minggu_ke_3 + minggu_ke_4) as jml_uang_kas FROM uang_kas"));
$jml_uang_kas = $jml_uang_kas['jml_uang_kas'];
?>
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="index.php" class="brand-link">
    <img src="assets/img/img_properties/tutwurihandayani.png" alt="Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light">SDN 014 Tg.Pinang</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="image">
            <img src="assets/img/img_profiles/avatar5.png" class="img-circle elevation-2" alt="User Image">
          </div>
          <div class="info">
            <a href="#" class="d-block"><?= $dataUser['username']; ?> kelas IV b</a>
          </div>
        </div>

        <!-- <li class="nav-item has-treeview menu-open">
          <a href="profile.php" class="nav-link"><i class="nav-icon fas fa-fw fa-user"></i>
            <p><?= $dataUser['username']; ?></p>
          </a>
        </li> -->

        <!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
        <?php if ($_SESSION['id_jabatan'] !== '9') : ?>
          <li class="nav-item">
            <div class="bg-success nav-link text-white">
              <i class="nav-icon fas fa-money-bill-wave"></i>
              <p>
                Sisa Uang: <?= number_format($jml_uang_kas - $jml_pengeluaran); ?>
              </p>
            </div>
          </li>
        <?php endif ?>
        <li class="nav-item has-treeview menu-open">
          <a href="index.php" class="nav-link <?php if ($page == 'dashboard') {
                                                echo 'active';
                                              } ?>">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Dashboard
            </p>
          </a>
        </li>
        <?php if ($dataUser['id_jabatan'] == '1') : ?>
          <li class="nav-item">
            <a href="jabatan.php" class="nav-link <?php if ($page == 'jabatan') {
                                                    echo 'active';
                                                  } ?>">
              <i class="nav-icon fas fa-cog"></i>
              <p>
                Jabatan
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="user.php" class="nav-link <?php if ($page == 'user') {
                                                  echo 'active';
                                                } ?>">
              <i class="nav-icon fas fa-users"></i>
              <p>
                User
              </p>
            </a>
          </li>
        <?php endif ?>
        <?php if ($_SESSION['id_jabatan'] !== '9') : ?>
          <li class="nav-item">
            <a href="siswa.php" class="nav-link <?php if ($page == 'siswa') {
                                                  echo 'active';
                                                } ?>">
              <i class="fas fa-user-tie nav-icon"></i>
              <p>Siswa</p>
            </a>
          </li>
          <li class="nav-header">INPUT DATA</li>
          <li class="nav-item">
            <a href="uang_kas.php" class="nav-link <?php if ($page == 'uang_kas') {
                                                      echo 'active';
                                                    } ?>">
              <i class="fas fa-dollar-sign nav-icon"></i>
              <p>Uang Kas</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="pengeluaran.php" class="nav-link <?php if ($page == 'pengeluaran') {
                                                        echo 'active';
                                                      } ?>">
              <i class="fas fa-sign-out-alt nav-icon"></i>
              <p>Pengeluaran</p>
            </a>
          </li>
          <li class="nav-header">HISTORY</li>
          <li class="nav-item">
            <a href="riwayat.php" class="nav-link <?php if ($page == 'riwayat_uang_kas') {
                                                    echo 'active';
                                                  } ?>">
              <i class="fas fa-stopwatch nav-icon"></i>
              <p>Riwayat Uang Kas</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="riwayat_pengeluaran.php" class="nav-link <?php if ($page == 'riwayat_pengeluaran') {
                                                                echo 'active';
                                                              } ?>">
              <i class="fas fa-stopwatch nav-icon"></i>
              <p>Riwayat Pengeluaran</p>
            </a>
          </li>
        <?php endif ?>
        <li class="nav-header">LAPORAN KAS</li>
        <li class="nav-item">
          <a href="laporan.php" class="nav-link <?php if ($page == 'laporan') {
                                                  echo 'active';
                                                } ?>">
            <i class="fas fa-file nav-icon"></i>
            <p>Laporan</p>
          </a>
        </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>