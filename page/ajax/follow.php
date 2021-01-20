<?php
require ("./../database.php");

// Like
if (isset($_POST['follow'])) {
    $user_id = $_POST['user_id'];
    $yangMauDifollow = $_POST['yangMauDifollow'];
    date_default_timezone_set('Asia/Jakarta');
    $tanggalSekarang = date('Y-m-d') . ' ' . date('H:i:s');
    $queryTambahFollowers = "INSERT INTO user_followers (user_id, user_id_followers, waktu_follow)
                        VALUES ('$user_id', '$yangMauDifollow', '$tanggalSekarang')";
    mysqli_query($db, $queryTambahFollowers);

    $queryTambahFollowing = "INSERT INTO user_following (user_id, user_id_following, waktu_follow)
    VALUES ('$yangMauDifollow', '$user_id', '$tanggalSekarang')";
    mysqli_query($db, $queryTambahFollowing);

    echo '<span class="text-secondary font-weight-bold mx-1">Unfollow</span>';
}

else if(isset($_POST['followProfile'])) {
    $user_id = $_POST['user_id'];
    $yangMauDifollow = $_POST['yangMauDifollow'];
    date_default_timezone_set('Asia/Jakarta');
    $tanggalSekarang = date('Y-m-d') . ' ' . date('H:i:s');
    $queryTambahFollowers = "INSERT INTO user_followers (user_id, user_id_followers, waktu_follow)
                        VALUES ('$user_id', '$yangMauDifollow', '$tanggalSekarang')";
    mysqli_query($db, $queryTambahFollowers);

    $queryTambahFollowing = "INSERT INTO user_following (user_id, user_id_following, waktu_follow)
    VALUES ('$yangMauDifollow', '$user_id', '$tanggalSekarang')";
    mysqli_query($db, $queryTambahFollowing);

    // Profil Followers
    $queryProfilFollower = "SELECT COUNT(user_id_followers) FROM user_followers WHERE user_id = ". $yangMauDifollow;
    $profilFollower = query($queryProfilFollower);
    $profilFollower = $profilFollower[0]['COUNT(user_id_followers)'];

    // Profil Following
    $queryProfilFollowing = "SELECT COUNT(user_id_following) FROM user_following WHERE user_id = ". $yangMauDifollow;
    $profilFollowing = query($queryProfilFollowing);
    $profilFollowing = $profilFollowing[0]['COUNT(user_id_following)'];

    $returnValue['pertama'] = '<span class="text-secondary font-weight-bold mx-1">Unfollow</span>';
    $returnValue['kedua'] = '<a href="./followers.php?id='. $yangMauDifollow .'">'. $profilFollower .' Followers</a> |
    <a href="./following.php?id='. $yangMauDifollow .'">'. $profilFollowing .' Following</a>';

    echo json_encode($returnValue);
}

date_default_timezone_set('Asia/Jakarta');
$tanggalSekarang = date('Y-m-d') . ' ' . date('H:i:s');
$user_id = $_POST['yangMauDifollow'];

$info_akun = $_POST['user_id'];
$queryInfoAkun = "SELECT * FROM user WHERE id = '$info_akun'";
$infoAkun = query($queryInfoAkun);
$infoAkun = $infoAkun[0];
$isi_notifikasi = '
<span class="pt-2">
    <a class="font-weight-bold" href="./profile.php?id='. $infoAkun['id'] .'" target="_blank">'. $infoAkun['username'] .'</a> Mulai mengikuti anda.
</span>';
$queryTambahNotifikasi = "INSERT INTO user_notifikasi (user_id, isi_notifikasi, waktu_notifikasi, sudah_dilihat)
                            VALUES ('$user_id', '$isi_notifikasi', '$tanggalSekarang', '0')";
mysqli_query($db, $queryTambahNotifikasi);

?>
