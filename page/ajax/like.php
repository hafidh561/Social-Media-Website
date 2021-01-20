<?php
require ("./../database.php");

// Like
if (isset($_POST['liked'])) {
    date_default_timezone_set('Asia/Jakarta');
    $user_id = $_POST['user_id'];
    $artikel_id = $_POST['postid'];
    $tanggalSekarang = date('Y-m-d') . ' ' . date('H:i:s');
    $queryTambahLike = "INSERT INTO artikel_like (user_id, artikel_id, waktu_like)
                        VALUES ('$user_id', '$artikel_id', '$tanggalSekarang')";
    mysqli_query($db, $queryTambahLike);

    $queryTotalLikeAJAX = "SELECT COUNT(user_id) FROM artikel_like WHERE artikel_id = $artikel_id";
    $resultQueryTotalLikeAJAX = query($queryTotalLikeAJAX);
}

date_default_timezone_set('Asia/Jakarta');
$tanggalSekarang = date('Y-m-d') . ' ' . date('H:i:s');
$artikel_id = $_POST['postid'];
$queryMencariPemilikArtikel = "SELECT * FROM user JOIN artikel ON user.id = artikel.user_id WHERE artikel.id = '$artikel_id'";
$mencariPemilikArtikel = query($queryMencariPemilikArtikel);
$mencariPemilikArtikel = $mencariPemilikArtikel[0];

$user_id = $mencariPemilikArtikel['user_id'];
$judulPostingan = $mencariPemilikArtikel['judul_artikel'];

$info_akun = $_POST['user_id'];
$queryInfoAkun = "SELECT * FROM user WHERE id = '$info_akun'";
$infoAkun = query($queryInfoAkun);
$infoAkun = $infoAkun[0];

$isi_notifikasi = '
<span class="pt-2">
    <a class="font-weight-bold" href="./profile.php?id='. $infoAkun['id'] .'" target="_blank">'. $infoAkun['username'] .'</a> Menyukai postingan anda di <a class="font-weight-bold" href="./article.php?id='. $artikel_id .'" target="_blank">'. $judulPostingan .'</a>
</span>';
$queryTambahNotifikasi = "INSERT INTO user_notifikasi (user_id, isi_notifikasi, waktu_notifikasi, sudah_dilihat)
                            VALUES ('$user_id', '$isi_notifikasi', '$tanggalSekarang', '0')";
mysqli_query($db, $queryTambahNotifikasi);
?>

<i class="fas fa-thumbs-up"></i>
<span class="d-block totalLike"><?=$resultQueryTotalLikeAJAX[0]['COUNT(user_id)']?></span>