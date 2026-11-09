<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="asp_project_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>NOVA Store | Modern essentials</title>
    <link rel="stylesheet" href="css/styles.css">
    <style type="text/css">

        .add-cart-button {
    display: block;
    width: 100%;
    max-width: 300px;
    padding: 15px 20px;
    margin: 0 auto;
    background: #5b45f2;
    color: #fff;
    border: none;
    border-radius: 7px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
}
    </style>
    </head>

<body>
    <form id="form1" runat="server">
        <div>

            <!-- Navbar -->
            <nav class="navbar">
                <div class="container nav-inner">
                    <a class="logo" href="index.aspx">
                        NOVA
                        <span>STORE</span>
                    </a>

                    <div class="nav-links">
                        <a class="active" href="index.aspx">Home</a>


                        <a href="login.aspx">Login</a>

                        <div class="nav-dropdown">
                            <a class="nav-dropdown-toggle" href="register.aspx">Register</a>

                            <div class="nav-dropdown-menu">
                                <a href="register.aspx">User Register</a>
                                <a href="admin-register.aspx">Admin Register</a>
                            </div>
                        </div>

                        <a class="cart-link" href="cart.html">
                            Cart
                            <span class="cart-badge">0</span>
                        </a>
                    </div>
                </div>
            </nav>

            <!-- Carousel -->
            <main>
                <section class="hero">
                    <div class="slides-track">

                        <div class="slide" style="background-image:url('assets/images/categories/furniture.png')">
                            <div class="container slide-content">
                                <span class="eyebrow">New season, new spaces</span>

                                <h1>Make room for what matters.</h1>

                                <p>
                                    Thoughtful objects for your desk, home, and everyday rituals.
                                </p>

                                <a class="button" href="category.html">
                                    Explore furniture
                                </a>
                            </div>
                        </div>

                        <div class="slide" style="background-image:url('assets/images/categories/earphones.png')">
                            <div class="container slide-content">
                                <span class="eyebrow">Sound, uninterrupted</span>

                                <h1>Find your perfect frequency.</h1>

                                <p>
                                    Beautiful audio that travels with you, wherever the day goes.
                                </p>

                                <a class="button" href="category-earphones.html">
                                    Shop audio
                                </a>
                            </div>
                        </div>

                        <div class="slide" style="background-image:url('assets/images/categories/watches.png')">
                            <div class="container slide-content">
                                <span class="eyebrow">The everyday edit</span>

                                <h1>Small details. Big impact.</h1>

                                <p>
                                    Discover collectible pieces made to be used and loved.
                                </p>

                                <a class="button" href="category-watches.html">
                                    Shop watches
                                </a>
                            </div>
                        </div>

                    </div>
                </section>
            </main>
            <br />
             
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
    <ItemTemplate>
        <div style="padding:20px; text-align:center;">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="201px" Width="188px" ImageUrl='<%# Eval("category_image") %>' CommandArgument='<%# Eval("category_id") %>' OnCommand="ImageButton1_Command" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("category_name") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("category_description") %>'></asp:Label>
        </div>
    </ItemTemplate>
</asp:DataList>
            <%--<asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="10" CellSpacing="10">
    <ItemTemplate>
        <table style="width:180px; text-align:center; border-collapse:collapse;">
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="180px" Width="146px" ImageUrl='<%# Eval("category_image") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("category_name") %>' Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("category_description") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>--%>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Feedback" CssClass="add-cart-button" />
                <br />
            <!-- Footer -->
            <footer class="footer">
                
                © 2026 NOVASTORE. Made for everyday discovery.
            </footer>

        </div>
    </form>
</body>
</html>
```
