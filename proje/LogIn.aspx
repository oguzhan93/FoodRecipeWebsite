<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="proje.LogIn" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log In</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <nav class="navbar">
        <div class="navbar__container">
            <a href="index.aspx" class="navbar__logo" id="navbar__logo">Home</a>
            <ul class="navbar__menu">
                <li class="navbar__item">
                    <a href="#randomRecipe" class="navbar__links" id="randomRecipe-page">Random Recipe</a>
                </li>
                <li class="navbar__item">
                    <a href="NewRecipe.aspx" class="navbar__links" id="newRecipe-page">New Recipe</a>
                </li>
                <li class="navbar__item">
                    <a href="AboutUs.aspx" class="navbar__links" id="aboutUs-page">About Us</a>
                </li>
                <li class="navbar__item">
                    <a href="LogIn.aspx" class="button" id="signup-page">Log In</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="form__container">
        <div class="login-form">
            <asp:Label runat="server" ID="login" class="session_failed_text"></asp:Label>
            <h1 class="h1">Login</h1>
            <div class="form-input-material">
                <input type="text" name="username" id="username" placeholder=" " autocomplete="off"
                    class="form-control-material" required />
                <label for="username">Username</label>
            </div>
            <div class="form-input-material">
                <input type="password" name="password" id="password" placeholder=" " autocomplete="off"
                    class="form-control-material" required />
                <label for="password">Password</label>
            </div>
            <button type="submit" class="form__btn" onclick="LogIn_Button_Click">Login</button>
            <h1 style="font-size: 12px; margin-top: 12px;">Don't have an account?   <a style="color: blue;" href="SignUp.aspx">  Sign Up</a></h1>
        </div>
    </div>
</body>

</html>
