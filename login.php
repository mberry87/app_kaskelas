<?php
require 'connection.php';
checkLoginAtLogin();

if (isset($_POST['btnLogin'])) {
	$username = htmlspecialchars($_POST['username']);
	$password = htmlspecialchars($_POST['password']);

	$checkUsername = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");
	if ($data = mysqli_fetch_assoc($checkUsername)) {
		if (password_verify($password, $data['password'])) {
			$_SESSION = [
				'id_user' => $data['id_user'],
				'username' => $data['username'],
				'id_jabatan' => $data['id_jabatan']
			];
			header("Location: index.php");
		} else {
			setAlert("Password anda salah!", "Cek Password anda!", "error");
			header("Location: login.php");
		}
	} else {
		setAlert("Username anda tidak terdaftar!", "Cek Username anda!", "error");
		header("Location: login.php");
	}
}
?>

<!DOCTYPE html>
<html>

<head>
	<?php include 'include/css.php'; ?>
	<title>Login</title>
	<!-- style ori -->
	<style>
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}

		body {
			background-color: #eaeaea;
			/* min-height: 100vh;
			background-size: cover;
			background-repeat: no-repeat;
			background-image: url(assets/img/img_properties/sd014.jpg); */
		}

		.login-box {
			position: absolute;
			left: 50%;
			top: 50%;
			transform: translate(-50%, -55%);
		}
	</style>
</head>

<body>
	<!-- main ori -->
	<!-- <div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-5 mx-5 py-4 px-5 text-dark rounded border border-dark" style="background-color: rgba(180,190,196,.6);">
				<h3 class="text-center">UANG KAS SDN 014 Tg.Pinang <br> Kelas IV b</h3>
				<form method="post">
					<div class="form-group">
						<label for="username"><i class="fas fa-fw fa-user"></i> Username</label>
						<input required class="form-control rounded-pill" type="text" name="username" id="username">
					</div>
					<div class="form-group">
						<label for="password"><i class="fas fa-fw fa-lock"></i> Password</label>
						<input required class="form-control rounded-pill" type="password" name="password" id="password">
					</div>
					<div class="form-group text-right">
						<button class="btn btn-success rounded-pill" type="submit" name="btnLogin"><i class="fas fa-fw fa-sign-in-alt"></i> Login</button>
					</div>
				</form>
			</div>
		</div>
	</div> -->

	<div class="login-box">
		<div class="login-logo">
			<img src="assets/img/img_properties/logoSD.png" alt="logo" style="width: 65px;" class="mb-2">
			<h3>SDN Negeri 014 Tg. Pinang</h3>
			<h5>Applikasi Sistem Informasi Kas Kelas IV b</h5>
		</div>
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">Silahkan Login</p>

				<form method="post">
					<div class="input-group mb-3">
						<input type="text" class="form-control " placeholder="Masukkan Username" name="username" id="username" required>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-envelope"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3 ">
						<input type="password" class="form-control" placeholder="Masukkan Password" name="password" id="password" required>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
							<div class="icheck-primary">
								<input type="checkbox" id="remember">
								<label for="remember">
									Ingatkan Saya
								</label>
							</div>
						</div>
						<div class="col-4">
							<button type="submit" name="btnLogin" class="btn btn-primary btn-block">Masuk</button>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>

	<footer style="position: absolute; bottom: 0; width: 100%; text-align: center;">
		<div style="background-color: transparent;" class="container-fluid mt-5">
			<div class="row justify-content-center">
				<div class="col-lg text-center text-white pt-4 pb-2">
					<p class="text-secondary">&copy; Copyright 2022. By StrawBerry | Tanjungpinang.</p>
				</div>
			</div>
		</div>
	</footer>
</body>

</html>