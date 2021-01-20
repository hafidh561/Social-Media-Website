// Cek Notifikasi
setInterval(function () {
	let user_id = $(".button-notifications").attr("data-user-id");
	$post = $(".button-notifications");
	$.ajax({
		url: './ajax/notifikasi.php',
		type: 'post',
		data: {
			cek_notifikasi: 1,
			user_id: user_id
		},
		success: function(response) {
			$post.html(response);
		},
	});
}, 1000);

$('.buttonUnlike, .buttonLike').on('click', function () {
	let postid = $(this).attr('data-id');
	let userid = $(this).attr('data-user-id');
	$post = $(this);
	$post.toggleClass('buttonUnlike');
	if (!$post.hasClass('buttonUnlike')) {
		$.ajax({
			url: './ajax/unlike.php',
			type: 'post',
			data: {
				unliked: 1,
				postid: postid,
				user_id: userid,
			},
			success: function (response) {
				$post.html(response);
			},
		});
	} else {
		$.ajax({
			url: './ajax/like.php',
			type: 'post',
			data: {
				liked: 1,
				postid: postid,
				user_id: userid,
			},
			success: function (response) {
				$post.html(response);
			},
		});
	}
});

$('.savedArticle, .unsavedArticle').on('click', function () {
	let postid = $(this).attr('data-id');
	let userid = $(this).attr('data-user-id');
	$post = $(this);
	$post.toggleClass('unsavedArticle');
	if (!$post.hasClass('unsavedArticle')) {
		$.ajax({
			url: './ajax/unsaved article.php',
			type: 'post',
			data: {
				unsaved: 1,
				postid: postid,
				user_id: userid,
			},
			success: function (response) {
				$post.html(response);
			},
		});
	} else {
		$.ajax({
			url: './ajax/saved article.php',
			type: 'post',
			data: {
				saved: 1,
				postid: postid,
				user_id: userid,
			},
			success: function (response) {
				$post.html(response);
			},
		});
	}
});
$('.followSekarang, .unfollowSekarang').on('click', function () {
	let yangMauDifollow = $(this).attr('data-id');
	let userid = $(this).attr('data-user-id');
	$post = $(this);
	$post.toggleClass('unfollowSekarang');
	if (!$post.hasClass('unfollowSekarang')) {
		$.ajax({
			url: './ajax/unfollow.php',
			type: 'post',
			data: {
				unfollow: 1,
				yangMauDifollow: yangMauDifollow,
				user_id: userid,
			},
			success: function (response) {
				$post.html(response);
			},
		});
	} else {
		$.ajax({
			url: './ajax/follow.php',
			type: 'post',
			data: {
				follow: 1,
				yangMauDifollow: yangMauDifollow,
				user_id: userid,
			},
			success: function (response) {
				$post.html(response);
			},
		});
	}
});

$('.followSekarangProfile, .unfollowSekarangProfile').on('click', function () {
	let yangMauDifollow = $(this).attr('data-id');
	let userid = $(this).attr('data-user-id');
	$post = $(this);
	$post.toggleClass('unfollowSekarangProfile');
	if (!$post.hasClass('unfollowSekarangProfile')) {
		$.ajax({
			url: './ajax/unfollow.php',
			type: 'post',
			data: {
				unfollowProfile: 1,
				yangMauDifollow: yangMauDifollow,
				user_id: userid,
			},
			dataType: 'JSON',
			success: function (response) {
				$post.html(response['pertama']);
				$(".bagian-follow").html(response['kedua']);
			},
		});
	} else {
		$.ajax({
			url: './ajax/follow.php',
			type: 'post',
			data: {
				followProfile: 1,
				yangMauDifollow: yangMauDifollow,
				user_id: userid,
			},
			dataType: 'JSON',
			success: function (response) {
				$post.html(response['pertama']);
				$(".bagian-follow").html(response['kedua']);
			},
		});
	}
});

// Tombol Share Facebook
let article_id = $('.tombol-share-facebook').attr('data-article-id');
let new_link =
	'https://www.facebook.com/sharer/sharer.php?u=https://www.' +
	window.location.hostname +
	'/PEMWEB/Back-End/page/article.php?id=' +
	article_id;
$('.tombol-share-facebook').attr("href", new_link);

// Tombol Share Twitter
new_link =
	'https://www.twitter.com/share?url=https://www.' +
	window.location.hostname +
	'/PEMWEB/Back-End/page/article.php?id=' +
	article_id;
$('.tombol-share-twitter').attr("href", new_link);

// Tombol Sematkan
$(".sematkan-button").on("click", function() {
	let makeLink = 'https://www.' + window.location.hostname + '/PEMWEB/Back-End/page/article.php?id=' + article_id;
	let tempInput = document.createElement("input");
	tempInput.value = makeLink;
	document.body.appendChild(tempInput);
	tempInput.select();
	document.execCommand("copy");
	document.removeChild(tempInput);
})