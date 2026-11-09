using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_project_1
{
    public partial class login : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string str = "select count(reg_id) from login where username='" + txtUsername.Text + "' and password='" + txtPassword.Text + "'";
            string cid = obj.fun_exescalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str1 = "select reg_id from login where username='" + txtUsername.Text + "' and password='" + txtPassword.Text + "'";
                string regid = obj.fun_exescalar(str1);
                Session["regid"] = regid;
               

                string str2 = "select log_type from login where username='" + txtUsername.Text + "' and password='" + txtPassword.Text + "'";
                string logtype = obj.fun_exescalar(str2);
                if (logtype == "admin")
                {
                    Response.Redirect("adminhome.aspx");
                }
                else if (logtype == "user")
                {
                    string str3 = "select user_status from [user] where user_id="+regid ;
                    string userstatus = obj.fun_exescalar(str3);
                    if (userstatus == "active")
                    {
                        Response.Redirect("index.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "popup", "showPopup();", true);
                    }
                }


            }
            else
            {
                lblMessage.Text = "Invalid username and Password";
            }
        }
    }
}