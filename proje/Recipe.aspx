<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recipe.aspx.cs" Inherits="proje.Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Recipe</title>
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            display: grid;
            width: 397px;
            height: auto;
            justify-content: space-between;
            margin-top: 30px;
            margin-left: 305px;
            }

        .auto-style5 {
            text-align: left;
            width: 200px;
            height: auto;
        }   
        
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            width: 122px;
        }
        .auto-style8 {
            display: grid;
            width: 300px;
            height: auto;
            justify-content: space-between;
            margin-top: 30px;
            margin-left: 27px;
        }
        .auto-style9 {
            margin-left: 31px;
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
                        <a href="newRecipe.aspx" class="navbar__links" id="newRecipe-page">New Recipe</a>
                    </li>
                    <li class="navbar__item">
                        <a href="AboutUs.aspx" class="navbar__links" id="aboutUs-page">About Us</a>
                    </li>
                    <li class="navbar__item"></li>
                </ul>
            </div>

        </nav>
        <div class="recipe__detail__container">
            <div class="recipe__detail">
                <asp:Label runat="server" ID="name" class="detail_name"></asp:Label>
                <asp:Image ID="image" runat="server" class="detail_img" ImageUrl='<%# Eval("Picture") %>' />
                <asp:Label runat="server" class="detail_description" ID="ingredients"></asp:Label>
                <asp:Label runat="server" class="detail_description" ID="recipe"></asp:Label>
                <div class="auto-style8">

                    <asp:DataList ID="DataList1" runat="server" Width="700px" Style="border-radius: 30px;" BorderColor="Black" BorderStyle="Solid" GridLines="Both" CssClass="auto-style9"  >

                        <ItemStyle BackColor="Gray" />

                        <ItemTemplate>

                            <table class="auto-style1">

                                <tr>

                                    <td class="auto-style7">
                                        <asp:Label class="comment_name" ID="Label2" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label1" runat="server" class="comment-text" Text='<%# Eval("Comment") %>'></asp:Label>
                                    </td>

                                </tr>

                            </table>


                        </ItemTemplate>
                        </asp:DataList>
                    
                </div>
                <div class="auto-style2">
                    &nbsp;<input runat="server" id="commentName" type="text " class="auto-style6" placeholder="Nick" required autocomplete="off" /><br />
                    &nbsp;<textarea runat="server" name="comment" id="comment" cols="30" rows="4" class="auto-style6" placeholder="Comment" required></textarea><asp:Button class="send__btn" id="send_button" runat="server" Text="Send" OnClick="send_button_Click" />
                    <br />
                    
                </div>
            </div>
        </div>
    </form>
</body>
</html>
