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
    public partial class viewproducts : System.Web.UI.Page
    {
        connectionclass ob = new connectionclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_bind();
            }
        }
        public void grid_bind()
        {
            int c_id = Convert.ToInt32(Session["c_id"]);

            string s = "select * from product where category_id ="+c_id+" and product_status='available'";
            DataSet ds = ob.fn_adapter_dataset(s);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int p_id = Convert.ToInt32(e.CommandArgument);
            Session["p_id"] = p_id;
            Response.Redirect("viewsingleproduct.aspx");
        }
    }
}