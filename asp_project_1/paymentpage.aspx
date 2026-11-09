
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paymentpage.aspx.cs" Inherits="asp_project_1.paymentpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>

    <style type="text/css">

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #f5f3ff;
            color: #333;
        }

        .page-container {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        .payment-wrapper {
            width: 100%;
            max-width: 950px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 25px;
        }

        .payment-card {
            background: #ffffff;
            border-radius: 16px;
            padding: 35px;
            box-shadow: 0 8px 25px rgba(91, 69, 242, 0.12);
        }

        .card-title {
            font-size: 24px;
            font-weight: bold;
            color: #5b45f2;
            margin-bottom: 8px;
        }

        .card-subtitle {
            font-size: 14px;
            color: #777;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 22px;
        }

        .form-label {
            display: block;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 8px;
            color: #444;
        }

        .input-box {
            width: 100%;
            height: 46px;
            padding: 0 14px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 15px;
            outline: none;
            transition: 0.3s;
        }

        .input-box:focus {
            border-color: #5b45f2;
            box-shadow: 0 0 0 3px rgba(91, 69, 242, 0.1);
        }

        .error-message {
            display: block;
            color: #e53935;
            font-size: 12px;
            margin-top: 5px;
        }

        .main-button {
            width: 100%;
            height: 48px;
            border: none;
            border-radius: 8px;
            background: #5b45f2;
            color: white;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .main-button:hover {
            background: #4934d4;
            transform: translateY(-1px);
        }

        .payment-icon {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            background: #eeeaff;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 28px;
            margin-bottom: 20px;
        }

        .secure-text {
            margin-top: 18px;
            text-align: center;
            font-size: 12px;
            color: #888;
        }

        .result-label {
            display: block;
            margin-top: 15px;
            padding: 12px;
            border-radius: 8px;
            background: #f5f3ff;
            color: #5b45f2;
            font-size: 14px;
        }

        @media (max-width: 750px) {

            .payment-wrapper {
                grid-template-columns: 1fr;
                max-width: 500px;
            }

            .payment-card {
                padding: 25px;
            }
        }

    </style>

    <script>

        function validateTextBox() {

            var type = document.getElementById('<%= TextBox1.ClientID %>').value.trim();
            var account = document.getElementById('<%= TextBox2.ClientID %>').value.trim();
            var balance = document.getElementById('<%= TextBox3.ClientID %>').value.trim();

            if (type == "") {
                document.getElementById("accountTypeError").innerHTML = "Account type is required";
                return false;
            }

            document.getElementById("accountTypeError").innerHTML = "";

            if (account == "") {
                document.getElementById("accountNumberError").innerHTML = "Account number is required";
                return false;
            }

            var accountNum = /^[0-9]{9}$/;

            if (!account.match(accountNum)) {
                document.getElementById("accountNumberError").innerHTML =
                    "Invalid account number - 9 digits required";
                return false;
            }

            document.getElementById("accountNumberError").innerHTML = "";

            if (balance == "") {
                document.getElementById("balanceTypeError").innerHTML =
                    "Balance is required";
                return false;
            }

            var balanceNum = /^[0-9]+$/;

            if (!balance.match(balanceNum)) {
                document.getElementById("balanceTypeError").innerHTML =
                    "Invalid balance format";
                return false;
            }

            document.getElementById("balanceTypeError").innerHTML = "";

            return true;
        }

    </script>

</head>

<body>

    <form id="form1" runat="server">

        <div class="page-container">

            <div class="payment-wrapper">

                <!-- ACCOUNT DETAILS -->

                <asp:Panel ID="Panel3" runat="server" CssClass="payment-card">

                    <div class="card-title">
                        Account Details
                    </div>

                    <div class="card-subtitle">
                        Enter your account information
                    </div>

                    <div class="form-group">

                        <label class="form-label">
                            Account Type
                        </label>

                        <asp:TextBox
                            ID="TextBox1"
                            runat="server"
                            CssClass="input-box">
                        </asp:TextBox>

                        <span id="accountTypeError"
                              class="error-message">
                        </span>

                    </div>


                    <div class="form-group">

                        <label class="form-label">
                            Account Number
                        </label>

                        <asp:TextBox
                            ID="TextBox2"
                            runat="server"
                            CssClass="input-box"
                            AutoPostBack="True"
                            OnTextChanged="TextBox2_TextChanged">
                        </asp:TextBox>

                        <span id="accountNumberError"
                              class="error-message">
                        </span>

                    </div>


                    <div class="form-group">

                        <label class="form-label">
                            Balance Amount
                        </label>

                        <asp:TextBox
                            ID="TextBox3"
                            runat="server"
                            CssClass="input-box">
                        </asp:TextBox>

                        <span id="balanceTypeError"
                              class="error-message">
                        </span>

                    </div>


                    <asp:Button
                        ID="Button1"
                        runat="server"
                        Text="ENTER"
                        CssClass="main-button"
                        OnClick="Button1_Click"
                        OnClientClick="return validateTextBox();" />


                    <asp:Label
                        ID="Label1"
                        runat="server"
                        Visible="False">
                    </asp:Label>

                </asp:Panel>


                <!-- PAYMENT -->

                <asp:Panel ID="Panel4" runat="server" CssClass="payment-card">

                    <div class="payment-icon">
                        💳
                    </div>

                    <div class="card-title">
                        Make Payment
                    </div>

                    <div class="card-subtitle">
                        Enter the account number to complete your payment
                    </div>


                    <div class="form-group">

                        <label class="form-label">
                            Account Number
                        </label>

                        <asp:TextBox
                            ID="TextBox4"
                            runat="server"
                            CssClass="input-box">
                        </asp:TextBox>

                    </div>


                    <asp:Button
                        ID="Button2"
                        runat="server"
                        Text="PAY NOW"
                        CssClass="main-button"
                        OnClick="Button2_Click" />


                    <asp:Label
                        ID="Label2"
                        runat="server"
                        CssClass="result-label">
                    </asp:Label>


                    <div class="secure-text">
                        🔒 Your payment information is securely processed
                    </div>

                </asp:Panel>

            </div>

        </div>

    </form>

</body>
</html>

