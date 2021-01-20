<?php
require ("./../database.php");

// Like
if (isset($_POST['unliked'])) {
    date_default_timezone_set('Asia/Jakarta');
    $user_id = $_POST['user_id'];
    $artikel_id = $_POST['postid'];

    $queryHapusLike = "DELETE FROM artikel_like WHERE user_id = $user_id AND artikel_id = $artikel_id";
    mysqli_query($db, $queryHapusLike);

    $queryTotalLikeAJAX = "SELECT COUNT(user_id) FROM artikel_like WHERE artikel_id = $artikel_id";
    $resultQueryTotalLikeAJAX = query($queryTotalLikeAJAX);
}
?>

<i class="far fa-thumbs-up"></i>
<span class="d-block totalLike"><?=$resultQueryTotalLikeAJAX[0]['COUNT(user_id)']?></span>