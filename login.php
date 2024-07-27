
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="login_check.php" method="POST">
    <center>
        <caption><h2>USER LOGIN</h2></caption>
   
        <table>
            
            <tr>
                <td>
                    Name
                </td>
                <td>
                    <input type="text" id="name" name="username"  autocomplete="off">
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="email" id="email" name="email"  autocomplete="off"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" id="pass"  name="password"  id="password"></td>
            </tr>
        </table>
        <br>
    
        <div class="mid">
            <button type="submit" class="btn btn-primary">LOGIN</button>
            <a href="password.php"> forgetpassword</a>
        </div>
</center>
       </form>
       <h3>
        <?php
        error_reporting(0);
        session_start();
        session_destroy();
        echo $_SESSION['warning'];
        ?>
        </h3>
</body>
</html>