<?php
$page = 'dashboard';
require 'connection.php';
checkLogin();
$jml_siswa = mysqli_fetch_assoc(mysqli_query($conn, "SELECT count(id_siswa) as jml_siswa FROM siswa"));
$jml_siswa = $jml_siswa['jml_siswa'];

$jml_user = mysqli_fetch_assoc(mysqli_query($conn, "SELECT count(id_user) as jml_user FROM user"));
$jml_user = $jml_user['jml_user'];

$jml_jabatan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT count(id_jabatan) as jml_jabatan FROM jabatan"));
$jml_jabatan = $jml_jabatan['jml_jabatan'];

$jml_pengeluaran = mysqli_fetch_assoc(mysqli_query($conn, "SELECT sum(jumlah_pengeluaran) as jml_pengeluaran FROM pengeluaran"));
$jml_pengeluaran = $jml_pengeluaran['jml_pengeluaran'];

$jml_uang_kas = mysqli_fetch_assoc(mysqli_query($conn, "SELECT sum(minggu_ke_1 + minggu_ke_2 + minggu_ke_3 + minggu_ke_4) as jml_uang_kas FROM uang_kas"));
$jml_uang_kas = $jml_uang_kas['jml_uang_kas'];


$bulan_pembayaran = mysqli_query($conn, "SELECT * FROM bulan_pembayaran ORDER BY tahun ASC");
?>


<!DOCTYPE html>
<html>

<head>
  <?php include 'include/css.php'; ?>
  <title>Dashboard</title>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">

    <?php include 'include/navbar.php'; ?>

    <?php include 'include/sidebar.php'; ?>



    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm">
              <h1 class="m-0 text-dark">Dashboard</h1>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <!-- script ori -->
            <!-- <?php if ($_SESSION['id_jabatan'] == '1') : ?>
              <div class="col-lg-3">
                <div class="card shadow">
                  <div class="card-body">
                    <h5><i class="fas fa-fw fa-cog"></i> Jabatan</h5>
                    <h6 class="text-muted">Jumlah Jabatan: <?= $jml_jabatan; ?></h6>
                    <a href="jabatan.php" class="btn btn-info"><i class="fas fa-fw fa-align-justify"></i></a>
                  </div>
                </div>
              </div>
              <div class="col-lg-3">
                <div class="card shadow">
                  <div class="card-body">
                    <h5><i class="fas fa-fw fa-users"></i> User</h5>
                    <h6 class="text-muted">Jumlah User: <?= $jml_user; ?></h6>
                    <a href="user.php" class="btn btn-info"><i class="fas fa-fw fa-align-justify"></i></a>
                  </div>
                </div>
              </div>
            <?php endif ?>
            <div class="col-lg-3">
              <div class="card shadow">
                <div class="card-body">
                  <h5><i class="fas fa-fw fa-user-tie"></i> Siswa</h5>
                  <h6 class="text-muted">Jumlah Siswa: <?= $jml_siswa; ?></h6>
                  <?php if ($dataUser['id_jabatan'] !== '9') : ?>
                    <a href="siswa.php" class="btn btn-info"><i class="fas fa-fw fa-align-justify"></i></a>
                  <?php endif ?>
                </div>
              </div>
            </div>
            <div class="col-lg-3">
              <div class="card shadow">
                <div class="card-body">
                  <h5><i class="text-success fas fa-fw fa-caret-up"></i> <i class="text-success fas fa-fw fa-dollar-sign"></i> Uang Kas</h5>
                  <h6 class="text-muted">Jumlah Uang Kas: Rp. <?= number_format($jml_uang_kas - $jml_pengeluaran); ?></h6>
                  <?php if ($dataUser['id_jabatan'] !== '9') : ?>
                    <a href="uang_kas.php" class="btn btn-info"><i class="fas fa-fw fa-align-justify"></i></a>
                  <?php endif ?>
                </div>
              </div>
            </div>
            <div class="col-lg-3">
              <div class="card shadow">
                <div class="card-body">
                  <h5><i class="text-danger fas fa-fw fa-caret-down"></i><i class="text-danger fas fa-fw fa-dollar-sign"></i> Pengeluaran</h5>
                  <h6 class="text-muted">Jumlah Pengeluaran: Rp. <?= number_format($jml_pengeluaran); ?></h6>
                  <?php if ($dataUser['id_jabatan'] !== '9') : ?>
                    <a href="pengeluaran.php" class="btn btn-info"><i class="fas fa-fw fa-align-justify"></i></a>
                  <?php endif ?>
                </div>
              </div>
            </div> -->

            <!-- script costum -->

            <div class="col-md-3 col-sm-12">
              <div class="small-box bg-success">
                <div class="inner">
                  <h3>Rp. <?= number_format($jml_uang_kas - $jml_pengeluaran, 0, ',', '.'); ?></h3>
                  <h5>Saldo Kas</h5>
                </div>
                <div class="icon">
                  <i class="ion-cash"></i>
                </div>
                <?php if ($_SESSION['id_jabatan'] !== '9') : ?>
                  <a href="uang_kas.php" class="small-box-footer">
                    UANG KAS <i class="fas fa-arrow-circle-right"></i>
                  </a>
                <?php endif ?>
              </div>
            </div>

            <div class="col-md-3 col-sm-12">
              <div class="small-box bg-danger">
                <div class="inner">
                  <h3>Rp. <?= number_format($jml_pengeluaran, 0, ',', '.'); ?></h3>
                  <h5>Kas Keluar</h5>
                </div>
                <div class="icon">
                  <i class="ion-android-cart"></i>
                </div>
                <?php if ($_SESSION['id_jabatan'] !== '9') : ?>
                  <a href="pengeluaran.php" class="small-box-footer">
                    PENGELUARAN KAS <i class="fas fa-arrow-circle-right"></i>
                  </a>
                <?php endif ?>
              </div>
            </div>

            <div class="col-md-3 col-sm-12">
              <div class="small-box bg-warning">
                <div class="inner">
                  <h3> <?= $jml_siswa; ?> Siswa/i</h3>
                  <h5>Jumlah Siswa</h5>
                </div>
                <div class="icon">
                  <i class="ion-ios-people"></i>
                </div>
                <?php if ($_SESSION['id_jabatan'] !== '9') : ?>
                  <a href="siswa.php" class="small-box-footer">
                    TABEL SISWA <i class="fas fa-arrow-circle-right"></i>
                  </a>
                <?php endif ?>
              </div>
            </div>

            <?php if ($_SESSION['id_jabatan'] !== '9') : ?>
              <div class="col-lg-3 col-sm-12">
                <div class="small-box bg-secondary">
                  <div class="inner">
                    <h3> <?= $jml_jabatan; ?> Jabatan</h3>
                    <h5>Jumlah jabatan</h5>
                  </div>
                  <div class="icon">
                    <i class="ion-person-add"></i>
                  </div>
                  <a href="jabatan.php" class="small-box-footer">
                    TABEL JABATAN <i class="fas fa-arrow-circle-right"></i>
                  </a>
                <?php endif ?>
                </div>
              </div>

              <?php if ($_SESSION['id_jabatan'] == '9') : ?>
                <div class="col-md-3 col-sm-12">
                  <div class="small-box bg-info">
                    <div class="inner">
                      <h3>Laporan Kas</h3>
                      <h5>Print Out</h5>
                    </div>
                    <div class="icon">
                      <i class="ion-ios-printer-outline"></i>
                    </div>
                    <a href="laporan.php" class="small-box-footer">
                      LAPORAN KAS <i class="fas fa-arrow-circle-right"></i>
                    </a>
                  </div>
                </div>
              <?php endif ?>
          </div>
        </div>
      </section>
    </div>
    <?php include 'include/footer.php'; ?>
  </div>
</body>

</html>