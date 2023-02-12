<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="proje.index" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yemek Tarifleri</title>
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
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
    <div class="page__container">
        <div class="recipes__container">
            <div class="description__container">
                <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <ItemTemplate>
                       
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td>
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style2">
                                                <a href="Recipe.aspx?Yemekid=<%#Eval("ID") %>">
                                                <asp:Image ID="Image1" runat="server" CssClass="Img" ImageUrl='<%# Eval("Picture") %>' />
                                                </a>
                                            </td>
                                            <td>
                                                <table class="auto-style1">
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Name" runat="server" CssClass="name" Text='<%# Eval("Name") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Recipe" runat="server" CssClass="description" Text='<%# Eval("Recipe") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>

    </form>

</body>

</html>