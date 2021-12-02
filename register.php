<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>

    <link rel="stylesheet" href="style.css">

</head>
<body>
    <div class="container">
        <form class="Login email">
            <p class="login-text" style="font-size: 2rem; form-weight:800;">Sign Up</p>
            <div class="input-group">
                <input type="text" placeholder="Username" name="username" required>
            </div>

            <div class="input-group">
            <input type="email" placeholder="Email" name="email" required>
            </div>

            <div class="input-group">
            <input type="password" placeholder="Password" name="password" required>
            </div>

            <div class="input-group">
            <input type="password" placeholder="Confirm Password" name="cpassword" required>
            </div>

            <div class="input-group">
            <button class="btn">Sign Up</button>
            </div>

            <p class="Login-register-text"><h6>Have an account already? <a href="Login.php">Log In</a></h6></p>
            



        </form>
    </div>
    
</body>
</html>