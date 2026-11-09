<%@ Page Title="" Language="C#" MasterPageFile="~/adminedits.Master" AutoEventWireup="true" CodeBehind="sendmail.aspx.cs" Inherits="asp_project_1.sendmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        body {
            font-family: Arial, sans-serif;
        }

        .mail-container {
            width: 90%;
            max-width: 750px;
            margin: 45px auto;
        }

        .mail-card {
            background-color: #ffffff;
            border: 1px solid #e1def5;
            border-radius: 10px;
            padding: 35px 40px;
            box-shadow: 0 4px 15px rgba(91, 69, 242, 0.10);
        }

        .mail-title {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            color: #5b45f2;
            margin-bottom: 8px;
        }

        .mail-subtitle {
            text-align: center;
            color: #777777;
            font-size: 14px;
            margin-bottom: 30px;
        }

        .mail-table {
            width: 100%;
            border-collapse: collapse;
        }

        .mail-table td {
            padding: 10px 8px;
            vertical-align: middle;
            font-size: 14px;
            color: #333333;
        }

        .mail-label {
            width: 110px;
            font-weight: bold;
            color: #444444;
        }

        .mail-value {
            color: #555555;
        }

        .mail-input {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #d8d5e8;
            border-radius: 5px;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
            font-size: 14px;
            outline: none;
        }

        .mail-input:focus {
            border-color: #5b45f2;
            box-shadow: 0 0 0 2px rgba(91, 69, 242, 0.10);
        }

        .reply-box {
            width: 100%;
            height: 160px;
            padding: 10px 12px;
            border: 1px solid #d8d5e8;
            border-radius: 5px;
            box-sizing: border-box;
            resize: vertical;
            font-family: Arial, sans-serif;
            font-size: 14px;
            outline: none;
        }

        .reply-box:focus {
            border-color: #5b45f2;
            box-shadow: 0 0 0 2px rgba(91, 69, 242, 0.10);
        }

        .button-row {
            padding-top: 20px !important;
        }

        .send-button {
            padding: 10px 25px;
            background-color: #5b45f2;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
        }

        .send-button:hover {
            background-color: #4935d1;
        }

        .back-button {
            padding: 9px 18px;
            background-color: #ffffff;
            color: #5b45f2;
            border: 1px solid #5b45f2;
            border-radius: 5px;
            font-size: 13px;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: #f5f3ff;
        }

        .message {
            display: block;
            margin-top: 15px;
            color: #555555;
            font-size: 14px;
        }

        @media (max-width: 600px) {

            .mail-container {
                width: 95%;
                margin: 25px auto;
            }

            .mail-card {
                padding: 25px 18px;
            }

            .mail-title {
                font-size: 24px;
            }

            .mail-label {
                width: 85px;
            }

            .mail-table td {
                font-size: 13px;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mail-container">

        <div class="mail-card">

            <div class="mail-title">
                Reply to Customer
            </div>

            <div class="mail-subtitle">
                Send a response to the customer's feedback
            </div>

            <table class="mail-table">

                <tr>
                    <td class="mail-label">
                        From:
                    </td>

                    <td class="mail-value">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="mail-label">
                        To:
                    </td>

                    <td class="mail-value">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="mail-label">
                        Subject:
                    </td>

                    <td>
                        <asp:TextBox
                            ID="TextBox1"
                            runat="server"
                            CssClass="mail-input">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="mail-label">
                        Reply:
                    </td>

                    <td>
                        <asp:TextBox
                            ID="TextBox2"
                            runat="server"
                            TextMode="MultiLine"
                            CssClass="reply-box">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td></td>

                    <td class="button-row">

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
                            ID="Label3"
                            runat="server"
                            Text="Label"
                            Visible="False"
                            CssClass="message">
                        </asp:Label>
                    </td>
                </tr>

                <tr>
                    <td></td>

                    <td class="button-row">

                        <asp:Button
                            ID="Button2"
                            runat="server"
                            OnClick="Button2_Click"
                            Text="Go back to feedbacks"
                            CssClass="back-button" />

                    </td>
                </tr>

            </table>

        </div>

    </div>

</asp:Content>