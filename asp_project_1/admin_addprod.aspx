<%@ Page Title="" Language="C#" MasterPageFile="~/adminedits.Master" AutoEventWireup="true" CodeBehind="admin_addprod.aspx.cs" Inherits="asp_project_1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 27px;
        }
        .auto-style3 {
            width: 205px;
        }
        .auto-style4 {
            height: 27px;
            width: 205px;
        }
        .auto-style5 {
            width: 205px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>Category</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style2">Product_name</td>
            <td class="auto-style2">
                <asp:TextBox ID="prod_name" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style2">Product_description</td>
            <td class="auto-style2">
                <asp:TextBox ID="prod_desc" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>Product_price</td>
            <td>
                <asp:TextBox ID="prod_price" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>Product_stock</td>
            <td>
                <asp:TextBox ID="prod_stock" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6">Product_image</td>
            <td class="auto-style6">
                <asp:FileUpload ID="prod_imgupload" runat="server" />
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>Offer</td>
            <td>
                <asp:TextBox ID="prod_offer" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="addbtn" runat="server" Text="Add" OnClick="addbtn_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
