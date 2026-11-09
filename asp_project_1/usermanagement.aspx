<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usermanagement.aspx.cs" Inherits="asp_project_1.usermanagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Management</title>

    <style type="text/css">

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #ffffff;
            color: #222222;
        }

        .user-container {
            width: 95%;
            max-width: 1100px;
            margin: 45px auto;
        }

        .page-title {
            text-align: center;
            font-size: 30px;
            font-weight: bold;
            color: #222222;
            margin-bottom: 8px;
        }

        .page-subtitle {
            text-align: center;
            color: #666666;
            font-size: 14px;
            margin-bottom: 30px;
        }

        .user-card {
            background-color: #ffffff;
            border: 1px solid #dddddd;
            border-radius: 8px;
            padding: 25px;
            box-shadow: 0 3px 12px rgba(0, 0, 0, 0.08);
            overflow-x: auto;
        }

        .user-grid {
            width: 100%;
            border-collapse: collapse;
        }

        .user-grid th {
            background-color: #ffffff;
            color: #222222;
            padding: 15px 12px;
            text-align: left;
            font-size: 14px;
            font-weight: bold;
            border-bottom: 2px solid #222222;
        }

        .user-grid td {
            padding: 14px 12px;
            font-size: 14px;
            color: #333333;
            border-bottom: 1px solid #dddddd;
            background-color: #ffffff;
            vertical-align: middle;
        }

        .user-grid tr:hover td {
            background-color: #f7f7f7;
        }

        .status-button {
            padding: 8px 16px;
            background-color: #5b45f2;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-family: Arial, sans-serif;
            font-size: 13px;
            font-weight: bold;
            cursor: pointer;
        }

        .status-button:hover {
            background-color: #4934d4;
        }

        .message-label {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #555555;
        }

        @media (max-width: 700px) {

            .user-container {
                width: 98%;
                margin: 25px auto;
            }

            .user-card {
                padding: 10px;
            }

            .page-title {
                font-size: 24px;
            }

            .user-grid th,
            .user-grid td {
                padding: 10px 8px;
                font-size: 12px;
            }

            .status-button {
                padding: 7px 12px;
                font-size: 12px;
            }
        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="user-container">

            <div class="page-title">
                User Management
            </div>

            <div class="page-subtitle">
                Manage registered users and update their account status
            </div>

            <div class="user-card">

                <asp:GridView 
                    ID="GridView1" 
                    runat="server"
                    AutoGenerateColumns="True"
                    CssClass="user-grid">

                    <Columns>

                        <asp:TemplateField HeaderText="Change User Status">

                            <ItemTemplate>

                                <asp:Button 
                                    ID="Button1" 
                                    runat="server"
                                    CommandArgument='<%# Eval("user_id") %>'
                                    OnCommand="Button1_Command"
                                    Text="Change Status"
                                    CssClass="status-button" />

                            </ItemTemplate>

                        </asp:TemplateField>

                    </Columns>

                </asp:GridView>

                <asp:Label 
                    ID="Label1" 
                    runat="server" 
                    Visible="False"
                    CssClass="message-label">
                </asp:Label>

            </div>

        </div>

    </form>

</body>
</html>