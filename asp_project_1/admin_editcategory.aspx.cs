using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace asp_project_1
{
    public partial class WebForm4 : System.Web.UI.Page
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
            string str = "select * from  category";
            DataSet ds= obj.fn_adapter_dataset(str);
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
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox catdesc = (TextBox)GridView1.Rows[i].Cells[1].Controls[0];
            TextBox catstat = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            FileUpload fu = (FileUpload)GridView1.Rows[i].FindControl("FileUpload1");
            string query;
            if (fu.HasFile)
            {
                string path = "~/category_images/" + fu.FileName;
                fu.SaveAs(Server.MapPath(path));
                query = "update category set category_image='" + path + "',category_description='" + catdesc.Text + "',category_status='" + catstat.Text + "'where category_id=" + id;

            }
            else
            {
                query = "update category set category_description='" + catdesc.Text + "',category_status='" + catstat.Text + "'where category_id=" + id;

            }
            obj.fun_nonquery(query);
            GridView1.EditIndex = -1;
            getgrid();
        }
    }
}