<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="asp_project_1.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>
      Register | NOVA Store
    </title>
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
                    <span>
                        STORE
                    </span>
                </a>

                <div class="nav-links">
                    <a href="index.aspx">
                        Home
                    </a>
                    <a href="category.aspx">
                        Categories
                    </a>
                    <a href="login.aspx">
                        Login
                    </a>

                    <div class="nav-dropdown active">
                        <a class="nav-dropdown-toggle" href="register.aspx">
                            Register
                        </a>

                        <div class="nav-dropdown-menu">
                            <a class="active" href="register.aspx">
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
                    Create user account
                </h1>

                <p>
                    Join NOVASTORE for a more personal shopping experience.
                </p>

                <label class="field">
                    Full name
                    <asp:TextBox ID="txtFullName" runat="server" placeholder="Your name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" ErrorMessage="Enter your name"></asp:RequiredFieldValidator>
                <br />
                    Email
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="you@example.com"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter your email"></asp:RequiredFieldValidator>
                <br />
                    Phone number
                    <asp:TextBox ID="txtPhone" runat="server" placeholder="Your phone number"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter your phone number" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
                <br />
                    Age
                    <asp:TextBox ID="txtAge" runat="server" placeholder="Your age"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAge" ErrorMessage="Enter your age"></asp:RequiredFieldValidator>
                <br />
                    Address
                    <asp:TextBox ID="txtAddress" runat="server" placeholder="Your address" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ErrorMessage="Enter your address"></asp:RequiredFieldValidator>
                <br />
                    Pin code
                    <asp:TextBox ID="txtPinCode" runat="server" placeholder="Your pin code"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPinCode" ErrorMessage="Enter your pincode"></asp:RequiredFieldValidator>
                <br />
                    Username
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Your username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUsername" ErrorMessage="Enter your username"></asp:RequiredFieldValidator>
                <br />
                    Password
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="At least 6 characters"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter your password"></asp:RequiredFieldValidator>
                <br />
                    Confirm_Password
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" placeholder="At least 6 characters"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="TextBox1" ErrorMessage="Enter the same password"></asp:CompareValidator>
                <br />
                <asp:Button
                    ID="btnCreateuser"
                    runat="server"
                    Text="Create user account"
                    CssClass="button" OnClick="btnCreateAdmin_Click" />
                </label>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>

                <p class="form-foot">
                    Already registered?
                    <a href="login.html">
                        Log in
                    </a>
                </p>

            </div>
        </main>

    </form>
</body>
</html>
