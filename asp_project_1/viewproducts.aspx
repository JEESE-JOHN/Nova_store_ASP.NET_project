<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewproducts.aspx.cs" Inherits="asp_project_1.viewproducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>NOVA Store | Modern essentials</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                <ItemTemplate>
                <div style="padding:20px; text-align:center;">

                    <asp:ImageButton ID="ImageButton1" runat="server" Height="201px" ImageUrl='<%# Eval("product_image") %>' Width="162px" OnCommand="ImageButton1_Command" CommandArgument='<%# Eval("product_id") %>' />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                    <br />
                    ₹:<asp:Label ID="Label2" runat="server" Text='<%# Eval("product_price") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_description") %>'></asp:Label>
                </div>
                </ItemTemplate>
        </asp:DataList>
            <footer class="footer">
                
                © 2026 NOVASTORE. Made for everyday discovery.
            </footer>

        </div>
        
    </form>
</body>
</html>
