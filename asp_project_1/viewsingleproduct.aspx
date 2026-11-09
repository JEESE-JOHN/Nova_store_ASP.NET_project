<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewsingleproduct.aspx.cs" Inherits="asp_project_1.viewsingleproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>NOVA Store | Modern essentials</title>
    <link rel="stylesheet" href="css/styles.css">


<style type="text/css">

    /* PRODUCT PAGE */

    .single-product-section {
        width: 90%;
        max-width: 1100px;
        margin: 60px auto;
    }

    .single-product-card {
        background: #ffffff;
        border-radius: 18px;
        padding: 45px;
        display: flex;
        align-items: center;
        gap: 60px;
        box-shadow: 0 8px 30px rgba(0,0,0,0.08);
    }

    /* PRODUCT IMAGE */

    .product-image-box {
        width: 50%;
        text-align: center;
    }

    .product-image {
        width: 100%;
        max-width: 400px;
        height: 450px;
        object-fit: contain;
        border-radius: 12px;
    }

    /* PRODUCT DETAILS */

    .product-details {
        width: 50%;
    }

    .product-small-title {
        font-size: 13px;
        color: #888;
        letter-spacing: 2px;
        text-transform: uppercase;
        margin-bottom: 12px;
    }

    .product-name {
        display: block;
        font-size: 32px;
        font-weight: bold;
        color: #111;
        margin-bottom: 18px;
    }

    .product-price {
        display: block;
        font-size: 26px;
        font-weight: bold;
        color: #222;
        margin-bottom: 25px;
    }

    .product-description {
        display: block;
        color: #666;
        font-size: 16px;
        line-height: 1.7;
        margin-bottom: 30px;
    }

    /* SIZE */

    .size-title {
        display: block;
        font-size: 14px;
        font-weight: bold;
        margin-bottom: 8px;
        color: #333;
    }

    .size-dropdown {
        width: 180px;
        padding: 11px 12px;
        font-size: 15px;
        border: 1px solid #ccc;
        border-radius: 6px;
        background: #fff;
        margin-bottom: 25px;
    }

    /* ADD TO CART */

    .add-cart-button {
    display: block;
    width: 100%;
    max-width: 300px;
    padding: 15px 20px;
    background: #5b45f2;
    color: #fff;
    border: none;
    border-radius: 7px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
}

.add-cart-button:hover {
    background: #4935d1;
}

    /* FOOTER */

    .product-footer {
        margin-top: 70px;
    padding: 30px;
    text-align: center;
    background: #5b45f2;
    color: #fff;
    font-size: 14px;
    }

    /* MOBILE */

    @media (max-width: 768px) {

        .single-product-card {
            flex-direction: column;
            padding: 25px;
            gap: 30px;
        }

        .product-image-box {
            width: 100%;
        }

        .product-details {
            width: 100%;
        }

        .product-image {
            height: 350px;
        }

        .product-name {
            font-size: 28px;
        }

        .product-price {
            font-size: 23px;
        }

    }

</style>

</head>

<body>

<form id="form1" runat="server">

    <div>

        <!-- NAVBAR - UNCHANGED -->

        <nav class="navbar">

            <div class="container nav-inner">

                <a class="logo" href="index.aspx">
                    NOVA
                    <span>STORE</span>
                </a>

                <div class="nav-links">

                    <a class="active" href="index.aspx">Home</a>

                    <a href="category.html">Categories</a>

                    <a href="login.aspx">Login</a>

                    <div class="nav-dropdown">

                        <a class="nav-dropdown-toggle" href="register.aspx">
                            Register
                        </a>

                        <div class="nav-dropdown-menu">

                            <a href="register.aspx">
                                User Register
                            </a>

                            <a href="admin-register.aspx">
                                Admin Register
                            </a>

                        </div>

                    </div>

                    <a class="cart-link" href="cart.html">
                        Cart
                        <span class="cart-badge">0</span>
                    </a>

                </div>

            </div>

        </nav>


        <!-- SINGLE PRODUCT -->

        <section class="single-product-section">

            <div class="single-product-card">

                <!-- IMAGE -->

                <div class="product-image-box">

                    <asp:Image
                        ID="Image1"
                        runat="server"
                        CssClass="product-image"
                        Width="340px"
                        Height="375px" />

                </div>


                <!-- DETAILS -->

                <div class="product-details">

                    <div class="product-small-title">
                        NOVA STORE
                    </div>

                    <asp:Label
                        ID="Label1"
                        runat="server"
                        CssClass="product-name"
                        Text="Product Name"> </asp:Label>

                    <asp:Label
                        ID="Label2"
                        runat="server"
                        CssClass="product-price"
                        Text="₹0"> </asp:Label>

                    <asp:Label
                        ID="Label3"
                        runat="server"
                        CssClass="product-description"
                        Text="Product description"> </asp:Label>


                    <!-- SIZE -->

                    <asp:Label
                        ID="Label4"
                        runat="server"
                        Text="Select Quantity"
                        CssClass="size-title"></asp:Label>

                    <asp:DropDownList
                        ID="DropDownList1"
                        runat="server"
                        CssClass="size-dropdown">

                        <asp:ListItem></asp:ListItem>

                    </asp:DropDownList>


                    <!-- BUTTON -->

                    <asp:Button
                        ID="Button1"
                        runat="server"
                        OnClick="Button1_Click"
                        Text="Add to Cart"
                        CssClass="add-cart-button" />

                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Conitnue" CssClass="add-cart-button" />
                    <br />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="View cart" CssClass="add-cart-button" />

                </div>

            </div>

        </section>


        <!-- FOOTER -->

        <footer class="product-footer">

            © 2026 NOVASTORE. Made for everyday discovery.

             © 2026 NOVASTORE. Made for everyday discovery.

        </footer>

    </div>

</form>
```

</body>
</html>
