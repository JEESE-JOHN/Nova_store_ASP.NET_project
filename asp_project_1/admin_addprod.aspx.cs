using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace asp_project_1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
      
        connectionclass obj = new connectionclass();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "select category_name,category_id from category;";

                DataSet ds = obj.fn_adapter_dataset(query);

                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "category_name";
                DropDownList1.DataValueField = "category_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--Select--");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            string path = "~/product_images/" + prod_imgupload.FileName;
            prod_imgupload.SaveAs(MapPath(path));
            int categoryId = Convert.ToInt32(DropDownList1.SelectedValue);
            string strinsert = "insert into product values('" + prod_name.Text + "','" + prod_desc.Text + "'," + prod_price.Text + ",'" + prod_stock.Text+ "','" + path + "','available','" + prod_offer.Text+ "',"+ categoryId + ")";
            int i = obj.fun_nonquery(strinsert);
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "inserted";
            }
        }
    }
}