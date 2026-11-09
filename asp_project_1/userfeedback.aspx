<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userfeedback.aspx.cs" Inherits="asp_project_1.userfeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Customer Feedback</title>

    <style type="text/css">

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #ffffff;
            color: #222222;
        }

        .feedback-container {
            width: 90%;
            max-width: 650px;
            margin: 60px auto;
        }

        .feedback-card {
            background-color: #ffffff;
            border: 1px solid #e2def5;
            border-radius: 10px;
            padding: 35px 40px;
            box-shadow: 0 4px 15px rgba(91, 69, 242, 0.10);
        }

        .feedback-title {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            color: #5b45f2;
            margin-bottom: 8px;
        }

        .feedback-subtitle {
            text-align: center;
            color: #777777;
            font-size: 14px;
            margin-bottom: 30px;
        }

        .feedback-table {
            width: 100%;
            border-collapse: collapse;
        }

        .feedback-table td {
            padding: 12px 8px;
            vertical-align: middle;
            font-size: 14px;
        }

        .feedback-label {
            width: 150px;
            font-weight: bold;
            color: #333333;
        }

        .product-dropdown {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #d8d5e8;
            border-radius: 5px;
            font-family: Arial, sans-serif;
            font-size: 14px;
            background-color: #ffffff;
            outline: none;
        }

        .product-dropdown:focus {
            border-color: #5b45f2;
            box-shadow: 0 0 0 2px rgba(91, 69, 242, 0.10);
        }

        .feedback-textbox {
            width: 100%;
            height: 150px;
            padding: 10px 12px;
            border: 1px solid #d8d5e8;
            border-radius: 5px;
            box-sizing: border-box;
            resize: vertical;
            font-family: Arial, sans-serif;
            font-size: 14px;
            outline: none;
        }

        .feedback-textbox:focus {
            border-color: #5b45f2;
            box-shadow: 0 0 0 2px rgba(91, 69, 242, 0.10);
        }

        .button-cell {
            padding-top: 20px !important;
        }

        .send-button {
            padding: 10px 28px;
            background-color: #5b45f2;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
        }

        .send-button:hover {
            background-color: #4935d1;
        }

        .message-label {
            display: block;
            margin-top: 15px;
            color: #555555;
            font-size: 14px;
        }

        @media (max-width: 600px) {

            .feedback-container {
                width: 94%;
                margin: 30px auto;
            }

            .feedback-card {
                padding: 25px 18px;
            }

            .feedback-title {
                font-size: 24px;
            }

            .feedback-label {
                width: 110px;
            }

            .feedback-table td {
                font-size: 13px;
            }

        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="feedback-container">

            <div class="feedback-card">

                <div class="feedback-title">
                    Customer Feedback
                </div>

                <div class="feedback-subtitle">
                    Share your experience with our products
                </div>

                <table class="feedback-table">

                    <tr>
                        <td class="feedback-label">
                            Product Name
                        </td>

                        <td>
                            <asp:DropDownList
                                ID="DropDownList1"
                                runat="server"
                                CssClass="product-dropdown">
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td class="feedback-label">
                            Feedback Message
                        </td>

                        <td>
                            <asp:TextBox
                                ID="TextBox2"
                                runat="server"
                                TextMode="MultiLine"
                                CssClass="feedback-textbox">
                            </asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td></td>

                        <td class="button-cell">

                            <asp:Button
                                ID="Button1"
                                runat="server"
                                OnClick="Button1_Click"
                                Text="Send"
                                CssClass="send-button" />

                        </td>
                    </tr>

                    <tr>
                        <td></td>

                        <td>
                            <asp:Label
                                ID="Label1"
                                runat="server"
                                Text="Label"
                                Visible="False"
                                CssClass="message-label">
                            </asp:Label>
                        </td>
                    </tr>

                </table>

            </div>

        </div>

    </form>

</body>
</html>