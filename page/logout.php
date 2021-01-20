<?php
session_start();
session_unset();
session_destroy();
session_write_close();
setcookie('id', '', time() - 3600, '/');
setcookie('key', '', time() - 3600, '/');
session_regenerate_id(true);

header("Location: ./login.php");
exit;
