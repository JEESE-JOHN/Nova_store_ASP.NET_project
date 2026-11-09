using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace asp_project_1
{
    public partial class WebForm5 : System.Web.UI.Page
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
            string str = "select * from  product";
            DataSet ds = obj.fn_adapter_dataset(str);
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

            TextBox proname = (TextBox)GridView1.Rows[i].Cells[0].Controls[0];
            TextBox prodesc = (TextBox)GridView1.Rows[i].Cells[1].Controls[0];
            TextBox proprice = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            TextBox prostock = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox prostatus = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            TextBox offer = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];

            FileUpload fu = (FileUpload)GridView1.Rows[i].FindControl("FileUpload1");

            string query;

            if (fu.HasFile)
            {
                string path = "~/product_images/" + fu.FileName;

                fu.SaveAs(Server.MapPath(path));

                query = "update product set " +
                        "product_name='" + proname.Text + "'," +
                        "product_description='" + prodesc.Text + "'," +
                        "product_price=" + proprice.Text + "," +
                        "product_stock=" + prostock.Text + "," +
                        "product_image='" + path + "'," +
                        "product_status='" + prostatus.Text + "'," +
                        "offer='" + offer.Text + "'" +
                        " where product_id=" + id;
            }
            else
            {
                query = "update product set " +
                        "product_name='" + proname.Text + "'," +
                        "product_description='" + prodesc.Text + "'," +
                        "product_price=" + proprice.Text + "," +
                        "product_stock=" + prostock.Text + "," +
                        "product_status='" + prostatus.Text + "'," +
                        "offer='" + offer.Text + "'" +
                        " where product_id=" + id;
            }

            obj.fun_nonquery(query);

            GridView1.EditIndex = -1;
            getgrid();

        }
    
    }
}