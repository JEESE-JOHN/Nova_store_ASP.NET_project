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
    public partial class usermanagement : System.Web.UI.Page
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
            string str = "select * from [user]";
            DataSet ds = obj.fn_adapter_dataset(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            int uid = Convert.ToInt32(e.CommandArgument);

            string sel = "select user_status from [user] where user_id=" + uid;

            SqlDataReader dr = obj.fn_exereader(sel);

            string status = "";

            if (dr.Read())
            {
                status = dr["user_status"].ToString();
            }

            string newstatus;

            if (status == "active")
            {
                newstatus = "Inactive";
            }
            else
            {
                newstatus = "active";
            }

            string up = "update [user] set user_status='" + newstatus + "' where user_id=" + uid;

            obj.fun_nonquery(up);

            getgrid();
        }
    }
}