<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RandomRecipe.aspx.cs" Inherits="proje.RandomRecipeaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Random Recipe</title>
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
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
