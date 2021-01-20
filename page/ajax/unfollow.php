<?php
require ("./../database.php");

// Like
if (isset($_POST['unfollow'])) {
    $user_id = $_POST['user_id'];
    $yangMauDifollow = $_POST['yangMauDifollow'];
    $queryHapusFollowers = "DELETE FROM user_followers WHERE user_id = '$user_id' AND user_id_followers = '$yangMauDifollow'";
    mysqli_query($db, $queryHapusFollowers);

    $queryHapusFollowing = "DELETE FROM user_following WHERE user_id = '$yangMauDifollow' AND user_id_following = '$user_id'";
    mysqli_query($db, $queryHapusFollowing);

    echo '<span class="text-primary font-weight-bold mx-1">Follow</span>';
}
else if(isset($_POST['unfollowProfile'])) {
    $user_id = $_POST['user_id'];
    $yangMauDifollow = $_POST['yangMauDifollow'];
    $queryHapusFollowers = "DELETE FROM user_followers WHERE user_id = '$user_id' AND user_id_followers = '$yangMauDifollow'";
    mysqli_query($db, $queryHapusFollowers);

    $queryHapusFollowing = "DELETE FROM user_following WHERE user_id = '$yangMauDifollow' AND user_id_following = '$user_id'";
    mysqli_query($db, $queryHapusFollowing);

    // Profil Followers
    $queryProfilFollower = "SELECT COUNT(user_id_followers) FROM user_followers WHERE user_id = ". $yangMauDifollow;
    $profilFollower = query($queryProfilFollower);
    $profilFollower = $profilFollower[0]['COUNT(user_id_followers)'];

    // Profil Following
    $queryProfilFollowing = "SELECT COUNT(user_id_following) FROM user_following WHERE user_id = ". $yangMauDifollow;
    $profilFollowing = query($queryProfilFollowing);
    $profilFollowing = $profilFollowing[0]['COUNT(user_id_following)'];

    $returnValue['pertama'] = '<span class="text-primary font-weight-bold mx-1">Follow</span>';
    $returnValue['kedua'] = '<a href="./followers.php?id='. $yangMauDifollow .'">'. $profilFollower .' Followers</a> |
    <a href="./following.php?id='. $yangMauDifollow .'">'. $profilFollowing .' Following</a>';

    echo json_encode($returnValue);
}
?>

