<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="asp_project_1.adminhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>

    <style type="text/css">

        body {
            margin: 0;
            min-height: 100vh;
            background-color: #f7f7f7;
            font-family: Arial, Helvetica, sans-serif;
        }

        .admin-container {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .admin-grid {
            display: grid;
            grid-template-columns: repeat(3, 215px);
            gap: 40px 50px;
            justify-content: center;
            align-items: center;
        }

        .admin-button {
            width: 215px;
            height: 215px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .admin-button:hover {
            transform: translateY(-6px);
        }

        @media (max-width: 800px) {

            .admin-grid {
                grid-template-columns: repeat(2, 215px);
                gap: 30px;
            }

        }

        @media (max-width: 550px) {

            .admin-grid {
                grid-template-columns: 215px;
                gap: 30px;
            }

        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="admin-container">

        <div class="admin-grid">

            <asp:ImageButton
                ID="ImageButton1"
                runat="server"
                Height="215px"
                Width="215px"
                CssClass="admin-button"
                ImageUrl="~/adminbuttons/1.png"
                PostBackUrl="~/admin_addcategory.aspx" />

            <asp:ImageButton
                ID="ImageButton3"
                runat="server"
                Height="215px"
                Width="215px"
                CssClass="admin-button"
                ImageUrl="~/adminbuttons/2.png"
                PostBackUrl="~/admin_editcategory.aspx" />

            <asp:ImageButton
                ID="ImageButton2"
                runat="server"
                Height="215px"
                Width="215px"
                CssClass="admin-button"
                ImageUrl="~/adminbuttons/3.png"
                PostBackUrl="~/admin_addprod.aspx" />

            <asp:ImageButton
                ID="ImageButton4"
                runat="server"
                Height="215px"
                Width="215px"
                CssClass="admin-button"
                ImageUrl="~/adminbuttons/4.png"
                PostBackUrl="~/admin_editproduct.aspx" />

            <asp:ImageButton
                ID="ImageButton5"
                runat="server"
                Height="215px"
                Width="215px"
                CssClass="admin-button"
                ImageUrl="~/adminbuttons/5.png"
                PostBackUrl="~/feedbackreply.aspx" />

            <asp:ImageButton
                ID="ImageButton6"
                runat="server"
                Height="215px"
                Width="215px"
                CssClass="admin-button"
                ImageUrl="~/adminbuttons/6.png"
                PostBackUrl="~/usermanagement.aspx" />

        </div>

    </div>

</form>

</body>
</html>