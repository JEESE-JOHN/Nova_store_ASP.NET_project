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
    public partial class viewcart : System.Web.UI.Page
    {
        connectionclass ob = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getgrid();
            }
        }
        
        public void getgrid()
        {
            int reg_id = Convert.ToInt32(Session["regid"]);

            string sql = "SELECT dbo.cart.cart_id,dbo.cart.quantity, dbo.cart.subtotal, dbo.product.product_name, dbo.product.product_image FROM dbo.cart INNER JOIN dbo.product ON dbo.cart.product_id = dbo.product.product_id where dbo.cart.[user_id]=" + reg_id + " and dbo.cart.[cart_status]=1 ";
            DataSet ds = ob.fn_adapter_dataset(sql);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            getgrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            getgrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int p_id = Convert.ToInt32(Session["p_id"]);
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);

            string sel = "select product_price from product where product_id = " +
                         "(select product_id from cart where cart_id = " + getid + ")";
            decimal price = Convert.ToDecimal(ob.fun_exescalar(sel));
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox proquant = (TextBox)GridView1.Rows[i].Cells[1].Controls[0];
            decimal quantity = Convert.ToDecimal(proquant.Text);
            int reg_id = Convert.ToInt32(Session["regid"]);

            decimal subtotal = quantity * price;
            string query = "update cart set " +
                    "quantity=" + quantity + "," +
                    "subtotal=" + subtotal +
                    " where cart_id=" + getid +
                    " and user_id=" + reg_id;
            ob.fun_nonquery(query);

            GridView1.EditIndex = -1;
            getgrid();


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from cart where cart_id=" + getid + "";
            int j = ob.fun_nonquery(del);
            getgrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int reg_id = Convert.ToInt32(Session["regid"]);
            string sel = "select product_id from cart where user_id=" + reg_id + " and cart_status=1";
            SqlDataReader dr = ob.fn_exereader(sel);
            List<int> pidlist = new List<int>();
            while (dr.Read())
            {
                pidlist.Add(Convert.ToInt32(dr["product_id"]));
            }
            dr.Close();
            foreach (int pid in pidlist)
            {
                string sel1 = "select quantity,subtotal from cart where product_id=" + pid + " and user_id=" + reg_id + "";
                SqlDataReader dr1 = ob.fn_exereader(sel1);
                int qun = 0, subtot = 0;
                while (dr1.Read())
                {
                    qun = Convert.ToInt32(dr1["quantity"]);
                    subtot = Convert.ToInt32(dr1["subtotal"]);
                }
                dr1.Close();
                string ins = "insert into [order](user_id, order_status, order_date, product_id, order_quantity, order_subtotal) values(" +
                reg_id + ",'order',GETDATE()," +
                pid + "," +
                qun + "," +
                subtot + ")";
                int i=ob.fun_nonquery(ins);

                string upd = "update cart set cart_status=0 where product_id=" + pid + " and user_id="+reg_id+" and cart_status=1";
                int j=ob.fun_nonquery(upd);
            }
            string sel2 = "select sum(order_subtotal) from [order] where user_id=" + reg_id + " and order_status='order'";
            decimal grandtotal = Convert.ToDecimal(ob.fun_exescalar(sel2));
            string ins2 = "insert into bill(bill_date, grant_total, user_id) values(" +
            "GETDATE()," +
            grandtotal + "," +
            reg_id + ")";
            int k = ob.fun_nonquery(ins2);
            Response.Redirect("viewbill.aspx");

        }

    }     
}
