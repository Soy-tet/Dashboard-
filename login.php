<?php 
$connection = mysqli_connect("localhost","root","","User");
if(!$connection){
    die("connection death");
}
if( 
    // ($_POST["username"]!="")&&
    // ($_POST["pw"]!="")&&
    isset($_POST["username"])&&
    isset($_POST["pw"])){
        $username = $_POST["username"];
        $password = $_POST["pw"];
        $chack = mysqli_query($connection,"SELECT Username, pw FROM User_input WHERE Username = '$username' && pw = '$password';");
        $chack2 = mysqli_query($connection,"SELECT Username FROM User_input WHERE Username = '$username';");
        $result = mysqli_query($connection,"INSERT INTO `User_login` (`Username`,`pw`, `ID`, `when-create`) VALUES ('$username', '$password', NULL, CURRENT_TIME());");
        $chackU = mysqli_fetch_assoc($chack);
        $chackU2 = serialize($chack2);
        if($chackU == true){
            echo("U are login sucessfully, Now you can click login again to directly in Dashboard!");
            $cook = setcookie("username", "$username", time()+7*24*60*60);
        }
        else{
            echo("Username or password was wrong");
        }
}
else{
    echo"please fill in blank";
}
?>
<?php
$action ="";
if( !isset($_POST["username"])&&
    !isset($_POST["pw"])){

}
else{
    $username = $_POST["username"];
    $password = $_POST["pw"];
    $chack = mysqli_query($connection,"SELECT Username, pw FROM User_input WHERE Username = '$username' && pw = '$password';");
    $chackU = mysqli_fetch_assoc($chack);
    if($chackU==true){ 
        $action = "./Dashboard@.php"; 
        }
      else{
        $action = "#"; 
        } 
}
  ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/signup.css">
</head>
<body>
    <div class="container_form">
        <div class="login">
            <form method="post" action="./signup.php">
                <input type="submit" value="Sign Up" id="login">
            </form>
        </div>
        <div class="signup">Login Account</div>
        <form method="post" action="<?php echo $action; ?>">
            <input type="text" placeholder="username" name="username" id="input">
            <input type="password" placeholder="password" name="pw" id="input">
            <input type="submit" value="Login" id="submit">
        </form>
    </div>
</body>
</html>