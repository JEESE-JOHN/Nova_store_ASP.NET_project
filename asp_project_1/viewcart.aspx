
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewcart.aspx.cs" Inherits="asp_project_1.viewcart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Cart</title>

    <style type="text/css">

        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 30px;
        }

        .cart-container {
            width: 90%;
            margin: auto;
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .cart-title {
            text-align: center;
            color: #5b45f2;
            font-size: 28px;
            margin-bottom: 25px;
        }

        .cart-grid {
            width: 100%;
            border-collapse: collapse;
        }

        .cart-grid th {
            background-color: #5b45f2;
            color: white;
            padding: 12px;
            text-align: center;
        }

        .cart-grid td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        .cart-grid tr:hover {
            background-color: #f5f3ff;
        }

        .cart-grid img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            border-radius: 5px;
        }
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

    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="cart-container">

            <div class="cart-title">
                My Cart
            </div>

            <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="False"
                CssClass="cart-grid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="cart_id" OnRowDeleting="GridView1_RowDeleting">

                <Columns>

                    <asp:BoundField DataField="product_name"
                        HeaderText="Product Name" />

                    <asp:BoundField DataField="quantity"
                        HeaderText="Quantity" />

                    <asp:BoundField DataField="subtotal"
                        HeaderText="Subtotal" />

                    <asp:ImageField DataImageUrlField="product_image"
                        HeaderText="Image">
                    </asp:ImageField>

                    <asp:CommandField ShowEditButton="True" />

                    <asp:CommandField ShowDeleteButton="True" />

                </Columns>

            </asp:GridView>

            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" CssClass="add-cart-button" />

        </div>

    </form>
</body>
</html>

