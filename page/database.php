<?php

// Koneksi Ke Database
$db = mysqli_connect('localhost', 'root', '', 'pemweb');
if (!$db) {
    die('Connection failed: ' . mysqli_connect_error());
}

// Query Database
function query($query)
{
    global $db;
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }

    return $rows;
}

// Check Cookie
function checkCookie()
{
    global $db;
    // Cek Cookie
    if (isset($_COOKIE['id']) && isset($_COOKIE['key'])) {
        $id = $_COOKIE['id'];
        $key = $_COOKIE['key'];

        $result = mysqli_query($db, "SELECT username FROM user WHERE id = '$id'");
        $row = mysqli_fetch_assoc($result);

        if ($key === hash('sha256', $row['username'])) {
            $_SESSION['login'] = true;
        }
    }
}

// Redirect ke login
function checkLogin()
{
    if (isset($_SESSION['login'])) {
        header('Location: ./../index.php');
        exit;
    }
}

// Redirect ke Index
function checkNotLogin()
{
    if (!isset($_SESSION['login'])) {
        header('Location: ./page/login.php');
        exit;
    }

}

function checkNotLoginInPage()
{
    if (!isset($_SESSION['login'])) {
        header('Location: ./login.php');
        exit;
    }

}

// Register User
function register_user($data)
{
    function input_foto()
    {
        $namaFile = $_FILES['fotoProfil']['name'];
        $ukuranFile = $_FILES['fotoProfil']['size'];
        $tmpName = $_FILES['fotoProfil']['tmp_name'];

        $ekstensiFotoValid = ['jpg', 'jpeg', 'png'];
        $ekstensiFoto = explode('.', $namaFile);
        $ekstensiFoto = strtolower(end($ekstensiFoto));

        // Cek Foto Yang Diupload
        if (!in_array($ekstensiFoto, $ekstensiFotoValid)) {
            return 'bukan_foto';
        }

        // Cek Ukuran File
        if ($ukuranFile > 1 * 1048576) {
            return 'foto_terlalu_besar';
        }

        $namaFileBaru = uniqid();
        $uniqIdName = $namaFileBaru;
        $namaFileBaru .= '';
        $namaFileBaru .= '.jpg';

        move_uploaded_file($tmpName, './../src/profile_pictures/' . $namaFileBaru);

        return $uniqIdName;
    }

    global $db;
    $username = strtolower(stripslashes($data['username']));
    $namaLengkap = stripslashes($data['namaLengkap']);
    $email = strtolower(stripslashes($data['email']));
    $password = mysqli_real_escape_string($db, $data['password']);
    $passwordKonfirmasi = mysqli_real_escape_string($db, $data['passwordKonfirmasi']);
    $tempatTinggal = htmlspecialchars($data['tempatTinggal']);
    $tanggalLahir = htmlspecialchars($data['tanggalLahir']);
    $pekerjaan = htmlspecialchars($data['pekerjaan']);
    $pendidikan = htmlspecialchars($data['pendidikan']);
    $tentangDirimu = htmlspecialchars($data['tentangDirimu']);

    // Cek Username
    $cekUsername = mysqli_query($db, "SELECT username FROM user WHERE username = '$username'");
    if (mysqli_fetch_assoc($cekUsername)) {
        return 'username_ada';
    }

    // Cek Whitespace username
    if (ctype_space($username)) {
        return 'ada_spasi';
    }

    // Cek Email
    $cekEmail = mysqli_query($db, "SELECT email FROM user WHERE email = '$email'");
    if (mysqli_fetch_assoc($cekEmail)) {
        return 'email_ada';
    }

    // Cek Password dan Konfirmasi Password
    if ($password != $passwordKonfirmasi) {
        return 'password_tidak_sama';
    }

    // Enkripsi Password
    $password = password_hash($password, PASSWORD_DEFAULT);

    $fotoProfil = input_foto();
    if ($fotoProfil == 'foto_terlalu_besar') {
        return 'foto_terlalu_besar';
    } else if ($fotoProfil == 'bukan_foto') {
        return 'bukan_foto';
    }

    // Ambil Waktu Sekarang
    date_default_timezone_set('Asia/Jakarta');
    $tanggalSekarang = date('Y-m-d') . ' ' . date('H:i:s');

    // Query ke DB
    $query = "
    INSERT INTO user (
        username, nama_lengkap, email, foto_profil,
        password, tempat_tinggal, tanggal_lahir,
        pekerjaan, pendidikan, tentang, waktu_pendaftaran)
    VALUES (
        '$username', '$namaLengkap', '$email', '$fotoProfil',
        '$password', '$tempatTinggal', '$tanggalLahir',
        '$pekerjaan', '$pendidikan', '$tentangDirimu',
        '$tanggalSekarang'
    )";
    mysqli_query($db, $query);

    $_SESSION['success_register'] = true;

    return mysqli_affected_rows($db);
}

// Login User
function login($data)
{
    global $db;
    $username = $data['username'];
    $password = $data['password'];

    // Check Username
    $result = mysqli_query($db, "SELECT * FROM user WHERE username = '$username'");

    // Check Password
    if (mysqli_num_rows($result) === 1) {
        $row = mysqli_fetch_assoc($result);
        if (password_verify($password, $row['password'])) {
            // Buat session
            $_SESSION['login'] = true;
            $_SESSION['id'] = $row['id'];
            // Cek Remember
            if (isset($_POST['remember'])) {
                // Buat Cookie
                setcookie('id', $row['id'], time() + 86400, '/');
                setcookie('key', hash('sha256', $row['username']), time() + 86400, '/');
                return 'success_login';
            }
            return 'success_login';
        }
    }
    return 'error_login';
}

// Buat Artikel
function buat_artikel($data)
{
    function input_header()
    {
        $namaFile = $_FILES['headerArtikel']['name'];
        $ukuranFile = $_FILES['headerArtikel']['size'];
        $tmpName = $_FILES['headerArtikel']['tmp_name'];

        $ekstensiFotoValid = ['jpg', 'jpeg', 'png'];
        $ekstensiFoto = explode('.', $namaFile);
        $ekstensiFoto = strtolower(end($ekstensiFoto));

        // Cek Foto Yang Diupload
        if (!in_array($ekstensiFoto, $ekstensiFotoValid)) {
            return 'bukan_foto';
        }

        // Cek Ukuran File
        if ($ukuranFile > 2 * 1048576) {
            return 'foto_terlalu_besar';
        }

        $namaFileBaru = uniqid();
        $uniqIdName = $namaFileBaru;
        $namaFileBaru .= '.';
        $namaFileBaru .= 'jpg';

        move_uploaded_file($tmpName, './../src/article_images/' . $namaFileBaru);

        return $uniqIdName;
    }

    global $db;
    $judulArtikel = htmlspecialchars($data['judulArtikel']);
    $isiArtikel = $data['isiArtikel'];
    $headerArtikel = input_header();
    if ($headerArtikel == 'foto_terlalu_besar') {
        return 'foto_terlalu_besar';
    } else if ($headerArtikel == 'bukan_foto') {
        return 'bukan_foto';
    }

    // Ambil Waktu Sekarang
    date_default_timezone_set('Asia/Jakarta');
    $tanggalSekarang = date('Y-m-d') . ' ' . date('H:i:s');

    // Ambil User ID
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

    // Query ke DB
    $query = "
        INSERT INTO artikel (
            user_id, waktu_buat, judul_artikel, header_artikel,
            isi_artikel)
        VALUES (
            " . $myUser['id'] . " , '$tanggalSekarang', '$judulArtikel',
            '$headerArtikel', '$isiArtikel'
        )";
    mysqli_query($db, $query);

    $_SESSION['artikel_berhasil_dibuat'] = true;

    return mysqli_affected_rows($db);
}

// Setting update data
function update_data($data, $myUser)
{
    function input_foto($myUser)
    {
        if ($_FILES['fotoProfil']['size'] != 0) {
            $namaFile = $_FILES['fotoProfil']['name'];
            $ukuranFile = $_FILES['fotoProfil']['size'];
            $tmpName = $_FILES['fotoProfil']['tmp_name'];

            $ekstensiFotoValid = ['jpg', 'jpeg', 'png'];
            $ekstensiFoto = explode('.', $namaFile);
            $ekstensiFoto = strtolower(end($ekstensiFoto));

            // Cek Foto Yang Diupload
            if (!in_array($ekstensiFoto, $ekstensiFotoValid)) {
                return 'bukan_foto';
            }

            // Cek Ukuran File
            if ($ukuranFile > 1 * 1048576) {
                return 'foto_terlalu_besar';
            }

            $namaFileBaru = uniqid();
            $uniqIdName = $namaFileBaru;
            $namaFileBaru .= '';
            $namaFileBaru .= '.jpg';

            move_uploaded_file($tmpName, './../src/profile_pictures/' . $namaFileBaru);
            unlink("./../src/profile_pictures/" . $myUser['foto_profil'] . ".jpg");

            return $uniqIdName;
        }
        return $myUser['foto_profil'];
    }

    global $db;
    $username = strtolower(stripslashes($data['username']));
    $namaLengkap = stripslashes($data['namaLengkap']);
    $email = strtolower(stripslashes($data['email']));
    $tempatTinggal = htmlspecialchars($data['tempatTinggal']);
    $tanggalLahir = htmlspecialchars($data['tanggalLahir']);
    $pekerjaan = htmlspecialchars($data['pekerjaan']);
    $pendidikan = htmlspecialchars($data['pendidikan']);
    $tentangDirimu = htmlspecialchars($data['tentangDirimu']);

    // Cek Username
    $cekUsername = mysqli_query($db, "SELECT username FROM user WHERE username = '$username'");
    $usernameTetap = query("SELECT username FROM user WHERE username = '$username'");
    if (mysqli_fetch_assoc($cekUsername) && !($myUser['username'] == $usernameTetap[0]['username'])) {
        return 'username_ada';
    }

    // Cek Whitespace username
    if (ctype_space($username)) {
        return 'ada_spasi';
    }

    // Cek Email
    $cekEmail = mysqli_query($db, "SELECT email FROM user WHERE email = '$email'");
    $emailTetap = query("SELECT email FROM user WHERE email = '$email'");
    if (mysqli_fetch_assoc($cekEmail) && !($myUser['email'] == $emailTetap[0]['email'])) {
        return 'email_ada';
    }

    $fotoProfil = input_foto($myUser);
    if ($fotoProfil == 'foto_terlalu_besar') {
        return 'foto_terlalu_besar';
    } else if ($fotoProfil == 'bukan_foto') {
        return 'bukan_foto';
    }

    // Query ke DB
    $query = "
    UPDATE user
    SET username = '$username',
    nama_lengkap = '$namaLengkap',
    email = '$email',
    foto_profil = '$fotoProfil',
    tempat_tinggal = '$tempatTinggal',
    pekerjaan = '$pekerjaan',
    pendidikan = '$pendidikan',
    tentang = '$tentangDirimu'
    WHERE id = " . $myUser['id'];
    mysqli_query($db, $query);

    $_SESSION['success_ganti_data'] = true;

    return mysqli_affected_rows($db);
}

// Ganti Password
function ganti_password($data, $myUser)
{
    global $db;
    $realPasswordLama = $myUser['password'];
    $passwordKonfirmasi = mysqli_real_escape_string($db, $data['passwordKonfirmasi']);
    $passwordBaru = mysqli_real_escape_string($db, $data['passwordBaru']);

    // Cek password lama
    if (!password_verify($data['passwordLama'], $realPasswordLama)) {
        return 'password_salah';
    }

    // Cek Password dan Konfirmasi Password
    if ($passwordBaru != $passwordKonfirmasi) {
        return 'password_tidak_sama';
    }

    $password = password_hash($passwordBaru, PASSWORD_DEFAULT);
    $queryGantiPassword = "UPDATE user SET password = '$password' WHERE id = " . $myUser['id'];
    mysqli_query($db, $queryGantiPassword);

    $_SESSION['success_ganti_password'] = true;
    return mysqli_affected_rows($db);
}

// Hapus Artikel
function hapus_artikel($data)
{
    global $db;
    $idArtikel = $data;
    $queryHapusKomentar = "DELETE FROM artikel_comment WHERE artikel_id = " . $idArtikel;
    mysqli_query($db, $queryHapusKomentar);

    $queryDataArticle = "SELECT header_artikel FROM artikel WHERE id = " . $idArtikel;
    $dataArticle = query($queryDataArticle);
    $dataArticle = $dataArticle[0];
    unlink("./../src/article_images/" . $dataArticle['header_artikel'] . ".jpg");

    $queryHapusArtikel = "DELETE FROM artikel WHERE id = " . $idArtikel;
    mysqli_query($db, $queryHapusArtikel);
    $_SESSION['artikel_berhasil_dihapus'] = true;
    return mysqli_affected_rows($db);
}

function hapus_artikel_index($data)
{
    global $db;
    $idArtikel = $data;
    $queryHapusKomentar = "DELETE FROM artikel_comment WHERE artikel_id = " . $idArtikel;
    mysqli_query($db, $queryHapusKomentar);

    $queryDataArticle = "SELECT header_artikel FROM artikel WHERE id = " . $idArtikel;
    $dataArticle = query($queryDataArticle);
    $dataArticle = $dataArticle[0];
    unlink("./src/article_images/" . $dataArticle['header_artikel'] . ".jpg");

    $queryHapusArtikel = "DELETE FROM artikel WHERE id = " . $idArtikel;
    mysqli_query($db, $queryHapusArtikel);
    $_SESSION['artikel_berhasil_dihapus'] = true;
    return mysqli_affected_rows($db);
}

// Beri Komentar
function beri_komentar($data, $idArtikel, $myUser)
{
    global $db;
    $data = htmlspecialchars($data);
    // Ambil Waktu Sekarang
    date_default_timezone_set('Asia/Jakarta');
    $tanggalSekarang = date('Y-m-d') . ' ' . date('H:i:s');
    $queryBeriKomentar = "INSERT INTO artikel_comment (user_id, artikel_id, isi_comment, waktu_comment)
                        VALUES (
                            " . $myUser['id'] . ",
                            '$idArtikel',
                            '$data',
                            '$tanggalSekarang'
                        )";
    mysqli_query($db, $queryBeriKomentar);

    $queryAmbilDataArtikel = "SELECT * FROM artikel WHERE id = '$idArtikel'";
    $ambilDataArtikel = query($queryAmbilDataArtikel);
    $ambilDataArtikel = $ambilDataArtikel[0];

    $queryAmbilSemuaKomentar = "SELECT * FROM artikel_comment WHERE artikel_id = '$idArtikel'";
    $ambilSemuaKomentar = query($queryAmbilSemuaKomentar);
    foreach ($ambilSemuaKomentar as $user_notifikasi) {
        if ($user_notifikasi['user_id'] == $myUser['id']) {
            continue;
        }
        $isi_notifikasi = '
        <span class="pt-2">
            <a class="font-weight-bold" href="./profile.php?id=' . $myUser['id'] . '" target="_blank">' . $myUser['username'] . '</a> Memberi komentar pada postingan di <a class="font-weight-bold" href="./article.php?id=' . $ambilDataArtikel['id'] . '" target="_blank">' . $ambilDataArtikel['judul_artikel'] . '</a>
        </span>';
        $queryBeriNotifikasi = "INSERT INTO user_notifikasi (
            user_id, isi_notifikasi, waktu_notifikasi, sudah_dilihat)
            VALUES (" . $user_notifikasi['user_id'] . ", '$isi_notifikasi', '$tanggalSekarang', '0')";
        mysqli_query($db, $queryBeriNotifikasi);
    }

    $isi_notifikasi = '
    <span class="pt-2">
        <a class="font-weight-bold" href="./profile.php?id=' . $myUser['id'] . '" target="_blank">' . $myUser['username'] . '</a> Memberi komentar pada postingan di <a class="font-weight-bold" href="./article.php?id=' . $ambilDataArtikel['id'] . '" target="_blank">' . $ambilDataArtikel['judul_artikel'] . '</a>
    </span>';
    $queryBeriNotifikasi = "INSERT INTO user_notifikasi (
        user_id, isi_notifikasi, waktu_notifikasi, sudah_dilihat)
        VALUES (" . $ambilDataArtikel['user_id'] . ", '$isi_notifikasi', '$tanggalSekarang', '0')";
    mysqli_query($db, $queryBeriNotifikasi);

    $_SESSION['berhasil_memberi_komentar'] = true;
    return mysqli_affected_rows($db);
}

// Hapus Komentar
function hapus_komentar($idKomentar)
{
    global $db;
    $queryHapusKomentar = "DELETE FROM artikel_comment WHERE id = '$idKomentar'";
    mysqli_query($db, $queryHapusKomentar);
    $_SESSION['berhasil_menghapus_komentar'] = true;
    return mysqli_affected_rows($db);
}

// Hapus dari saved artikel
function hapus_dari_saved_artikel($data, $myUser)
{
    global $db;
    $artikel_id = $data;
    $user_id = $myUser['id'];
    $queryHapus = "DELETE FROM user_saved_artikel WHERE user_id = '$user_id' AND artikel_id = '$artikel_id'";
    mysqli_query($db, $queryHapus);
    $_SESSION['artikel_berhasil_dihapus'] = true;
    return mysqli_affected_rows($db);

}
