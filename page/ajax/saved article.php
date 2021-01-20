<?php
require ("./../database.php");

// Like
if (isset($_POST['saved'])) {
    date_default_timezone_set('Asia/Jakarta');
    $user_id = $_POST['user_id'];
    $artikel_id = $_POST['postid'];
    $tanggalSekarang = date('Y-m-d') . ' ' . date('H:i:s');
    $queryTambahSave = "INSERT INTO user_saved_artikel (user_id, artikel_id, waktu_saved_artikel)
                        VALUES ('$user_id', '$artikel_id', '$tanggalSekarang')";
    mysqli_query($db, $queryTambahSave);
}
?>

<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-bookmark-fill" viewBox="0 0 16 16">
    <path fill-rule="evenodd" d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5V2z"/>
</svg>