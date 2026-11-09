<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="asp_project_1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>
        Login | NOVA Store
    </title>
    <link rel="stylesheet" href="css/styles.css">
    <script>
        function showPopup() {
            alert("Your account is inactive");
        }
    </script>
    
</head>

<body>
    <form id="form1" runat="server">

        <div>
            <nav class="navbar">
                <div class="container nav-inner">
                    <a class="logo" href="index.aspx">
                        NOVA
                        <span>
                            STORE
                        </span>
                    </a>

                    <div class="nav-links">
                        <a href="index.aspx">
                            Home
                        </a>

                        <a href="category.html">
                            Categories
                        </a>

                        <a class="active" href="login.aspx">
                            Login
                        </a>

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
                            <span class="cart-badge">
                                0
                            </span>
                        </a>
                    </div>
                </div>
            </nav>

            <main class="auth">
                <div class="form-card">

                    <h1>
                        Welcome back
                    </h1>

                    <p>
                        Log in to keep track of your favorite finds.
                    </p>

                    <label class="field">
                        username
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Your username"></asp:TextBox>
                    </label>

                    <label class="field">
                        Password
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                    </label>

                    <asp:Button
                        ID="btnLogin"
                        runat="server"
                        Text="Log in"
                        CssClass="button" OnClick="btnLogin_Click" />

                    <asp:Label
                        ID="lblMessage"
                        runat="server">
                    </asp:Label>

                    <p class="form-foot">
                        New here?
                        <a href="register.html">
                            Create an account
                        </a>
                    </p>

                </div>
            </main>
        </div>

    </form>
</body>
</html>