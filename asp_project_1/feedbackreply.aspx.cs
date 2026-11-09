using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace asp_project_1
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getgrid();
            }
        }
        public void getgrid()
        {
            string str = "SELECT dbo.[user].user_name,dbo.[user].user_id, dbo.feedback.product_id, dbo.[user].email, dbo.feedback.feedback_msg, dbo.feedback.feedback_date FROM dbo.[user] INNER JOIN dbo.feedback ON dbo.[user].user_id = dbo.feedback.user_id where dbo.[feedback].feedback_status= 'active'";
            DataSet ds = obj.fn_adapter_dataset(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        

        

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int userid = Convert.ToInt32(GridView1.DataKeys[e.NewSelectedIndex].Value);
            string username = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;
            string productid = GridView1.Rows[e.NewSelectedIndex].Cells[0].Text;
            Session["userid"] = userid;
            Session["productid"] = productid;
            Session["username"] = username;
            Response.Redirect("sendmail.aspx");
        }
    }
}