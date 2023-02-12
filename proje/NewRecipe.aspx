<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRecipe.aspx.cs" Inherits="proje.NewRecipe" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Recipe</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <form id="form1" runat="server">
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
                    
                </li>
            </ul>
        </div>
    </nav>
    <div class="form__container">
        <div class="new-recipe-form">
            <h1 class="h1">New Recipe</h1>
            <div class="form-input-material">
                <asp:TextBox ID="foodname" runat="server" type="text" name="foodname"  placeholder=" " autocomplete="off"
                    class="form-control-material" required ></asp:TextBox>
                <label class="label" for="foodname">Name</label>
            </div>
            <div class="form-input-material">
                <asp:TextBox runat="server" type="text" name="ingredients" ID="ingredients" placeholder=" " autocomplete="off"
                    class="form-control-material" required/>
                <label class="label" for="ingredients">Ingredients</label>
            </div>
            <div class="form-input-material">
                <textarea name="recipe" id="recipe" cols="50" rows="10" placeholder="Write your recipe here." required></textarea>
            </div>
            <div class="form-input-material">
                
            </div>
            <div class="form-input-material">
                <asp:FileUpload runat="server" type="file"  name="imageOfRecipe" ID="imageOfRecipe" accept="image/*" class="form-control-material" ></asp:FileUpload>
                <label for="imageOfRecipe"></label>
            </div>
            <div style="height: 120px">
               
                <asp:Button runat="server" type="submit" class="share__btn" ID="share_button" Text="Share" OnClick="share_button_Click"/>

                

                </div>
        </div>
    </div>
    </form>
</body>

</html>