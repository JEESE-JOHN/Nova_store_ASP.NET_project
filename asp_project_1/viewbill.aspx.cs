using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace asp_project_1
{
    public partial class viewbill : System.Web.UI.Page
    {
        connectionclass ob = new connectionclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            int reg_id = Convert.ToInt32(Session["regid"]);

            //string sel = "SELECT dbo.[order].order_date, dbo.[order].order_quantity, dbo.[order].order_subtotal, dbo.bill.grant_total, dbo.[user].user_name, dbo.[user].email, dbo.[user].phone, dbo.product.product_name, dbo.product.product_price FROM dbo.[order] INNER JOIN dbo.[user] ON dbo.[order].user_id = dbo.[user].user_id INNER JOIN                   dbo.bill ON dbo.[order].user_id = dbo.bill.user_id AND dbo.[user].user_id = dbo.bill.user_id INNER JOIN dbo.product ON dbo.[order].product_id = dbo.product.product_id where dbo.[order].user_id=" + reg_id + " AND dbo.[order].order_status ='order'";

            string sel = "SELECT dbo.[order].order_date, dbo.[order].order_quantity, dbo.[order].order_subtotal, dbo.bill.grant_total, dbo.[user].user_name, dbo.[user].email, dbo.[user].phone, dbo.product.product_name, dbo.product.product_price FROM dbo.[order] INNER JOIN dbo.[user] ON dbo.[order].user_id = dbo.[user].user_id INNER JOIN dbo.bill ON dbo.bill.bill_id = (SELECT MAX(bill_id) FROM dbo.bill WHERE user_id = " + reg_id + ") INNER JOIN dbo.product ON dbo.[order].product_id = dbo.product.product_id WHERE dbo.[order].user_id = " + reg_id + " AND dbo.[order].order_status = 'order'";

            SqlDataReader dr = ob.fn_exereader(sel);
            while (dr.Read())
            {
                Label1.Text = dr["order_date"].ToString();
                Label2.Text = dr["user_name"].ToString();
                Label3.Text = dr["email"].ToString();
                Label4.Text = dr["grant_total"].ToString();
                Session["granttotal"] = dr["grant_total"];

            }
            dr.Close();

            DataSet ds = ob.fn_adapter_dataset(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("paymentpage.aspx");
        }
    }
}