using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace asp_project_1
{
    public partial class viewsingleproduct : System.Web.UI.Page
    {
        connectionclass ob = new connectionclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                details_retrieval();
            }
        }
        public void details_retrieval()
        {
            int p_id = Convert.ToInt32(Session["p_id"]);

            string sel = "select product_name,product_description,product_price,product_image,offer,product_stock from product where product_id=" +p_id+ "";
            SqlDataReader dr = ob.fn_exereader(sel);
            while (dr.Read())
            {
                Label1.Text = dr["product_name"].ToString();
                Label2.Text = dr["product_description"].ToString();
                Label3.Text = dr["product_price"].ToString();
                Image1.ImageUrl = dr["product_image"].ToString();
                int stock = Convert.ToInt32(dr["product_stock"]);

                for (int i = 1; i <= stock; i++)
                {
                    DropDownList1.Items.Add(i.ToString());
                }
            }
            dr.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int product_id = Convert.ToInt32(Session["p_id"]);
                int reg_id = Convert.ToInt32(Session["regid"]);
                int quantity = Convert.ToInt32(DropDownList1.SelectedValue);
                decimal price = Convert.ToDecimal(Label3.Text);

                decimal subtotal = quantity * price;

                string query = "insert into cart(user_id, product_id, quantity, subtotal, date, cart_status) values(" +
                               reg_id + "," +
                               product_id + "," +
                               quantity + "," +
                               subtotal + ",GETDATE(),1)";

                ob.fun_nonquery(query);
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewcart.aspx");
        }
    }
}