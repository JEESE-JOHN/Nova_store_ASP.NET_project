<%@ Page Title="" Language="C#" MasterPageFile="~/adminedits.Master" AutoEventWireup="true" CodeBehind="admin_editproduct.aspx.cs" Inherits="asp_project_1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 1138px;
        }
        .auto-style3 {
            width: 295px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:BoundField DataField="product_name" HeaderText="Product_name" />
                        <asp:BoundField DataField="product_description" HeaderText="Product_description" />
                        <asp:BoundField DataField="product_price" HeaderText="Product_price" />
                        <asp:BoundField DataField="product_stock" HeaderText="Product_stock" />
                        <asp:BoundField DataField="product_status" HeaderText="Product_status" />
                        <asp:BoundField DataField="offer" HeaderText="Offer" />
                        <asp:TemplateField HeaderText="Photo">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="132px" ImageUrl='<%# Eval("product_image") %>' Width="129px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
