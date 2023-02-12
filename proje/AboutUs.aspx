<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="proje.AboutUs" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <nav class="navbar">
        <div class="navbar__container">
            <a href="index.aspx" class="navbar__logo" id="navbar__logo">Home</a>
            <ul class="navbar__menu">
                <li class="navbar__item">
                    <a href="RandomRecipe.aspx" class="navbar__links" id="randomRecipe-page">Random Recipe</a>
                </li>
                <li class="navbar__item">
                    <a href="NewRecipe.aspx" class="navbar__links" id="newRecipe-page">New Recipe</a>
                </li>
                <li class="navbar__item">
                    <a href="AboutUs.aspx" class="navbar__links" id="aboutUs-page">About Us</a>
                </li>
                <li class="navbar__item">
                    
                </li>
            </ul>
        </div>

    </nav>

    <div class="about-us">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <label class="about-us-text">This website was created by Oğuzhan Sancar, in 2021.</label>

        <div class="about-us-bar-container">
            <a style="margin-left: 20px;" href="https://facebook.com">
                <img src="Logos/facebook.png" class="about-us-logo">
            </a>
            <a href="https://youtube.com">
                <img src="Logos/youtube.png" class="about-us-logo">
            </a>
            <a href="https://instagram.com">
                <img src="Logos/instagram.png" class="about-us-logo">
            </a>
            <a href="https://twitter.com">
                <img style="margin-right: 20px;" src="Logos/twitter.png" class="about-us-logo">
            </a>
        </div>
    </div>

</body>

</html>
