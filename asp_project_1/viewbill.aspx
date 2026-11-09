<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewbill.aspx.cs" Inherits="asp_project_1.viewbill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-collapse: collapse;

        }
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f3ff;
        margin: 0;
        padding: 40px;
    }

    .bill {
    width: 80%;
    margin: 40px auto;
    background-color: white;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }



    .bill td {
        padding: 8px;
    }

    .grid {
    width: 100%;
    border-collapse: collapse;
    }

    .grid th {
    background-color: #5b45f2;
    color: white;
    padding: 12px;
    text-align: left;
    }

    .grid td {
    padding: 12px;
    border-bottom: 1px solid #ddd;
    }

    .grid tr:nth-child(even) {
    background-color: #f7f6ff;
    }

    .total {
        text-align: right;
        font-size: 20px;
        font-weight: bold;
        color: #5b45f2;
        padding-top: 20px !important;
    }
    .add-cart-button {
    display: block;
    width: 100%;
    max-width: 300px;
    padding: 15px 20px;
    background: #5b45f2;
    margin: 0 auto;
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
        <div class="bill">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
               
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="grid">
                        <Columns>
                            <asp:BoundField DataField="product_name" HeaderText="Product" />
                            <asp:BoundField DataField="product_price" HeaderText="Price" />
                            <asp:BoundField DataField="order_quantity" HeaderText="Quantity" />
                            <asp:BoundField DataField="order_subtotal" HeaderText="Amount" />
                        </Columns>
                    </asp:GridView>
                </td>
                
            </tr>
            <tr>
                <td class="total">Grand Total=<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
            
        </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Payment" CssClass="add-cart-button" />
        </div>

    </form>
</body>
</html>
