<?php
session_start();
require "./database.php";

// Cek Cookie
checkCookie();

// Redirect Ke Index kalau sudah login
checkLogin();

// Cek Tombol Submit
$checkForm = null;
if (isset($_POST["submit"])) {
    $checkForm = register_user($_POST);
    if ($checkForm > 0) {
        header("Location: ./login.php");
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
		<link rel="stylesheet" href="./../css/style register.css" />
		<link rel="shortcut icon" href="./../src/img/favicon.ico" type="image/x-icon" />
		<title>Meridio | Register</title>
	</head>
	<body>
		<!-- Bagian Login -->
		<section>
			<div class="container">
				<div class="content">
					<div class="row">
						<div class="col-md-6 register-picture">
							<img
								src="./../src/img/register.png"
								alt=""
								width="600em"
								class="img-fluid"
							/>
						</div>
						<div class="col-md-6">
							<h3 class="font-weight-bold text-center mb-3 mt-3">
								Meridio Register
							</h3>
							<form action="" method="POST" enctype="multipart/form-data">
								<?php if ($checkForm == 'username_ada'): ?>
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
											Username sudah terdaftar
										</div>
									</div>
								<?php elseif ($checkForm == 'ada_spasi'): ?>
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
											Username tidak valid
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
									<label for="inputNamaLengkap">Nama Lengkap</label>
										<input
											type="text"
											class="form-control kolom-input"
											placeholder="Masukkan Nama Lengkap"
											id="inputNamaLengkap"
											name="namaLengkap"
											required
										/>
								</div>
								<?php if ($checkForm == 'email_ada'): ?>
									<div class="form-group">
										<label for="inputEmail">Email</label>
										<input
											type="email"
											class="form-control kolom-input is-invalid"
											placeholder="Masukkan Email"
											id="inputEmail"
											name="email"
											required
										/>
										<div class="invalid-feedback">
											Email sudah terdaftar
										</div>
									</div>
								<?php else: ?>
									<div class="form-group">
										<label for="inputEmail">Email</label>
										<input
											type="email"
											class="form-control kolom-input"
											placeholder="Masukkan Email"
											id="inputEmail"
											name="email"
											required
										/>
									</div>
								<?php endif?>
								<?php if ($checkForm == 'bukan_foto'): ?>
									<div class="form-group">
										<label for="inputFoto"
											>Masukkan Foto Profil</label
										>
										<input
											type="file"
											class="form-control-file is-invalid"
											id="inputFoto"
											name="fotoProfil"
											required
										/>
										<small id="inputFotoHelp" class="form-text text-muted">Size Maksimal Foto 1MB</small>
										<div class="invalid-feedback">
											Upload file foto
										</div>
									</div>
								<?php elseif ($checkForm == 'foto_terlalu_besar'): ?>
									<div class="form-group">
										<label for="inputFoto"
											>Masukkan Foto Profil</label
										>
										<input
											type="file"
											class="form-control-file is-invalid"
											id="inputFoto"
											name="fotoProfil"
											required
										/>
										<small id="inputFotoHelp" class="form-text text-muted">Size Maksimal Foto 1MB</small>
										<div class="invalid-feedback">
											Foto terlalu besar
										</div>
									</div>
								<?php else: ?>
									<div class="form-group">
										<label for="inputFoto"
											>Masukkan Foto Profil</label
										>
										<input
											type="file"
											class="form-control-file"
											id="inputFoto"
											name="fotoProfil"
											required
										/>
										<small id="inputFotoHelp" class="form-text text-muted">Size Maksimal Foto 1MB</small>
									</div>
								<?php endif?>
								<div class="row">
									<div class="col-md-6">
										<?php if ($checkForm == 'password_tidak_sama'): ?>
											<div class="form-group">
												<label for="inputPassword">Password</label>
												<input
													type="password"
													class="form-control kolom-input is-invalid"
													placeholder="Masukkan Password"
													id="inputPassword"
													name="password"
													required
												/>
												<div class="invalid-feedback">
													Password tidak sama
												</div>
											</div>
										<?php else: ?>
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
										<?php endif?>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputKonfirmasiPassword"
												>Konfirmasi Password</label
											>
											<input
												type="password"
												class="form-control kolom-input"
												placeholder="Masukkan Konfirmasi Password"
                                                id="inputKonfirmasiPassword"
                                                name="passwordKonfirmasi"
												required
											/>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputTempatTinggal"
												>Tempat Tinggal</label
											>
											<input
												type="text"
												class="form-control kolom-input"
												id="inputTempatTinggal"
                                                placeholder="Masukkan Tempat Tinggal"
                                                name="tempatTinggal"
												required
											/>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputTanggalLahir"
												>Tanggal Lahir</label
											>
											<input
												type="date"
												class="form-control kolom-input"
                                                id="inputTanggalLahir"
                                                name="tanggalLahir"
												required
											/>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputPekerjaan">Pekerjaan</label>
											<input
												type="text"
												class="form-control kolom-input"
												id="inputPekerjaan"
                                                placeholder="Masukkan Pekerjaan"
                                                name="pekerjaan"
												required
											/>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputPendidikan">Pendidikan</label>
											<input
												type="text"
												class="form-control kolom-input"
												id="inputPendidikan"
                                                placeholder="Masukkan Pendidikan"
                                                name="pendidikan"
												required
											/>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="inputTentangDirimu">Tentang Dirimu</label>
									<textarea
										class="form-control kolom-input"
										id="inputTentangDirimu"
										rows="3"
                                        placeholder="Masukkan Tentang Dirimu"
                                        name="tentangDirimu"
										required
									></textarea>
								</div>
								<button type="submit" class="btn btn-dark" name="submit">Register</button>
							</form>
							<div class="register mt-3">
								<span
									>Sudah punya akun?
									<a href="./login.php" class="font-weight-bold"
										>Login Sekarang</a
									></span
								>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<span class="d-block text-center my-5"
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
