<?php
include('config.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Form</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
  }
  .container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }
  h1 {
    text-align: center;
    margin-bottom: 20px;
  }
  .input-group {
    margin-bottom: 15px;
  }
  .input-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
  }
  .input-group input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  .btn {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  .btn:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
  <div class="container">
    <h1>Registration Form</h1>
    <form  method="POST">

      <div class="input-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div class="input-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
      </div>
      <button type="submit" class="btn" name="login">Login</button>
    </form>
  </div>
</body>
</html>
<?php
include('config.php');
if(isset($_POST['login'])){
  session_start();
  $_SESSION['email']=$_POST['email'];

  $_SESSION['password']=$_POST['password'];
  $sql="SELECT * FROM `sign_up` where email= '{$_SESSION['email']}' AND password='{$_SESSION['password']}' ";
  $result=mysqli_query($conn,$sql);
  if(mysqli_num_rows($result)>0){
    echo '<script> alert("login successfully");
    window.location.href="http://localhost/projects/online_chat_app/index.php";
    </script>';
    
  }else{
    echo '<script> alert("login failed")
     window.location.href="http://localhost/projects/online_chat_app/signup.php";
    </script>';
  }

}

?>

<?php
// if(isset($_POST['login'])){
//     $email=$_POST['email'];
//   $psd=$_POST['password'];
//     $sql="select * from sign_up where password='$psd' ANd email='$email'";
//  $result=mysqli_query($conn,$sql);
//  if($result){
//     header("Location: index.php");
//  }else{
//   echo "failed";
// }
// }
?>