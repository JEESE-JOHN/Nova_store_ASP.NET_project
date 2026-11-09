
<%@ Page Title="" Language="C#" MasterPageFile="~/adminedits.Master"
    AutoEventWireup="true"
    CodeBehind="feedbackreply.aspx.cs"
    Inherits="asp_project_1.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

    body {
        font-family: Georgia, "Times New Roman", serif;
        background-color: #ffffff;
        color: #222222;
    }

    .feedback-container {
        width: 95%;
        max-width: 1200px;
        margin: 40px auto;
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

    .feedback-card {
        background: #ffffff;
        border-radius: 8px;
        padding: 25px;
        border: 1px solid #dddddd;
        box-shadow: 0 3px 12px rgba(0, 0, 0, 0.08);
        overflow-x: auto;
    }

    .feedback-grid {
        width: 100%;
        border-collapse: collapse;
        border: none;
    }

    .feedback-grid th {
        background-color: #ffffff;
        color: #222222;
        padding: 15px 12px;
        font-size: 14px;
        text-align: left;
        border-bottom: 2px solid #222222;
    }

    .feedback-grid td {
        padding: 14px 12px;
        font-size: 14px;
        color: #333333;
        border-bottom: 1px solid #dddddd;
        vertical-align: middle;
        background-color: #ffffff;
    }

    .feedback-grid tr:hover td {
        background-color: #f7f7f7;
    }

    .reply-button {
        display: inline-block;
        padding: 8px 18px;
        background-color: #5b45f2;
        color: #ffffff;
        border-radius: 5px;
        text-decoration: none;
        font-size: 13px;
        font-weight: bold;
        cursor: pointer;
        border: none;
    }

    .reply-button:hover {
        background-color: #4934d4;
    }

    .no-feedback {
        display: block;
        text-align: center;
        padding: 35px;
        color: #666666;
        font-size: 16px;
        font-weight: bold;
    }

    @media (max-width: 700px) {

        .feedback-container {
            width: 98%;
            margin: 20px auto;
        }

        .feedback-card {
            padding: 10px;
        }

        .page-title {
            font-size: 24px;
        }

        .feedback-grid th,
        .feedback-grid td {
            padding: 10px 8px;
            font-size: 12px;
        }
    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="feedback-container">

        <div class="page-title">
            Customer Feedback
        </div>

        <div class="page-subtitle">
            View customer feedback and respond to their messages
        </div>

        <div class="feedback-card">

            <asp:GridView
                ID="GridView1"
                runat="server"
                AutoGenerateColumns="False"
                DataKeyNames="user_id"
                OnSelectedIndexChanging="GridView1_SelectedIndexChanging"
                CssClass="feedback-grid"
                EmptyDataText="No feedbacks">

                <Columns>

                    <asp:BoundField
                        DataField="product_id"
                        HeaderText="Product ID" />

                    <asp:BoundField
                        DataField="user_name"
                        HeaderText="Username" />

                    <asp:BoundField
                        DataField="email"
                        HeaderText="Email ID" />

                    <asp:BoundField
                        DataField="feedback_msg"
                        HeaderText="Feedback Message" />

                    <asp:BoundField
                        DataField="feedback_date"
                        HeaderText="Date" />

                    <asp:CommandField
                        HeaderText="Action"
                        ShowSelectButton="True"
                        SelectText="Reply"
                        ControlStyle-CssClass="reply-button" />

                </Columns>

            </asp:GridView>

        </div>

    </div>

</asp:Content>

