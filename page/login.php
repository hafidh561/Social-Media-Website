<?php
session_start();
require "./database.php";

// Cek Cookie
checkCookie();

// Redirect Ke Index kalau sudah login
checkLogin();

// Login
$checkLogin = null;
if (isset($_POST['login'])) {
    $checkLogin = login($_POST);
    if ($checkLogin == 'success_login') {
        header('Location: ./../index.php');
        exit;
    }
}

?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="./../css/bootstrap.min.css">
		<link rel="stylesheet" href="./../css/all.css">
		<link rel="stylesheet" href="./../css/style login.css" />
		<link rel="shortcut icon" href="./../src/img/favicon.ico" type="image/x-icon" />
		<title>Meridio | Login</title>
	</head>
	<body>
        <!-- Bagian Login -->
		<section>
			<div class="container">
				<div class="content">
                    <?php if (isset($_SESSION['success_register'])): ?>
                        <div class="alert alert-primary alert-dismissible fade show" role="alert">
                            <strong>Pendaftaran berhasil</strong> Silahkan login
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
					<?php endif?>
					<div class="row">
						<div class="col-md-6">
							<img
								src="./../src/img/login.jpg"
								alt=""
								width="400em"
								class="img-fluid"
							/>
						</div>
						<div class="col-md-6">
							<h3 class="font-weight-bold text-center mb-5 mt-3">
								Meridio Login
							</h3>
							<form action="" method="POST">
                                <?php if ($checkLogin == 'error_login'): ?>
                                <div class="form-group">
									<label for="inputUsername">Username</label>
									<input
										type="text"
										class="form-control kolom-input is-invalid"
										placeholder="Masukkan Username"
                                        id="inputUsername"
                                        name="username"
										required
                                    />
                                    <div class="invalid-feedback">
                                        Username / Password salah
                                    </div>
								</div>
                                <?php else: ?>
                                <div class="form-group">
									<label for="inputUsername">Username</label>
									<input
										type="text"
										class="form-control kolom-input"
										placeholder="Masukkan Username"
                                        id="inputUsername"
                                        name="username"
										required
									/>
								</div>
                                <?php endif?>
								<div class="form-group">
									<label for="inputPassword">Password</label>
									<input
										type="password"
										class="form-control kolom-input"
										placeholder="Masukkan Password"
                                        id="inputPassword"
                                        name="password"
										required
									/>
								</div>
								<div class="form-group form-check">
									<input
										type="checkbox"
										class="form-check-input"
                                        id="biarkanMasuk"
                                        name="remember"
									/>
									<label class="form-check-label" for="biarkanMasuk"
										>Biarkan tetap masuk</label
									>
								</div>
								<button type="submit" class="btn btn-dark" name="login">Login</button>
							</form>
							<div class="register mt-3">
								<span
									>Belum punya akun?
									<a href="./register.php" class="font-weight-bold"
										>Daftar Sekarang</a
									></span
								>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<span class="d-block text-center mt-5 pt-3"
								><a href="./../index.php" class="font-weight-light"
									>Kembali ke Halaman Utama</a
								></span
							>
						</div>
					</div>
				</div>
			</div>
		</section>
		<script src="./../js/jquery-3.5.1.min.js"></script>
		<script src="./../js/bootstrap.bundle.min.js"></script>
		<script src="./../js/all.js"></script>
	</body>
</html>
