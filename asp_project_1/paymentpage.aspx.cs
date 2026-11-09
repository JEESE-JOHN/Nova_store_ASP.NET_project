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
    public partial class paymentpage : System.Web.UI.Page
    {
        connectionclass ob = new connectionclass();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int reg_id = Convert.ToInt32(Session["regid"]);

            string sel = "select count(account_id) from account where account_number=" + TextBox2.Text + "";
            string j = ob.fun_exescalar(sel);

            if (Convert.ToInt32(j) > 0)
            {
                Label1.Visible = true;
                Label1.Text = "Account number already exists";
                return;
            }

            string ins = "insert into account (user_id, account_type, account_number, balance_amount) values(" +
                reg_id + ",'" + TextBox1.Text + "'," + TextBox2.Text + "," + TextBox3.Text + ")";

            int i = ob.fun_nonquery(ins);

            if (i > 0)
            {
                Label1.Visible = true;
                Label1.Text = "Account created successfully";
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            string sel = "select count(account_id) from account where account_number='" + TextBox2.Text + "'";
            string j = ob.fun_exescalar(sel);

            if (Convert.ToInt32(j) > 0)
            {
                Label1.Visible = true;
                Label1.Text = "Account number already exists";
            }
            else
            {
                Label1.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int reg_id = Convert.ToInt32(Session["regid"]);
            ServiceReference1.ServiceClient obj = new ServiceReference1.ServiceClient();
            decimal bal = obj.checkbalance(Convert.ToInt32(TextBox4.Text));
            //Label2.Text = bal.ToString();
            int gtotal = Convert.ToInt32(Session["granttotal"]);
            if (gtotal < bal)
            {
                string s = "select product_id from [order] where user_id =" + reg_id + " and order_status = 'order'";

                SqlDataReader dr = ob.fn_exereader(s);
                List<int> pdtidlst = new List<int>();

                while (dr.Read())
                {
                    pdtidlst.Add(Convert.ToInt32(dr["product_id"]));
                }
                foreach (int pid in pdtidlst)
                {
                    string up = "update [order] set order_status = 'paid' where user_id = " + reg_id + " and order_status = 'order' and product_id = " + pid;

                    int i = ob.fun_nonquery(up);
                    //if (i == 1)
                    //{
                    //    Label2.Text = "Order updated";
                    //}
                    string sel = "select product_stock from product where product_id =" + pid;

                    int p_stock = Convert.ToInt32(ob.fun_exescalar(sel));
                    string qun = "select order_quantity from [order] where user_id = " + reg_id + " and order_status = 'paid' and product_id =" + pid;

                    int o_quantity = Convert.ToInt32(ob.fun_exescalar(qun));
                    int newStock = p_stock - o_quantity;

                    string upd = "update product set product_stock =" + newStock + " where product_id = " + pid;

                    int j = ob.fun_nonquery(upd);
                    //if (j == 1)
                    //{
                    //    Label2.Text = "Updated the product stock";
                    //}
                    decimal newbal = bal - gtotal;

                    int k = obj.returnbalance(Convert.ToInt32(TextBox4.Text), newbal);

                    //if (k == 1)
                    //{
                    //    Label6.Text = "Balance Updated";
                    //}
                }
                Label2.Text = "Payment Done";
            }
            else
            {
                Label2.Text = "Insucfficent Balance";
            }
        }
    }
}


               