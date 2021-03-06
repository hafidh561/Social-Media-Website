<?php
session_start();
require "./database.php";

// Cek Cookie
checkCookie();

// Redirect user ketika tidak ada s
if (!isset($_GET['s'])) {
    header("Location: ./../index.php");
    exit;
}

if (isset($_SESSION['login'])) {
    // Buat User Saya
    if (isset($_SESSION['id'])) {
        $my_id = $_SESSION['id'];
    } else {
        $my_id = $_COOKIE['id'];
    }
    $queryMyUser = "SELECT * FROM user WHERE id = $my_id";
    $myUser = query($queryMyUser);
    $myUser = $myUser[0];
}

// Search Article
// Pagination
$jumlahDataPerhalaman = 5;
$jumlahData = count(query("SELECT * FROM artikel WHERE judul_artikel LIKE '%" . $_GET['s'] . "%' OR isi_artikel LIKE '%" . $_GET['s'] . "%'"));
$jumlahHalaman = ceil($jumlahData / $jumlahDataPerhalaman);
$halamanAktif = (isset($_GET["page"])) ? $_GET["page"] : 1;
$awalData = ($jumlahDataPerhalaman * $halamanAktif) - $jumlahDataPerhalaman;
$queryArticle = "SELECT * FROM user
				JOIN artikel
				ON user.id = artikel.user_id
                WHERE judul_artikel LIKE '%" . $_GET['s'] . "%' OR isi_artikel LIKE '%" . $_GET['s'] . "%' OR username LIKE '%" . $_GET['s'] . "%'
				ORDER BY waktu_buat
				DESC
				LIMIT $awalData, $jumlahDataPerhalaman
				";
$articles = query($queryArticle);

// Hapus Artikel
if (isset($_POST['deleteArticleButton'])) {
    $hapusArtikel = hapus_artikel($_POST['id_artikel_delete']);
    if ($hapusArtikel > 0) {
        header("Location: ./../index.php");
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
		<link rel="stylesheet" href="./../css/style search.css" />
		<link
			rel="shortcut icon"
			href="./../src/img/favicon.ico"
			type="image/x-icon"
		/>
		<title>Meridio | Search - <?=$_GET['s']?></title>
	</head>
	<body>
		<!-- Navigation Bar -->
		<?php if (isset($_SESSION['login'])): ?>
			<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
				<div class="container">
					<a class="navbar-brand mb-0 h1" href="./../index.php">Meridio</a>
					<button
						class="navbar-toggler"
						type="button"
						data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent"
						aria-expanded="false"
						aria-label="Toggle navigation"
					>
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto"></ul>
						<div class="utility-navbar mr-4 text-center">
							<div class="saved-article d-inline">
								<!-- TODO GARAP -->
								<a href="./saved article.php" target="_blank">
									<button
										type="button"
										class="btn btn-light"
										data-toggle="tooltip"
										data-placement="top"
										title="Saved Article"
									>
										<svg
											width="1.2em"
											height="1.2em"
											viewBox="0 0 16 16"
											class="bi bi-bookmark"
											fill="currentColor"
											xmlns="http://www.w3.org/2000/svg"
										>
											<path
												fill-rule="evenodd"
												d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"
											/>
										</svg>
										Saved Article
									</button>
								</a>
							</div>
							<!-- TODO GARAP -->
							<div class="notifications d-inline-block">
								<a href="./notifikasi.php" target="_blank">
								<button
										type="button"
										class="btn btn-light button-notifications"
										data-toggle="tooltip"
										data-placement="top"
										data-user-id="<?=$myUser['id']?>"
										title="Notifikasi"
									>
									<?php
										$queryCekNotifikasi = "SELECT * FROM user_notifikasi WHERE user_id = " . $myUser['id'] . " AND sudah_dilihat = 0";
										$cekNotifikasi = query($queryCekNotifikasi);
										if (!$cekNotifikasi):
									?>
											<svg
												width="1.2em"
												height="1.2em"
												viewBox="0 0 16 16"
												class="bi bi-bell"
												fill="currentColor"
												xmlns="http://www.w3.org/2000/svg"
											>
												<path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2z" />
												<path
													fill-rule="evenodd"
													d="M8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"
												/>
											</svg>
											Notifikasi
										<?php else: ?>
											<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16">
												<path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z"/>
											</svg>
											Notifikasi <span class="badge"><?=count($cekNotifikasi)?></span>
										<?php endif?>
									</button>
								</a>
							</div>
						</div>
						<!-- TODO GARAP -->
						<form action="./search.php" class="form-inline my-2 my-lg-0">
							<input
								class="form-control mr-3"
								type="search"
								placeholder="Search"
								aria-label="Search"
								name="s"
							/>
						</form>
						<div class="buat-postingan mr-3">
							<!-- TODO GARAP -->
							<a href="./buat article.php" target="_blank">
								<button type="button" class="btn btn-dark btn-sm rounded-pill">
									Create Article
								</button>
							</a>
						</div>
						<div class="dropdown">
							<button
								class="dropdown-toggle"
								type="button"
								id="dropdownMenuButton"
								data-toggle="dropdown"
								aria-haspopup="true"
								aria-expanded="false"
							>
								<img
									src="./../src/profile_pictures/<?=$myUser['foto_profil']?>.jpg"
									alt="<?=$myUser['username']?>"
									class="rounded-circle"
									width="40em"
								/>
								<span class="font-weight-bold"><?=$myUser['username']?></span>
							</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<!-- TODO GARAP -->
								<a
									class="dropdown-item"
									href="./profile.php?id=<?=$myUser['id']?>"
									target="_blank"
								>
									<svg
										width="1.5em"
										height="1.5em"
										viewBox="0 0 16 16"
										class="bi bi-person-fill mr-1"
										fill="currentColor"
										xmlns="http://www.w3.org/2000/svg"
									>
										<path
											fill-rule="evenodd"
											d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"
										/>
									</svg>
									Profile</a
								>
								<!-- TODO GARAP -->

								<!-- TODO GARAP -->
								<a
									class="dropdown-item"
									href="./setting.php"
									target="_blank"
								>
									<svg
										width="1.5em"
										height="1.5em"
										viewBox="0 0 16 16"
										class="bi bi-gear-fill mr-1"
										fill="currentColor"
										xmlns="http://www.w3.org/2000/svg"
									>
										<path
											fill-rule="evenodd"
											d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 0 0-5.86 2.929 2.929 0 0 0 0 5.858z"
										/>
									</svg>
									Setting</a
								>
								<a
									class="dropdown-item"
									href="./logout.php"
									target="_blank"
								>
									<svg
										width="1.5em"
										height="1.5em"
										viewBox="0 0 16 16"
										class="bi bi-arrow-left-circle-fill mr-1"
										fill="currentColor"
										xmlns="http://www.w3.org/2000/svg"
									>
										<path
											fill-rule="evenodd"
											d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5.5a.5.5 0 0 0 0-1H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5z"
										/>
									</svg>
									Log Out</a
								>
							</div>
						</div>
					</div>
				</div>
			</nav>
		<?php else: ?>
			<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
				<div class="container">
					<a class="navbar-brand mb-0 h1" href="./../index.php">Meridio</a>
					<button
						class="navbar-toggler"
						type="button"
						data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent"
						aria-expanded="false"
						aria-label="Toggle navigation"
					>
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto"></ul>
						<!-- TODO GARAP -->
						<form action="search.php" class="form-inline my-2 my-lg-0 mr-3">
							<input
								class="form-control mr-sm-2"
								type="search"
								placeholder="Search"
								aria-label="Search"
								name="s"
							/>
						</form>
						<div class="account">
							<a href="./login.php" target="_blank" class="text-account"
								><svg
									width="2em"
									height="2em"
									viewBox="0 0 16 16"
									class="bi bi-person-circle"
									fill="currentColor"
									xmlns="http://www.w3.org/2000/svg"
								>
									<path
										d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z"
									/>
									<path
										fill-rule="evenodd"
										d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"
									/>
									<path
										fill-rule="evenodd"
										d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"
									/>
								</svg>
								Masuk
							</a>
						</div>
					</div>
				</div>
			</nav>
		<?php endif?>

		<!-- Section / Bagian Tengah -->
		<section class="bagian-tengah pb-4">
			<div class="container pt-5 mt-5">
				<div class="row">
					<div class="col-md-12">
						<form action="search.php" method="GET" class="form-inline my-2 my-lg-0 mr-3 justify-content-center">
							<input
								class="form-control mr-sm-2 w-100 kolom-search"
								type="search"
								placeholder="Search"
                                aria-label="Search"
                                name="s"
								value="<?=$_GET['s']?>"
							/>
						</form>
					</div>
				</div>
				<div class="row mt-5 d-flex justify-content-center">
					<div class="col-md-8">
						<?php if (count($articles) <= 0): ?>
							<div>
								<h1 class="text-center">Penelusuran tidak ada</h1>
							</div>
						<?php else: ?>
							<?php foreach ($articles as $searchArticle): ?>
								<div class="hasil-<?=$searchArticle['id']?>">
									<div class="account-article-<?=$searchArticle['id']?>">
										<a href="./profile.php?id=<?=$searchArticle['user_id']?>" target="_blank">
											<img
												src="./../src/profile_pictures/<?=$searchArticle['foto_profil']?>.jpg"
												alt="<?=$searchArticle['username']?>"
												class="rounded-circle float-left"
												width="45em"
											/>
										</a>
										<div class="row">
											<div class="col">
												<a href="./profile.php?id=<?=$searchArticle['user_id']?>" target="_blank">
													<span class="font-weight-bold"><?=$searchArticle['username']?></span>
												</a>
												<?php if (isset($_SESSION['login'])): ?>
													<?php
														$queryCekFollow = "SELECT * FROM user_followers WHERE user_id_followers = " . $searchArticle['user_id'] . " AND user_id = " . $myUser['id'];
														$cekFollow = query($queryCekFollow);
													?>
													<?php if ($searchArticle['user_id'] === $myUser['id']): ?>
													<?php elseif (!$cekFollow): ?>
														<button class="followSekarang" data-id="<?=$searchArticle['user_id']?>" data-user-id="<?=$myUser['id']?>">
															<span class="text-primary font-weight-bold mx-1"
																>Follow</span
															>
														</button>
													<?php else: ?>
														<button class="unfollowSekarang followSekarang" data-id="<?=$searchArticle['user_id']?>" data-user-id="<?=$myUser['id']?>">
															<span class="text-secondary font-weight-bold mx-1"
																>Unfollow</span
															>
														</button>
													<?php endif?>
												<?php endif?>
											</div>
										</div>
										<div class="row">
											<div class="col">
												<?php
												$time = strtotime($searchArticle['waktu_buat']);
												$time = date('d M Y • H:i', $time);
												?>
												<span><?=$time?> WIB</span>
											</div>
										</div>
									</div>
									<?php if (isset($_SESSION['login']) && ($searchArticle['user_id'] === $myUser['id'])): ?>
										<!-- TODO GARAP -->
										<!-- Delete Article -->
										<div class="row float-right">
											<div class="col">
												<button
													type="button"
													class="close"
													aria-label="Close"
													data-toggle="modal"
													data-target="#deleteArticle<?=$searchArticle['id']?>"
												>
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
										</div>
										<!-- Modal Delete Article -->
										<div
											class="modal fade"
											id="deleteArticle<?=$searchArticle['id']?>"
											tabindex="-1"
											aria-labelledby="deleteArticle<?=$searchArticle['id']?>"
											aria-hidden="true"
										>
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="deleteArticle<?=$searchArticle['id']?>">
															Hapus article ?
														</h5>
														<button
															type="button"
															class="close"
															data-dismiss="modal"
															aria-label="Close"
														>
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-footer">
														<button
															type="button"
															class="btn btn-secondary"
															data-dismiss="modal"
														>
															Tidak
														</button>
														<form action="" method="POST">
															<input type="text" value="<?=$searchArticle['id']?>" class="d-none" name="id_artikel_delete"></input>
															<button type="submit" class="btn btn-primary" name="deleteArticleButton">Iya</button>
														</form>
													</div>
												</div>
											</div>
										</div>
									<?php endif?>
									<div class="content-article-<?=$searchArticle['id']?> pt-2">
										<a href="./article.php?id=<?=$searchArticle['id']?>">
											<article>
												<h2 class="font-weight-bolder pb-2 pt-3">
													<?=$searchArticle['judul_artikel']?>
												</h2>
												<img
													src="./../src/article_images/<?=$searchArticle['header_artikel']?>.jpg"
													class="img-fluid rounded-lg pb-3 foto-hasil"
													alt="<?=$searchArticle['judul_artikel']?>"
												/>
												<span
													class="show-more font-italic d-inline-block pb-3 font-weight-bold"
												>
													Read More...
												</span>
											</article>
										</a>
									</div>
								</div>
								<hr />
								<div class="pt-4"></div>
							<?php endforeach?>
						<?php endif?>
					</div>
				</div>
			</div>
			<nav aria-label="Page navigation" class="mt-4">
				<ul class="pagination justify-content-center pb-4">
					<?php if (count($articles) <= 0): ?>
					<?php else: ?>
						<?php if ($halamanAktif > 1): ?>
							<li class="page-item">
								<a class="page-link" href="?s=<?=$_GET['s']?>&page=<?=$halamanAktif - 1?>" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
						<?php else: ?>
							<li class="page-item disabled">
								<a class="page-link" href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
						<?php endif?>
						<?php for ($i = 1; $i <= $jumlahHalaman; $i++): ?>
							<?php if ($i == $halamanAktif): ?>
								<li class="page-item active"><a class="page-link" href="?s=<?=$_GET['s']?>&page=<?=$i?>"><?=$i?></a></li>
							<?php else: ?>
								<li class="page-item"><a class="page-link" href="?s=<?=$_GET['s']?>&page=<?=$i?>"><?=$i?></a></li>
							<?php endif?>
						<?php endfor?>
						<?php if ($halamanAktif < $jumlahHalaman): ?>
							<li class="page-item">
								<a class="page-link" href="?s=<?=$_GET['s']?>&page=<?=$halamanAktif + 1?>" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						<?php else: ?>
							<li class="page-item disabled">
								<a class="page-link" href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						<?php endif?>
					<?php endif?>
				</ul>
			</nav>
		</section>

		<!-- Footer -->
		<footer>
			<nav class="navbar navbar-dark bg-dark">
				<div class="container pt-4">
					<div class="row pb-4">
						<div class="col-md-4 bagian-bawah">
							<span class="font-weight-bold d-inline-block pb-3"
								>Bagikan Pemikiranmu</span
							>
							<p>
								Jika Anda memiliki cerita untuk diceritakan, pengetahuan untuk
								dibagikan, atau perspektif untuk ditawarkan - selamat datang di
								Medirio. Mudah dan gratis untuk memposting pemikiran Anda
								tentang topik apa pun.
							</p>
						</div>
						<div class="col-md-4 bagian-bawah">
							<span class="font-weight-bold d-inline-block pb-3"
								>Utamakan Literasi</span
							>
							<p>
								Menulis juga harus dimasukkan dalam setiap program literasi.
								Juga, tidak ada gunanya sama sekali memiliki tema literasi jika
								kamu membuat orang lain terganggu dan berperilaku buruk.
							</p>
						</div>
						<div class="col-md-4 bagian-bawah">
							<span class="font-weight-bold d-inline-block pb-3"
								>Jadikan Indonesia Berbudaya</span
							>
							<p>
								Menambah pengetahuan rakyat Indonesia dengan membagikan semua
								argumen. Menyatukan Indonesia melalui tulisan yang bermutu.
								Menjadikan Indonesia layaknya singa dalam hutan.
							</p>
						</div>
					</div>
					<div class="pembatas"></div>
					<div class="col-md-12 pt-3 text-center copyright">
						<h5>Contact Us</h5>
					</div>
					<div class="col-md-12 text-center pr-1">
						<a href="https://gmail.com/" target="_blank"
							><img
								src="./../src/img/email.png"
								class="img-fluid"
								alt="Gmail"
								width="28px"
						/></a>

						<a href="https://facebook.com/" target="_blank"
							><img
								src="./../src/img/fb.png"
								class="img-fluid"
								alt="Facebook"
								width="40px"
						/></a>

						<a href="https://instagram.com/" target="_blank"
							><img
								src="./../src/img/ig.png"
								class="img-fluid"
								alt="Instagram"
								width="40px"
						/></a>
					</div>
					<div class="col-lg-12 text-center py-3 copyright">
						<span>© 2020 Meridio</span>
					</div>
				</div>
			</nav>
		</footer>

		<!-- Tombol Keatas -->
		<div class="keatas">
			<a href="#">
				<svg
					width="3em"
					height="3em"
					viewBox="0 0 16 16"
					class="bi bi-chevron-bar-up"
					fill="currentColor"
					xmlns="http://www.w3.org/2000/svg"
				>
					<path
						fill-rule="evenodd"
						d="M3.646 11.854a.5.5 0 0 0 .708 0L8 8.207l3.646 3.647a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 0 0 0 .708zM2.4 5.2c0 .22.18.4.4.4h10.4a.4.4 0 0 0 0-.8H2.8a.4.4 0 0 0-.4.4z"
					/>
				</svg>
			</a>
		</div>

		<script src="./../js/jquery-3.5.1.min.js"></script>
		<script src="./../js/bootstrap.bundle.min.js"></script>
		<script src="./../js/all.js"></script>
		<script src="./../js/ajax page.js"></script>

	</body>
</html>
