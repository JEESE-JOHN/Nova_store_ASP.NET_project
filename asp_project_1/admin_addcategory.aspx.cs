using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_project_1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = "~/category_images/" + cate_imgupload.FileName;
            cate_imgupload.SaveAs(MapPath(path));
            string strinsert = "insert into category values('" + category_name.Text + "','" + path + "','" + category_desc.Text + "','available')";
            int i = obj.fun_nonquery(strinsert);
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "inserted";
            }
        }
    }
}