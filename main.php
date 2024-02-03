<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<style>
    .container {
        display: flex;
    }

    .one {
        flex: 0 0 30%;
        background-color: red;
        padding: 10px;
    }

    .two {
        flex: 1;
        background-color: yellow;
        padding: 10px;
    }
</style>
</head>
<body>
    <div class="container">
<div class="one">
    <?php
    session_start();
    include('config.php');
    $sql = "SELECT * FROM `sign_up`";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            echo '<span class="name-meta">' . $row['name'] . '</span><br>';
        }
    }
    echo $_SESSION['email'];
    ?>
</div>
<div class="two">sss</div>
</div>
</body>
</html>
