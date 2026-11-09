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
    public partial class WebForm1 : System.Web.UI.Page
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
            string s = "select * from category where category_status = 'available'";
            DataSet ds = ob.fn_adapter_dataset(s);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int c_id = Convert.ToInt32(e.CommandArgument);
            Session["c_id"] = c_id;
            Response.Redirect("viewproducts.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userfeedback.aspx");
        }
    }
}