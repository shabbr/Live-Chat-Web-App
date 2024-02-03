<?php
session_start();
session_abort();
session_destroy();
echo "<script> alert('logout');
 window.location.href='http://localhost/projects/online_chat_app/signup.php';
</script>";
?>