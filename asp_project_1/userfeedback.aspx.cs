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
    public partial class userfeedback : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "select product_name,product_id from product order by product_name;";

                DataSet ds = obj.fn_adapter_dataset(query);

                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "product_name";
                DropDownList1.DataValueField = "product_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--Select--");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int reg_id = Convert.ToInt32(Session["regid"]);
            int pro_id = Convert.ToInt32(DropDownList1.SelectedValue);

            string ins = "insert into feedback values(" + reg_id + "," + pro_id + ",GETDATE(),'" + TextBox2.Text + "','reply_null','active')";
            int i = obj.fun_nonquery(ins);
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Feedback submitted successfully.";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Failed to submit feedback. Please try again.";
            }
        }
    }
}