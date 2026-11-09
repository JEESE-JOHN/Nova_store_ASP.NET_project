<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin-register.aspx.cs" Inherits="asp_project_1.admin_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Admin Register | NOVA Store</title>
    <link rel="stylesheet" href="css/styles.css">
    <style>
        #lblMessage {
            display: block;
            width: 100%;
            text-align: center;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <nav class="navbar">
            <div class="container nav-inner">
                <a class="logo" href="index.aspx">
                    NOVA
                    <span>STORE</span>
                </a>

                <div class="nav-links">
                    <a href="index.aspx">Home</a>
                    <a href="category.html">Categories</a>
                    <a href="login.aspx">Login</a>

                    <div class="nav-dropdown active">
                        <a class="nav-dropdown-toggle" href="register.aspx">
                            Register
                        </a>

                        <div class="nav-dropdown-menu">
                            <a href="register.aspx">
                                User Register
                            </a>
                            <a class="active" href="admin-register.aspx">
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

        <main class="auth">
            <div class="form-card">

                <h1>
                    Create admin account
                </h1>

                <p>
                    Register a new NOVASTORE administrator account.
                </p>

                <label class="field">
                    Full name
                    <asp:TextBox ID="txtFullName" runat="server" placeholder="Your name" Height="25px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your name" ControlToValidate="txtFullName"></asp:RequiredFieldValidator>
                    <br />
                    Email
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="you@example.com"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter your email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    Username
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Your username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your username" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                <br />
                    Password
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="At least 6 characters"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                <br />
                    Confirm_Password
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="At least 6 characters"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Enter the same password"></asp:CompareValidator>
                <br />
                </label>

                <asp:Button
                    ID="btnCreateAdmin"
                    runat="server"
                    Text="Create admin account"
                    CssClass="button" OnClick="btnCreateAdmin_Click" />

                <asp:Label
                    ID="lblMessage"
                    runat="server">
                </asp:Label>

                <p class="form-foot">
                    Need a customer account?
                    <a href="register.html">
                        Register as a user
                    </a>
                </p>

            </div>
        </main>

    </form>
</body>
</html>